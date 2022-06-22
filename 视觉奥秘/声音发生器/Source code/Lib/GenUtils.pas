unit GenUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms;

function MessageBoxResFmt(Msg: PResStringRec; const Args: array of const;
  Flags: Integer): Integer;
procedure SetEnableControls(const AControls: array of TControl; Enable: Boolean);
procedure CenterControl(AControl: TControl; const APoint: TPoint);
procedure PlaceControlEnsureRect(AControl: TControl; ALeft, ATop,
  AWidth, AHeight: Integer; ARect: TRect);
function SimpleSaveFormPlacement(AForm: TCustomForm = nil): Boolean;
function SimpleRestoreFormPlacement(AForm: TCustomForm;
  const EnsureRect: TRect): Boolean; overload;
function SimpleRestoreFormPlacement(AForm: TCustomForm = nil): Boolean; overload;
function SimpleSaveFont(AFont: TFont = nil; const PrefixName: string = ''): Boolean;
function SimpleRestoreFont(AFont: TFont = nil; const PrefixName: string = ''): Boolean;

implementation

uses
  Math, Registry, Lite2;

function MessageBoxResFmt(Msg: PResStringRec; const Args: array of const;
  Flags: Integer): Integer;
begin
  Result := Application.MessageBox(PChar(Format(LoadResString(Msg), Args)),
    PChar(Application.Title), Flags);
end;

procedure SetEnableControls(const AControls: array of TControl; Enable: Boolean);
var
  i: Integer;
begin
  for i := 0 to High(AControls) do
    AControls[i].Enabled := Enable;
end;

procedure CenterControl(AControl: TControl; const APoint: TPoint);
begin
  with AControl, APoint do
    SetBounds(X - Width div 2, Y - Height div 2, Width, Height);
end;

procedure PlaceControlEnsureRect(AControl: TControl; ALeft, ATop,
  AWidth, AHeight: Integer; ARect: TRect);
begin
  with ARect do
  begin
    if (AWidth < 0) or (AHeight < 0) then
    begin
      AWidth := AControl.Width;
      AHeight := AControl.Height;
    end;
    AWidth := Min(AWidth, Right - Left);
    AHeight := Min(AHeight, Bottom - Top);
    AControl.SetBounds(EnsureRange(ALeft, Left, Right - AWidth), EnsureRange(
      ATop, Top, Bottom - AHeight), AWidth, AHeight);
  end;
end;

function SimpleSaveFormPlacement(AForm: TCustomForm): Boolean;
begin
  if AForm = nil then
    AForm := Application.MainForm;
  with AForm, TRegistry.Create do
    try
      Result := OpenKey(RegKey, True);
      if Result then
      begin
        WriteInteger(Name + 'Left', Left);
        WriteInteger(Name + 'Top', Top);
        if BorderStyle in [bsSizeable, bsSizeToolWin] then
        begin
          WriteInteger(Name + 'Width', Width);
          WriteInteger(Name + 'Height', Height);
        end;
      end;
    finally
      Free;
    end;
end;

function SimpleRestoreFormPlacement(AForm: TCustomForm;
  const EnsureRect: TRect): Boolean;
var
  AWidth, AHeight: Integer;
begin
  if AForm = nil then
    AForm := Application.MainForm;
  with AForm, TRegistry.Create do
    try
      Result := OpenKey(RegKey, False) and ValueExists(Name + 'Left');
      if Result then
      begin
        AWidth := -1;
        AHeight := -1;
        if (BorderStyle in [bsSizeable, bsSizeToolWin]) and ValueExists(Name +
          'Width') then
        begin
          AWidth := ReadInteger(Name + 'Width');
          AHeight := ReadInteger(Name + 'Height');
        end;
        PlaceControlEnsureRect(AForm, ReadInteger(Name + 'Left'),
          ReadInteger(Name + 'Top'), AWidth, AHeight, EnsureRect);
      end;
    finally
      Free;
    end;
end;

function SimpleRestoreFormPlacement(AForm: TCustomForm): Boolean;
var
  Rect: TRect;
begin
  if (AForm is TForm) and (TForm(AForm).FormStyle = fsMDIChild) and
    (Application.MainForm <> nil) then
    Rect := Application.MainForm.ClientRect
  else
    Rect := Screen.WorkAreaRect;
  Result := SimpleRestoreFormPlacement(AForm, Rect);
end;

function SimpleSaveFont(AFont: TFont; const PrefixName: string): Boolean;
var
  Prefix: string;
begin
  if AFont = nil then
    AFont := Application.MainForm.Font;
  with AFont, TRegistry.Create do
    try
      Result := OpenKey(RegKey, True);
      if Result then
      begin
        Prefix := PrefixName + 'Font';
        WriteString(Prefix + 'Name', Name);
        WriteInteger(Prefix + 'Style', Byte(Style));
        WriteInteger(Prefix + 'Size', Size);
        WriteInteger(Prefix + 'Color', Color);
      end;
    finally
      Free;
    end;
end;

function SimpleRestoreFont(AFont: TFont; const PrefixName: string): Boolean;
var
  Prefix: string;
begin
  if AFont = nil then
    AFont := Application.MainForm.Font;
  with AFont, TRegistry.Create do
    try
      Prefix := PrefixName + 'Font';
      Result := OpenKey(RegKey, False) and ValueExists(Prefix + 'Name');
      if Result then
      begin
        Name := ReadString(Prefix + 'Name');
        Style := TFontStyles(Byte(ReadInteger(Prefix + 'Style')));
        Size := ReadInteger(Prefix + 'Size');
        Color := ReadInteger(Prefix + 'Color');
      end;
    finally
      Free;
    end;
end;

end.
