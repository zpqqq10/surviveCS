unit SGTimer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfmTimer = class(TForm)
    GroupBox1: TGroupBox;
    cbOnTimer: TCheckBox;
    dtpOnTime: TDateTimePicker;
    cbOnDate: TCheckBox;
    dtpOnDate: TDateTimePicker;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    cbOffTimer: TCheckBox;
    dtpDuration: TDateTimePicker;
    editDurationDays: TEdit;
    udDurationDays: TUpDown;
    Label1: TLabel;
    timerOnOff: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimerSettingChange(Sender: TObject);
    procedure timerOnOffTimer(Sender: TObject);
  private
    procedure SetDate;
    function OnEstimatedTime: TDateTime;
  public
    procedure UpdateTimerEnable;
  end;

var
  fmTimer: TfmTimer;

implementation

uses
  SGMain, SGConst, Lite1;

{$R *.dfm}

procedure TfmTimer.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  I := editDurationDays.Height;
  dtpOnDate.Height := I;
  dtpOnTime.Height := I;
  dtpDuration.Height := I;
  dtpOnDate.Date := Date;
  dtpOnTime.Time := Time;
end;

procedure TfmTimer.SetDate;
var
  ADate: TDateTime;
begin
  if not cbOnDate.Checked then
  begin
    ADate := Date;
    if Frac(dtpOnTime.Time) <= Time then
      ADate := ADate + 1;
    dtpOnDate.Date := ADate;
  end;
end;

function TfmTimer.OnEstimatedTime: TDateTime;
begin
  Result := Int(dtpOnDate.Date) + Frac(dtpOnTime.Time) - Now;
end;

procedure TfmTimer.UpdateTimerEnable;
begin                                 
  timerOnOff.Enabled := (SG <> nil) and (not SG.Active and cbOnTimer.Checked
    and (OnEstimatedTime >= 0) or SG.Active and cbOffTimer.Checked);
  if timerOnOff.Enabled then
    timerOnOffTimer(nil)
  else
    Caption := STimerCaption;
end;

procedure TfmTimer.TimerSettingChange(Sender: TObject);
begin
  dtpOnDate.Enabled := cbOnDate.Checked;
  if (Sender as TComponent).Tag = 1 then
    SetDate;
  UpdateTimerEnable;
end;

procedure TfmTimer.timerOnOffTimer(Sender: TObject);
var
  EstimatedTime: TDateTime;
begin
  if SG <> nil then
  begin
    EstimatedTime := -1;
    CurrentControl := Sender;
    try
      if SG.Active then
      begin
        if cbOffTimer.Checked then
        begin
          EstimatedTime := udDurationDays.Position + Frac(dtpDuration.Time) -
            ActiveTime;
          if EstimatedTime <= 0 then
          begin
            SetDate;
            SG.Active := False;
            Exit;
          end;
        end;
      end
      else
        if cbOnTimer.Checked then
        begin
          EstimatedTime := OnEstimatedTime;
          if EstimatedTime <= 0 then
          begin
            SG.Active := CanActivate;
            Exit;
          end;
        end;
    finally
      CurrentControl := nil;
    end;
    if EstimatedTime >= 0 then
      Caption := Format(STimerCaption1, [TimeToStrEx(EstimatedTime)]);
  end;
end;

end.
