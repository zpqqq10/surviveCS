unit SGMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, SNAIcon, SGKernel, WaveFmt;

type
  TfmMain = class(TForm)
    MainMenu1: TMainMenu;
    Options1: TMenuItem;
    miFade: TMenuItem;
    N2: TMenuItem;
    miFont: TMenuItem;
    miMinimizeToSNA: TMenuItem;
    miAbout: TMenuItem;
    dlgFont: TFontDialog;
    snaiAccessIcon: TSNAIcon;
    PopupMenu1: TPopupMenu;
    miActive: TMenuItem;
    N1: TMenuItem;
    miExit: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure miFadeClick(Sender: TObject);
    procedure miFontClick(Sender: TObject);
    procedure miMinimizeToSNAClick(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure snaiAccessIconMinimizeTo(Sender: TObject);
    procedure miActiveClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure dlgFontApply(Sender: TObject; Wnd: HWND);
  private
    procedure UpdateTitle;
    procedure ApplicationRestore(Sender: TObject);
    procedure WMSysColorChange(var Message: TMessage); message WM_SYSCOLORCHANGE;
  public
    procedure AssignFontToChildren;
    procedure UpdateControls(Sender: TObject; Settings: TSGSettings);
  end;

var
  fmMain: TfmMain;
  SG: TSineGen;
  CanActivate: Boolean;
  PCMFormats: TPCMFormats;
  StartTime: TDateTime;
  UpdatingControls: Boolean;
  CurrentControl: TObject;

function RespondControlEvent(Sender: TObject): Boolean;
function ActiveTime: TDateTime;
procedure SGInitialize;

implementation

uses
  SGPower, SGLevel, SGFunction, SGFrequency, SGPhase, SGOutput, SGMacro,
  SGTimer, SGAbout, SGConst, StdCtrls, ComCtrls, CommCtrl,
{$IF RTLVersion >= 15.0}
  Themes,
{$IFEND}
  Registry, GenUtils, Lite, Lite1, Lite2, Types, Math;

{$R *.dfm}
{$R WindowsXP.res}

function RespondControlEvent(Sender: TObject): Boolean;
begin
  Result := (SG <> nil) and not UpdatingControls;
  if Result then
    CurrentControl := Sender;
end;

function ActiveTime: TDateTime;
begin
  Result := Now - StartTime;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  pcmf: TPCMFormats;
begin                                        
  Application.OnRestore := ApplicationRestore;
  UpdateTitle;
  snaiAccessIcon.InfoBalloon.Title := ProductName;
  with TRegistry.Create do
    try
      if OpenKey(RegKey, False) then
      begin
        SetLength(pcmf, $40);    
        SetLength(pcmf, ReadBinaryData(SFormats, Pointer(pcmf)^, Length(pcmf) *
          SizeOf(TPCMFormat)) div SizeOf(TPCMFormat));
        PCMFormats := pcmf;
        if ValueExists(SMinimizeToSNA) then
          miMinimizeToSNA.Checked := ReadBool(SMinimizeToSNA);
        miMinimizeToSNAClick(nil);
      end;
    finally
      Free;
    end;
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  I: Integer;
begin
  try
    if Visible then
    begin
      SimpleSaveFormPlacement;
      for I := 0 to MDIChildCount - 1 do
        SimpleSaveFormPlacement(MDIChildren[I]);
      SimpleSaveFont;
    end;
    with TRegistry.Create do
      try
        if OpenKey(RegKey, True) then
        begin
          WriteBool(SMinimizeToSNA, snaiAccessIcon.MinimizeTo);
          WriteBinaryData(SFormats, Pointer(PCMFormats)^, Length(PCMFormats)
            * SizeOf(TPCMFormat));
          if SG <> nil then
            with SG do
            begin
              if fmLevel.cbLevelLinked.Checked and (Level_0 = Level_1) then
              begin
                DeleteValue(SLevel_0);
                DeleteValue(SLevel_1);
                WriteFloat(SLevel, Level);
              end
              else
              begin
                DeleteValue(SLevel);
                WriteFloat(SLevel_0, Level_0);
                WriteFloat(SLevel_1, Level_1);
              end;
              WriteInteger(SWorkFunction, Ord(WorkFunc));
              WriteFloat(SFrequency, Frequency);
              WriteFloat(SPhaseDifference, PhaseDifference);
              WriteInteger(SLatency, Round(Latency * 1e3));
              WriteInteger(SPrebuffer, Round(Prebuffer * 1e3));
              WriteBool(SFade, Fade);
              WriteString(SDevice, DeviceName);
              WriteString(SOutputFile, CaptureFile);
            end;
        end;
      finally
        Free;
      end;
  except
    Application.HandleException(Self);
  end;
end;

procedure TfmMain.AssignFontToChildren;
var
  I: Integer;
begin
  for I := 0 to MDIChildCount - 1 do
    MDIChildren[I].Font := Font;
  fmLevel.FormResize(nil);
  fmFrequency.FormResize(nil);
  InvalidateRect(fmFrequency.lbTone.Handle, nil, True); // due to bug in update
  fmPhase.FormResize(nil);
end;

procedure TfmMain.FormShow(Sender: TObject);
var
  I: Integer;
begin
  if not SimpleRestoreFormPlacement then
    CenterControl(Self, CenterPoint(Screen.DesktopRect));
  for I := 0 to MDIChildCount - 1 do
    SimpleRestoreFormPlacement(MDIChildren[I]);
  SimpleRestoreFont;
  AssignFontToChildren;
  if SG <> nil then
    UpdateControls(SG, sgsAny);
end;

procedure TfmMain.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = VK_RETURN then
  begin
    fmPower.OnOff(Self);
    Handled := True;
  end;
end;

procedure TfmMain.UpdateTitle;
begin
  if (SG <> nil) and SG.Active then
  begin
    Application.Title := SG.BriefInfo + ' - ' + ProductName;
    snaiAccessIcon.Title := SG.BriefInfo;
  end
  else
  begin
    Application.Title := ProductName;
    snaiAccessIcon.Title := ProductName;
  end;
  Caption := Application.Title;
end;

procedure TfmMain.UpdateControls(Sender: TObject; Settings: TSGSettings);

  procedure UpdateLevelControls(EditControl: TEdit; TrackBarConrol: TTrackBar;
    const Value: Real);
  const
    LevelValueStrFormats: array[Boolean] of string = ('%g', '%.2f');
  begin
    if EditControl <> CurrentControl then
      EditControl.Text := Format(LevelValueStrFormats[CurrentControl is
        TTrackBar], [-Value]);
    if TrackBarConrol <> CurrentControl then
      TrackBarConrol.Position := Round(Value * LevelSliderMultiplier);
  end;

const
  OnOffStrings: array[Boolean] of string = (SOn, SOff);
  NotifyStrings: array[Boolean] of string = (SOffNotify, SOnNotify);
var
  R: Real;
  pcmf: TPCMFormat;
begin
  UpdatingControls := True;
  try
    with fmPower, fmLevel, fmFunction, fmFrequency, fmPhase, fmOutput, fmMacro,
      fmTimer, TSineGen(Sender) do
    begin
      OnSettingsChange := UpdateControls;
      if (Settings * [sgsActive, sgsWorkFunction] <> []) then
      begin
        if Accept[sgsLevel] then
          Settings := Settings + [sgsLevelFirst..sgsLevelLast]
        else
        begin
          editLevel_0.Clear;
          editLevel_1.Clear;
          slLevel_0.Position := 0;
          slLevel_1.Position := 0;
        end;
        SetEnableControls([editLevel_0, editLevel_1, slLevel_0, slLevel_1],
          Accept[sgsLevel]);
        if not Accept[sgsLevel_1] then
          cbLevelLinked.Checked := True;
        cbLevelLinked.Enabled := Accept[sgsLevel_1];
        if Accept[sgsFrequency] then
          Include(Settings, sgsFrequency)
        else
        begin
          editFrequency.Clear;
          slFrequency.Position := slFrequency.Max;
          lbTone.ItemIndex := -1;
        end;
        SetEnableControls([editFrequency, slFrequency, lbTone,
          panFrequencyAdjustment, btnHalfFrequency, btnDoubleFrequency,
          btnToneMatch, tbtnMacroAdd], Accept[sgsFrequency]);
        if Accept[sgsPhaseDifference] then
          Include(Settings, sgsPhaseDifference)
        else
        begin
          slPhaseDifference.Position := 0;
          gbPhaseDifference.Caption := SPhaseDifferenceCaption;
        end;
        SetEnableControls([slPhaseDifference, labelZero],
          Accept[sgsPhaseDifference]);
        if Accept[sgsPhaseOffset] then
          Include(Settings, sgsPhaseOffset)
        else
        begin
          gbPhaseOffset.Caption := SPhaseOffsetCaption;
          paintPhaseOffset.Repaint;
        end;
        paintPhaseOffset.Enabled := Accept[sgsPhaseOffset];
        UpdateTitle;
      end;
      if (Settings * [sgsFrequency, sgsLevel, sgsPhaseDifference] <> []) and
        (lvMacro <> CurrentControl) then
        lvMacro.Selected := nil;
      if sgsWorkFunction in Settings then
      begin
        if comboWorkFunction <> CurrentControl then
          comboWorkFunction.ItemIndex := Ord(WorkFunc) - Ord(sgfFirst);
      end;
      if sgsActive in Settings then
      begin
        btnOnOff.Caption := OnOffStrings[Active];
        if Active then
        begin
          StartTime := Now;
          timerActiveTimer(nil);
        end
        else
          fmPower.Caption := SPowerCaptionOff;
        SetEnableControls([comboDevice, btnOutputSetup, editOutputFile,
          btnBrowseOutputFile], not Active);
        timerActive.Enabled := Active;
        miActive.Checked := Active;
        if (CurrentControl = timerOnOff) and snaiAccessIcon.Visible then
          snaiAccessIcon.InfoBalloon.Text := Format(NotifyStrings[Active],
            [BriefInfo]);                                     
        UpdateTimerEnable;
      end;
      if sgsLevel in Settings then
      begin
        if Active then
          UpdateTitle;
      end;
      if sgsLevel_0 in Settings then
      begin
        UpdateLevelControls(editLevel_0, slLevel_0, Level_0);
      end;
      if sgsLevel_1 in Settings then
      begin
        UpdateLevelControls(editLevel_1, slLevel_1, Level_1);
      end;
      if sgsFrequency in Settings then
      begin
        if editFrequency <> CurrentControl then
          if CurrentControl = slFrequency then
            editFrequency.Text := FloatToStrF(Frequency, ffFixed,
              FrequencySliderPrecision + 1, Max(FracLen(Frequency,
              FrequencySliderPrecision), 0))
          else
            editFrequency.Text := FloatToStr(Frequency);
        if slFrequency <> CurrentControl then
          slFrequency.Position := PosOfFrequency(Frequency);
        if lbTone <> CurrentControl then
          lbTone.ItemIndex := ToneOfFrequency(Frequency, True);
        if Active then
          UpdateTitle;
      end;
      if sgsPhaseDifference in Settings then
      begin
        R := RadToDeg(PhaseDifference);
        if slPhaseDifference <> CurrentControl then
          slPhaseDifference.Position := Round(R) * PhaseSliderMultiplier;
        gbPhaseDifference.Caption := Format(SPhaseDifferenceCaption1, [R]);
      end;
      if sgsPhaseOffset in Settings then
      begin
        gbPhaseOffset.Caption := Format(SPhaseOffsetCaption1, [RadToDegStr(
          PhaseOffset)]);
        paintPhaseOffset.Repaint;
      end;
      if sgsFading in Settings then
      begin
        miFade.Checked := Fade;
      end;
      if sgsPCMFormat in Settings then
      begin
        fmOutput.Caption := Format(SOutputCaption, [PCMFormatToStr(PCMFormat)]);
      end;
      if sgsDevice in Settings then
      begin
        if comboDevice <> CurrentControl then
          comboDevice.ItemIndex := DeviceID + 1;
        Include(Settings, sgsAux1);
      end;
      if sgsOutputFile in Settings then           
      begin
        editOutputFile.Text := CaptureFile;
      end;
      if sgsAux1 in Settings then
      begin
        CanActivate := FindFirstSupportedOutPCMFormat(DeviceID, PCMFormats, pcmf);
        if CanActivate then
          PCMFormat := pcmf
        else
          fmOutput.Caption := SOutputCaptionUnknownFormat;
        btnOnOff.Enabled := CanActivate;
      end;
    end;
  finally
    UpdatingControls := False;
  end;
end;

procedure TfmMain.miFadeClick(Sender: TObject);
begin
  if SG <> nil then
    SG.Fade := not SG.Fade;
end;

procedure TfmMain.miFontClick(Sender: TObject);
begin
  dlgFont.Font := Font;
  if dlgFont.Execute then
  begin
    Font := dlgFont.Font;
    AssignFontToChildren;
  end;
end;

procedure TfmMain.dlgFontApply(Sender: TObject; Wnd: HWND);
begin
  Font := dlgFont.Font;
  AssignFontToChildren;
end;

procedure TfmMain.miMinimizeToSNAClick(Sender: TObject);
begin
  snaiAccessIcon.MinimizeTo := miMinimizeToSNA.Checked;
end;

procedure TfmMain.miAboutClick(Sender: TObject);
begin
  with TfmAbout.Create(Application) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfmMain.snaiAccessIconMinimizeTo(Sender: TObject);
begin
  Enabled := False; // trick; no restore animation
end;

procedure TfmMain.ApplicationRestore(Sender: TObject);
begin
  snaiAccessIcon.InfoBalloon.Text := '';
  Enabled := True;
end;

procedure TfmMain.miActiveClick(Sender: TObject);
begin
  fmPower.OnOff(nil);
end;

procedure TfmMain.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.WMSysColorChange(var Message: TMessage);
begin
{$IF RTLVersion >= 15.0}
  ThemeServices.UpdateThemes;
{$IFEND}
  inherited;
  SendMessage(fmFrequency.slFrequency.Handle, TBM_CLEARSEL, 1, 0);
  SendMessage(fmLevel.slLevel_0.Handle, TBM_CLEARSEL, 1, 0);
  SendMessage(fmLevel.slLevel_1.Handle, TBM_CLEARSEL, 1, 0);
  SendMessage(fmPhase.slPhaseDifference.Handle, TBM_CLEARSEL, 1, 0);
end;

procedure RestoreParams(Settings: TSGSettings = sgsAny);
begin
  with TRegistry.Create do
    try
      if OpenKey(RegKey, False) then
        with SG do
        begin
          if sgsOutputFile in Settings then
            CaptureFile := ReadString(SOutputFile);
          if sgsDevice in Settings then
            DeviceID := Max(fmOutput.comboDevice.Items.IndexOf(
              ReadString(SDevice)) - 1, -1);
          if sgsFading in Settings then
            if ValueExists(SFade) then
              Fade := ReadBool(SFade);
          if sgsPrebuffer in Settings then
            Prebuffer := ReadInteger(SPrebuffer) / 1e3;
          if sgsLatency in Settings then
            Latency := ReadInteger(SLatency) / 1e3;
          if sgsPhaseDifference in Settings then
            PhaseDifference := ReadFloat(SPhaseDifference);
          if sgsFrequency in Settings then
            Frequency := ReadFloat(SFrequency);
          if sgsLevel in Settings then
            if fmLevel.cbLevelLinked.Checked then
              Level := ReadFloat(SLevel) else
            begin
              Level_0 := ReadFloat(SLevel_0);
              Level_1 := ReadFloat(SLevel_1);
            end;
          if sgsWorkFunction in Settings then
            if ValueExists(SWorkFunction) then
              WorkFunc := TSGWorkFunc(ReadInteger(SWorkFunction));
        end;
    finally
      Free;
    end;
end;

procedure SGInitialize;
var
  I: Integer;
  S: string;
  Ch: Char;
begin
  SG := TSineGen.Create;
  RestoreParams(sgsAny);
  for I := 1 to ParamCount do
  begin
    S := ParamStr(I);
    Ch := UpCase(S[1]);
    Delete(S, 1, 1);
    try
      with SG do
        case Ch of
          'S': WorkFunc := sgfSine;
          'Q': WorkFunc := sgfSquare;
          'T': WorkFunc := sgfTriangle;
          'H': WorkFunc := sgfSawtooth;
          'W': WorkFunc := sgfWhiteNoise;
          'P': WorkFunc := sgfPinkNoise;
          'L': Level := -Abs(StrToFloat(S));
          'F': Frequency := StrToFloat(S);
          'D': PhaseDifference := DegToRad(StrToFloat(S));
        end;
    except
      on EConvertError do;
    end;
  end;
  if ParamCount <> 0 then
  begin
    fmMain.UpdateControls(SG, [sgsAux1]);
    fmMain.WindowState := wsMinimized;
    fmMain.Enabled := False;
    SG.Active := True;
  end;
end;

initialization

finalization  
  FreeAndNil(SG);

end.
