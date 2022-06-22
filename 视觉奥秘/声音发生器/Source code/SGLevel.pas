unit SGLevel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfmLevel = class(TForm)
    Panel1: TPanel;
    editLevel_0: TEdit;
    editLevel_1: TEdit;
    slLevel_0: TTrackBar;
    slLevel_1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    labelLowest: TLabel;
    spLeft: TBevel;
    spRight: TBevel;
    Panel2: TPanel;
    cbLevelLinked: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure editLevelChange(Sender: TObject);
    procedure editLevelExit(Sender: TObject);
    procedure slLevelChange(Sender: TObject);
    procedure cbLevelLinkedClick(Sender: TObject);
  private
    function SliderPartWidth: Integer;
    procedure SetLevel(const Value: Real; Sender: TObject);
  end;
             
var
  fmLevel: TfmLevel;

const
  LevelSliderMultiplier = -2;

implementation

uses
  Lite, CommCtrl, Registry, Lite2, SGConst, SGMain, Math;

{$R *.dfm}

function TfmLevel.SliderPartWidth: Integer;
begin
  Result := slLevel_0.Width + labelLowest.Width + slLevel_1.Width + 2;
end;

procedure TfmLevel.FormCreate(Sender: TObject);
begin
  slLevel_0.ThumbLength := -Font.Height * 2;
  slLevel_1.ThumbLength := -Font.Height * 2;
  ChangeWindowStyle(slLevel_0.Handle, 0, TBS_ENABLESELRANGE);
  ChangeWindowStyle(slLevel_1.Handle, 0, TBS_ENABLESELRANGE);
  Constraints.MinWidth := (Width - ClientWidth) + SliderPartWidth;
  Constraints.MaxWidth := Constraints.MinWidth;
  Constraints.MinHeight := (Height - ClientHeight) - Font.Height * 15;
  with TRegistry.Create do
    try
      if OpenKey(RegKey, False) then
      begin
        UpdatingControls := True;
        try
          fmLevel.cbLevelLinked.Checked := ValueExists(SLevel);
        finally
          UpdatingControls := False;
        end;
      end;
    finally
      Free;
    end;
  FormResize(nil);
end;

procedure TfmLevel.FormResize(Sender: TObject);
var
  I: Integer;
begin
  editLevel_0.Width := (ClientWidth - BorderWidth) div 2;
  editLevel_1.Left := editLevel_0.Width + BorderWidth;
  editLevel_1.Width := editLevel_0.Width;
  spLeft.Width := (ClientWidth - SliderPartWidth) div 2;
  spRight.Width := spLeft.Width;
  for I := 0 to ControlCount - 1 do
    if Controls[I] is TLabel then
      with TControl(Controls[I]) do
        if Tag > 0 then
          SetBounds((Self.ClientWidth - Width) div 2, slLevel_0.Top +
            SendMessage(slLevel_0.Handle, TBM_GETTICPOS, Tag - 1, 0) - Height
            div 2, Width, Height);
end;

procedure TfmLevel.SetLevel(const Value: Real; Sender: TObject);
begin
  if (Value <= 0) and RespondControlEvent(Sender) then
    try
      if cbLevelLinked.Checked then
        SG.Level := Value
      else
        case (Sender as TComponent).Tag of
          1: SG.Level_0 := Value;
          2: SG.Level_1 := Value;
        end;
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmLevel.editLevelChange(Sender: TObject);
begin
  SetLevel(-StrToFloatDef((Sender as TEdit).Text, -1), Sender);
end;

procedure TfmLevel.editLevelExit(Sender: TObject);
var
  Value: Real;
begin
  UpdatingControls := True;
  try
    Value := 0;
    if SG <> nil then
      case (Sender as TComponent).Tag of
        1: Value := SG.Level_0;
        2: Value := SG.Level_1;
      end;
    (Sender as TEdit).Text := FloatToStr(-Value);
  finally
    UpdatingControls := False;
  end;
end;

procedure TfmLevel.slLevelChange(Sender: TObject);
begin                                                          
  SetLevel(RoundTo((Sender as TTrackBar).Position / LevelSliderMultiplier, -2),
    Sender);
end;

procedure TfmLevel.cbLevelLinkedClick(Sender: TObject);
begin                                                   
  if cbLevelLinked.Checked and RespondControlEvent(Sender) then
    try
      SG.Level := RoundTo(SG.Level, -2);
    finally
      CurrentControl := nil;
    end;
end;

end.
