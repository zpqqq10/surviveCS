unit Lite;

interface

uses
  Windows;

const
  _2Pi = 2 * Pi;

type
  Bytes = array[0..MaxInt - 1] of Byte;
  Words = array[0..MaxInt div SizeOf(Word) - 1] of Word;
  LongWords = array[0..MaxInt div SizeOf(LongWord) - 1] of LongWord;

  PRGBTripleArray = ^TRGBTripleArray;
  TRGBTripleArray = array[0..1] of TRGBTriple;

  TFunction = function(const X: Extended): Extended;

  TRange = record
    Min, Max: Extended;
  end;

  TIntRange = record
    Min, Max: Integer;
  end;

  TDWORDID = array[0..3] of Char;

function IndexOfInt(I: Integer; const A: array of Integer): Integer;
function EnsureRange(const AValue: Extended; const ARange: TRange): Extended; overload;
function EnsureRange(const AValue: Integer; const ARange: TIntRange): Integer; overload;

function MakeInt64(Low, High: LongWord): Int64;
function LSSB(I: Cardinal): Integer;
function MSSB(I: Cardinal): Integer;

procedure Push(X: Cardinal);
function Pop: Cardinal;

function UpdateCRC(Value: LongWord; const Data; Count: Integer): LongWord;
function CRC(const Data; Count: Integer): LongWord;

function LStr(Buffer: PChar; Len: Integer): string;

function FileCRC32(const FileName: string): LongWord;

type
  TParamProc = procedure(const Name, Value: string);

procedure ReadIniFile(const FileName: string; ParamProc: TParamProc); overload;

type
  TFitStrProc = function(var Brk: Boolean): string;

function FitStr(Wnd: THandle; const Rect: TRect; GetString: TFitStrProc;
  var Fit: Boolean): string;

procedure ChangeWindowStyle(Handle: HWND; IncludeStyles, ExcludeStyles: Longint);
procedure SetTopmost(Handle: HWND; IsTopmost: Boolean);

function TextInClipboard: string;
procedure SetClipboard(Format: Cardinal; const Buffer; Size: Integer);
procedure TurnOffFeedbackCursor;
procedure SimulateKeystroke(VK: Byte);

type
  TKbLEDIndex = (kbledScroll, kbledNum, kbledCaps);

procedure ToggleKbLED(LEDIndex: TKbLEDIndex);

implementation

function IndexOfInt(I: Integer; const A: array of Integer): Integer;
begin
  for Result := 0 to High(A) do
    if A[Result] = I then
      Exit;
  Result := -1;
end;

function EnsureRange(const AValue: Extended; const ARange: TRange): Extended;
begin
  Result := AValue;
  with ARange do
  begin
    Assert(Min <= Max);
    if Result < Min then
      Result := Min;
    if Result > Max then
      Result := Max;
  end;
end;

function EnsureRange(const AValue: Integer; const ARange: TIntRange): Integer;
begin
  Result := AValue;
  with ARange do
  begin
    Assert(Min <= Max);
    if Result < Min then
      Result := Min;
    if Result > Max then
      Result := Max;
  end;
end;

function MakeInt64(Low, High: LongWord): Int64;
asm
end;

function LSSB(I: Cardinal): Integer;
asm
        BSF     EAX,EAX
end;

function MSSB(I: Cardinal): Integer;
asm
        BSR     EAX,EAX
end;

var
  Stack: array[0..$fff] of Cardinal;
  StackTop: Integer = Length(Stack);

procedure Push(X: Cardinal);
begin
  Assert(StackTop > 0);
  Dec(StackTop);
  Stack[StackTop] := X;
end;

function Pop: Cardinal;
begin
  Assert(StackTop < Length(Stack));
  Result := Stack[StackTop];
  Inc(StackTop);
end;

var
  CRCTable: array[Byte] of LongWord;
  CRCTableValid: Boolean;

procedure ProvideCRCTable;
var
  I, J: Integer;
  C: LongWord;
begin
  for I := 0 to 255 do
  begin
    C := I;
    for J := 0 to 7 do
      if LongBool(C and 1) then
        C := $EDB88320 xor (C shr 1)
      else
        C := C shr 1;
    CRCTable[I] := C;
  end;
  CRCTableValid := True;
end;

function UpdateCRC(Value: LongWord; const Data; Count: Integer): LongWord;
var
  I: Integer;
  DataBytes: Bytes absolute Data;
begin
  Result := not Value;
  if not CRCTableValid then
    ProvideCRCTable;
  for I := 0 to Count - 1 do
    Result := CRCTable[(Result xor DataBytes[I]) and $FF] xor (Result shr 8);
  Result := not Result;
end;

function CRC(const Data; Count: Integer): LongWord;
begin
  Result := UpdateCRC(0, Data, Count);
end;

function LStr(Buffer: PChar; Len: Integer): string;
begin
  SetString(Result, Buffer, Len);
end;

function FileCRC32(const FileName: string): LongWord;
var
  F: file;
  Buf: array[0..$FFF] of Byte;
  Read: Cardinal;
begin
  AssignFile(F, FileName);
  FileMode := 0;
  Reset(F, 1);
  try
    Result := 0;
    while True do
    begin
      BlockRead(F, Buf, SizeOf(Buf), Read);
      if Read = 0 then
        Break;
      Result := UpdateCRC(Result, Buf, Read)
    end;
  finally
    CloseFile(F);
  end;
end;

procedure ReadIniFile(const FileName: string; ParamProc: TParamProc);
var
  F: TextFile;
  S: string;
  I, Len, I0, J0, I1: Integer;
begin
  AssignFile(F, FileName);
  FileMode := 0;
  Reset(F);
  try
    while not Eof(F) do
    begin
      ReadLn(F, S);
      Len := Length(S);
      I := Pos('#', S);
      if I <> 0 then
        Len := I - 1;
      while (Len > 0) and (S[Len] <= ' ') do
        Dec(Len);
      SetLength(S, Len);
      I := Pos('=', S);
      if I <> 0 then
      begin
        I0 := 1;
        while (I0 < I) and (S[I0] <= ' ') do
          Inc(I0);
        J0 := I - 1;
        while (J0 > 0) and (S[J0] <= ' ') do
          Dec(J0);
        if J0 >= I0 then
        begin
          I1 := I + 1;
          while (I1 <= Len) and (S[I1] <= ' ') do
            Inc(I1);
          ParamProc(Copy(S, I0, J0 - I0 + 1), Copy(S, I1, MaxInt));
        end;
      end;
    end;
  finally
    CloseFile(F);
  end;
end;

function FitStr(Wnd: THandle; const Rect: TRect; GetString: TFitStrProc;
  var Fit: Boolean): string;
var
  DC: HDC;
  Brk: Boolean;
  Size: TSize;
begin
  DC := GetDC(Wnd);
  try
    Brk := False;
    repeat
      Result := GetString(Brk);
      GetTextExtentPoint32(DC, PChar(Result), Length(Result), Size);
      Fit := Size.cx <= Rect.Right - Rect.Left;
    until Brk or Fit;
  finally
    ReleaseDC(Wnd, DC);
  end;
end;

procedure ChangeWindowStyle(Handle: HWND; IncludeStyles, ExcludeStyles: Longint);
var
  Styles: Longint;
begin
  Styles := GetWindowLong(Handle, GWL_STYLE);
  if Styles <> 0 then
    SetWindowLong(Handle, GWL_STYLE, (Styles or IncludeStyles) and not
      ExcludeStyles);
end;

procedure SetTopmost(Handle: HWND; IsTopmost: Boolean);
const
  InsertAfter: array[Boolean] of Cardinal = (HWND_NOTOPMOST, HWND_TOPMOST);
begin
  SetWindowPos(Handle, InsertAfter[IsTopmost], 0, 0, 0, 0, SWP_NOMOVE or
    SWP_NOSIZE or SWP_NOACTIVATE);
end;

function TextInClipboard: string;
var
  Data: THandle;
begin
  OpenClipboard(0);
  Data := GetClipboardData(CF_TEXT);
  try
    if Data <> 0 then
      Result := PChar(GlobalLock(Data))
    else
      Result := '';
  finally
    if Data <> 0 then
      GlobalUnlock(Data);
    CloseClipboard;
  end;
end;

procedure SetClipboard(Format: Cardinal; const Buffer; Size: Integer);
var
  Data: THandle;
  DataPtr: Pointer;
begin
  OpenClipboard(0);
  EmptyClipboard;
  OpenClipboard(0);
  try
    Data := GlobalAlloc(GMEM_MOVEABLE + GMEM_DDESHARE, Size);
    try
      DataPtr := GlobalLock(Data);
      try
        Move(Buffer, DataPtr^, Size);
        SetClipboardData(Format, Data);
      finally
        GlobalUnlock(Data);
      end;
    except
      GlobalFree(Data);
      raise;
    end;
  finally
    CloseClipboard;
  end;
end;

procedure TurnOffFeedbackCursor;
var
  Msg: TMsg;
begin
  if PostThreadMessage(GetCurrentThreadId, 0, 0, 0) then
    GetMessage(Msg, 0, 0, 0);
end;

procedure SimulateKeystroke(VK: Byte);
begin
  keybd_event(VK, 0, 0, 0);
  keybd_event(VK, 0, KEYEVENTF_KEYUP, 0);
end;

procedure ToggleKbLED(LEDIndex: TKbLEDIndex);

  procedure SimulateLockKeyEvent(UpFlag: Cardinal = 0);
  const
    VKCodes: array[TKbLEDIndex] of Byte = (VK_SCROLL, VK_NUMLOCK, VK_CAPITAL);
    ScanCodes: array[TKbLEDIndex] of Byte = ($46, $45, $3A);
    ExKeyFlags: array[TKbLEDIndex] of Cardinal = (0, KEYEVENTF_EXTENDEDKEY, 0);
  begin
    keybd_event(VKCodes[LEDIndex], ScanCodes[LEDIndex], ExKeyFlags[LEDIndex] or
      UpFlag, 0);
  end;

begin
  SimulateLockKeyEvent;
  SimulateLockKeyEvent(KEYEVENTF_KEYUP);
end;

(* HW routine that works only for DIN keyboards
const
  IOCTL_KEYBOARD_SET_INDICATORS   = $B0008;
  IOCTL_KEYBOARD_QUERY_INDICATORS = $B0040;
type
  TKeyboardIndicatorParameters = record
    UnitId: Word;
    LedFlags: Word;
  end;
var
  kip: TKeyboardIndicatorParameters;
  Dummy: Cardinal;
  h: THandle;
begin
  DefineDosDevice(DDD_RAW_TARGET_PATH, 'Keybd', '\Device\KeyboardClass0');
  h := CreateFile('\\.\Keyboard', 0, FILE_SHARE_READ or FILE_SHARE_WRITE, nil,
    OPEN_EXISTING, 0, 0);
  DefineDosDevice(DDD_REMOVE_DEFINITION, 'Keybd', nil);
  DeviceIoControl(h, IOCTL_KEYBOARD_SET_INDICATORS, @kip, SizeOf(kip), nil, 0,
    Dummy, nil);
  CloseHandle(h);
*)


end.
