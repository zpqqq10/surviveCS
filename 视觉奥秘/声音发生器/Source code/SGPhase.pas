unit SGPhase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfmPhase = class(TForm)
    gbPhaseDifference: TGroupBox;
    slPhaseDifference: TTrackBar;
    Label1: TLabel;
    labelZero: TLabel;
    Label2: TLabel;
    spTopBottom: TBevel;
    gbPhaseOffset: TGroupBox;
    paintPhaseOffset: TPaintBox;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure slPhaseDifferenceChange(Sender: TObject);
    procedure labelZeroMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure paintPhaseOffsetMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure paintPhaseOffsetMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure paintPhaseOffsetMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure paintPhaseOffsetPaint(Sender: TObject);
  private
    DragPos: Integer;
  end;

var
  fmPhase: TfmPhase;

const
  PhaseSliderMultiplier = 2;

implementation

uses
  Lite, CommCtrl, SGMain, Math;

{$R *.dfm}

procedure TfmPhase.FormCreate(Sender: TObject);
begin
  DragPos := Low(Integer);
  slPhaseDifference.ThumbLength := -Font.Height * 2;
  ChangeWindowStyle(slPhaseDifference.Handle, 0, TBS_ENABLESELRANGE);
  Constraints.MinHeight := (Height - ClientHeight) + gbPhaseDifference.Height +
    spTopBottom.Height - Font.Height * 4;
  FormResize(nil);
end;

procedure TfmPhase.FormResize(Sender: TObject);
var
  I: Integer;
begin
  with gbPhaseDifference do
    for I := 0 to ControlCount - 1 do
      if Controls[I] is TLabel then
        with TControl(Controls[I]) do
          if Tag > 0 then
            SetBounds(slPhaseDifference.Left + SendMessage(
              slPhaseDifference.Handle, TBM_GETTICPOS, Tag - 1, 0) - Width div
              2, slPhaseDifference.BoundsRect.Bottom, Width, Height);
end;

procedure TfmPhase.slPhaseDifferenceChange(Sender: TObject);
begin
  if RespondControlEvent(Sender) then
    try
      SG.PhaseDifference := DegToRad((Sender as TTrackBar).Position /
        PhaseSliderMultiplier);
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmPhase.labelZeroMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if SG <> nil then
    SG.PhaseDifference := 0;
end;

procedure TfmPhase.paintPhaseOffsetMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DragPos := X;
end;

procedure TfmPhase.paintPhaseOffsetMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin                                                       
  if (DragPos <> Low(Integer)) and (X <> DragPos) then
  begin
    if SG <> nil then
      SG.PhaseOffset := SG.PhaseOffset - _2Pi * (X - DragPos) /
        (Sender as TControl).ClientWidth;
    DragPos := X;
  end;
end;

procedure TfmPhase.paintPhaseOffsetMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DragPos := Low(Integer);
end;

procedure TfmPhase.paintPhaseOffsetPaint(Sender: TObject);
var
  x0, x, y, y0, y1, y2: Integer;
  kx, ky: Real;

  function NormFunc(const Offset: Real = 0): Integer;
  begin
    Result := Round(ky - SG.WorkFuncProc(SG.PhaseOffset + (x - x0 + Offset) *
      kx) * ky);
  end;

begin
  with TPaintBox(Sender), Canvas do
  begin
    Pen.Color := clBtnHighlight;
    x0 := (Width - 1) div 2;
    y0 := (Height - 1) div 2;
    MoveTo(x0, 0);
    LineTo(x0, Height);
    MoveTo(0, y0);
    LineTo(Width, y0);
    if (SG <> nil) and SG.Active and Assigned(SG.WorkFuncProc) then
    begin
      Pen.Color := Font.Color;
      kx := Pi / x0;
      ky := y0;
      for x := 0 to x0 * 2 + 1 do
      begin
        y1 := NormFunc(-0.5);
        y2 := NormFunc(0.5);
        if Abs(y2 - y1) > y0 then    
        begin
          if x = 0 then
            MoveTo(x, y1)
          else
            LineTo(x, y1);
          LineTo(x, y2)
        end
        else
        begin
          y := NormFunc;
          if x = 0 then
            MoveTo(x, y)
          else
            LineTo(x, y);
        end;
      end;
    end;
  end;
end;

end.
