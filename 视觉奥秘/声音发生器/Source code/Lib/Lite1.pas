unit Lite1;

interface

uses
  Windows, SysUtils, Lite;

function FracLen(const AValue: Extended; APrecision: Integer): Integer;
function Prec(const AValue: Double; APrecision: Integer): Double;

function LevelToAmp(const Level: Extended): Extended;
function AmpToLevel(const Amp: Extended): Extended;
function LevelMean(const Levels: array of Extended): Extended;
function RadToDegStr(const AValue: Extended): string;

function UTC: TDateTime;
function TimeToStrEx(const Time: TDateTime): string;

function EnsureFileExt(const FileName, Extension: string): string;

type
  TParamDataType = (dtInteger, dtBoolean, dtReal, dtString);

  TParamRec = record
    ID: string;
    Data: Pointer;
    DataType: TParamDataType;
  end;

function MakeParamRec(const ID: string; Data: Pointer;
  DataType: TParamDataType): TParamRec;

function IsDupFile(const FileName1, FileName2: string): Boolean;
procedure ReadIniFile(ParamProc: TParamProc); overload;
procedure ReadIniFile(const DestParamTable: array of TParamRec); overload;

function HueComp(const Delta: Real): Integer;
function Hue(const Hue: Real): TColorRef;

implementation

uses
  Math;

function FracLen(const AValue: Extended; APrecision: Integer): Integer;
begin
  if AValue <> 0 then
    Result := APrecision - Trunc(Log10(Abs(AValue))) - 1
  else
    Result := 0;
end;

function Prec(const AValue: Double; APrecision: Integer): Double;
begin
  Result := RoundTo(AValue, -FracLen(AValue, APrecision));
end;

function LevelToAmp(const Level: Extended): Extended;
begin
  Result := Power(2, Level / 6);
end;

function AmpToLevel(const Amp: Extended): Extended;
begin
  Result := 6 * Log2(Amp);
end;

function LevelMean(const Levels: array of Extended): Extended;
var
  Sum: Extended;
  I: Integer;
begin
  Sum := 0;
  for I := 0 to High(Levels) do
    Sum := Sum + LevelToAmp(Levels[I]);
  Result := AmpToLevel(Sum / Length(Levels));
end;

function RadToDegStr(const AValue: Extended): string;
const
  MinusOpt: array[Boolean] of string = ('', '-');
var
  AbsCycles: Extended;
  AbsIntCycles: Integer;
  CyclesStr: string;
begin
  AbsCycles := Abs(AValue / _2Pi);
  AbsIntCycles := Trunc(AbsCycles);
  if AbsIntCycles <> 0 then
    CyclesStr := Format('%dc.', [AbsIntCycles]);
  Result := Format('%s%s%.0f°', [MinusOpt[AValue < -(Pi / 360)], CyclesStr,
    Frac(AbsCycles) * 360]);
end;

function UTC: TDateTime;
var
  st: TSystemTime;
begin
  GetSystemTime(st);
  with st do
    Result := EncodeDate(wYear, wMonth, wDay) +
      EncodeTime(wHour, wMinute, wSecond, wMilliseconds);
end;

function TimeToLocal(const UTC: TDateTime): TDateTime;
var
  st, lt: TSystemTime;
begin
  DateTimeToSystemTime(UTC, st);
  SystemTimeToTzSpecificLocalTime(nil, st, lt);
  Result := SystemTimeToDateTime(lt);
end;

function TimeToStrEx(const Time: TDateTime): string;
var
  Days: Integer;
begin
  DateTimeToString(Result, 'HH:mm:ss', Time);
  Days := Trunc(Time);
  if Days <> 0 then
    Result := Format('%d %s', [Days, Result]);
end;

function EnsureFileExt(const FileName, Extension: string): string;
begin
  Result := FileName;
  if not SameText(ExtractFileExt(Result), Extension) then
    Result := Result + Extension;
end;

function IsDupFile(const FileName1, FileName2: string): Boolean;
var
  F1, F2: file;
  Buf1, Buf2: array[0..$7FF] of Byte;
  Read1, Read2: Cardinal;
begin
  AssignFile(F1, FileName1);
  AssignFile(F2, FileName2);
  FileMode := 0;
  Reset(F1, 1);
  try
    Reset(F2, 1);
    try
      Result := False;
      if FileSize(F1) <> FileSize(F2) then
        Exit;
      while True do
      begin
        BlockRead(F1, Buf1, SizeOf(Buf1), Read1);
        BlockRead(F2, Buf2, SizeOf(Buf2), Read2);
        if Read1 <> Read2 then
          Exit;
        if Read1 = 0 then
          Break;
        if not CompareMem(@Buf1, @Buf2, Read1) then
          Exit;
      end;
      Result := True;
    finally
      CloseFile(F2);
    end;
  finally
    CloseFile(F1);
  end;
end;

procedure ReadIniFile(ParamProc: TParamProc);
begin
  ReadIniFile(ChangeFileExt(ParamStr(0), '.ini'), ParamProc);
end;

type
  TParamTable = array[0..0] of TParamRec;

threadvar
  ParamTable: ^TParamTable;
  ParamTableLength: Integer;

procedure DefParamProc(const Name, Value: string);
var
  I, J, E: Integer;
begin
  for I := 0 to ParamTableLength - 1 do
    with ParamTable^[I] do
      if SameText(Name, ID) then
        case DataType of
          dtInteger:
            begin
              Val(Value, J, E);
              if E = 0 then
                Integer(Data^) := J;
            end;
          dtBoolean:
            begin
              Val(Value, J, E);
              if E = 0 then
                Boolean(Data^) := J <> 0
              else
                if SameText(Value, 'True') or SameText(Value, 'Yes') then
                  Boolean(Data^) := True
                else
                if SameText(Value, 'False') or SameText(Value, 'No') then
                  Boolean(Data^) := False;
            end;
          dtReal:
            try
              Real(Data^) := StrToFloat(Value);
            except
              on EConvertError do;
            end;
          dtString: string(Data^) := Value;
        end;
end;

function MakeParamRec(const ID: string; Data: Pointer;
  DataType: TParamDataType): TParamRec;
begin
  Result.ID := ID;
  Result.Data := Data;
  Result.DataType := DataType;
end;

procedure ReadIniFile(const DestParamTable: array of TParamRec);
begin
  ParamTable := @TParamTable(DestParamTable[0]);
  ParamTableLength := Length(DestParamTable);
  ReadIniFile(DefParamProc);
end;

function HueComp(const Delta: Real): Integer;
begin
  Result := Round(EnsureRange(2 - Abs(Delta), 0, 1) * $FF);
end;

function Hue(const Hue: Real): TColorRef;
var
  H: Real;

begin
  H := Hue / 60;
  Result := RGB(HueComp(H - 0) + HueComp(H - 6), HueComp(H - 2),
    HueComp(H - 4));
end;

end.
