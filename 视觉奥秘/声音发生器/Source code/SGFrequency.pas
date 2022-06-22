unit SGFrequency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfmFrequency = class(TForm)
    Panel1: TPanel;
    editFrequency: TEdit;
    slFrequency: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbTone: TListBox;
    Panel2: TPanel;
    panFrequencyAdjustment: TPanel;
    btnHalfFrequency: TButton;
    btnDoubleFrequency: TButton;
    btnToneMatch: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure editFrequencyChange(Sender: TObject);
    procedure editFrequencyExit(Sender: TObject);
    procedure slFrequencyChange(Sender: TObject);
    procedure lbToneClick(Sender: TObject);
    procedure panFrequencyAdjustmentMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure panFrequencyAdjustmentMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure panFrequencyAdjustmentMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnHalfFrequencyClick(Sender: TObject);
    procedure btnDoubleFrequencyClick(Sender: TObject);
    procedure btnToneMatchClick(Sender: TObject);
  private
    CapturePos: Integer;
    CaptureFrequency: Real;
    AdjustPrecLog: Extended;
    AdjustStrength: extended;
  end;

var
  fmFrequency: TfmFrequency;

const
  FrequencySliderMultiplier = -1e3;
  FrequencySliderPrecision = 4;

function PosOfFrequency(const Frequency: Real): Integer;
function ToneOfFrequency(const Frequency: Real;
  Exact: Boolean = False): Integer;

implementation

uses
  Lite1, Math, Lite, CommCtrl, SGMain;

{$R *.dfm}

function PosOfFrequency(const Frequency: Real): Integer;
begin
  if Frequency > 0 then
    Result := Round(Ln(Frequency) * FrequencySliderMultiplier)
  else
    Result := Low(Integer);
end;

const
  MaxToneIndex = 127;
  ToneA4Index = MaxToneIndex - 57;

function FrequencyOfTone(Tone: Integer): Real;
begin
  Result := Prec(440 * Power(2, (ToneA4Index - Tone) / 12), 5);
end;

function ToneOfFrequency(const Frequency: Real;
  Exact: Boolean = False): Integer;
var
  Tone: Real;
begin
  Tone := ToneA4Index - 12 * Log2(Frequency / 440);
  Result := Round(Tone);
  if not InRange(Result, 0, MaxToneIndex) or Exact and not
    IsZero(Tone - Result, 1e-3) then
    Result := -1;
end;

procedure TfmFrequency.FormCreate(Sender: TObject);
const
  Sharps: array[0..1] of string = ('', '#');
var
  f: Real;
  I, J: Integer;
begin              
  CapturePos := Low(Integer);
  Constraints.MinWidth := (Width - ClientWidth) + editFrequency.Width;
  Constraints.MaxWidth := Constraints.MinWidth;
  Constraints.MinHeight := (Height - ClientHeight) - Font.Height * 15;
  slFrequency.ThumbLength := -Font.Height * 2;
  slFrequency.Max := -2750; // due to bug in VCL component loading
  ChangeWindowStyle(slFrequency.Handle, 0, TBS_ENABLESELRANGE);
  f := 20;
  while f < 30000 do
  begin
    slFrequency.SetTick(PosOfFrequency(f));
    f := f + IntPower(10, Trunc(Log10(f)));
  end;
  with lbTone.Items do
  begin
    BeginUpdate;
    try
      Clear;
      for I := MaxToneIndex downto 0 do
      begin
        J := I mod 12 + 4;
        if J > 8 then
          Inc(J);
        Add(Format('%s%s%d', [Chr(Ord('A') + J div 2 mod 7), Sharps[J and 1],
          I div 12]));
      end;
    finally
      EndUpdate;
    end;
  end;
  FormResize(nil);
end;

procedure TfmFrequency.FormResize(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to ControlCount - 1 do
    if Controls[I] is TLabel then
      with TControl(Controls[I]) do
        if Tag > 0 then
          SetBounds(slFrequency.Width + 1, slFrequency.Top + SendMessage(
            slFrequency.Handle, TBM_GETTICPOS, Tag - 1, 0) - Height div 2,
            Width, Height);
end;

procedure TfmFrequency.editFrequencyChange(Sender: TObject);
begin
  if RespondControlEvent(Sender) then
    try
      SG.Frequency := StrToFloatDef((Sender as TEdit).Text, SG.Frequency);
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmFrequency.editFrequencyExit(Sender: TObject);
begin
  UpdatingControls := True;
  try
    if SG <> nil then
      editFrequency.Text := FloatToStr(SG.Frequency);
  finally
    UpdatingControls := False;
  end;
end;

procedure TfmFrequency.slFrequencyChange(Sender: TObject);
begin
  if RespondControlEvent(Sender) then
    try
      SG.Frequency := Prec(Exp(slFrequency.Position /
        FrequencySliderMultiplier), FrequencySliderPrecision);
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmFrequency.lbToneClick(Sender: TObject);
var
  I: Integer;
begin
  I := lbTone.ItemIndex;                       
  if (I <> -1) and RespondControlEvent(Sender) then
    try
      SG.Frequency := FrequencyOfTone(I);
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmFrequency.panFrequencyAdjustmentMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CapturePos := Y;
  CaptureFrequency := SG.Frequency;
  AdjustPrecLog := 4 + X / (Sender as TControl).ClientWidth * 10;
  AdjustStrength := Exp(-AdjustPrecLog);
end;

procedure TfmFrequency.panFrequencyAdjustmentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (CapturePos <> Low(Integer)) and (SG <> nil) then
  begin
    SG.Frequency := Prec(CaptureFrequency * Exp((CapturePos - Y) *
      AdjustStrength), 2 + Round(AdjustPrecLog / Ln(10)));
  end;
end;

procedure TfmFrequency.panFrequencyAdjustmentMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CapturePos := Low(Integer);
end;

procedure TfmFrequency.btnHalfFrequencyClick(Sender: TObject);
begin
  if SG <> nil then
    SG.Frequency := SG.Frequency / 2;
end;

procedure TfmFrequency.btnDoubleFrequencyClick(Sender: TObject);
begin
  if SG <> nil then
    SG.Frequency := 2 * SG.Frequency;
end;

procedure TfmFrequency.btnToneMatchClick(Sender: TObject);
begin
  if SG <> nil then
    SG.Frequency := FrequencyOfTone(ToneOfFrequency(SG.Frequency));
end;

end.
