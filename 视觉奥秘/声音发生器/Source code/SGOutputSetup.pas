unit SGOutputSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, WaveFmt;

type
  TfmOutputSetup = class(TForm)
    GroupBox1: TGroupBox;
    gbLatency: TGroupBox;
    slLatency: TTrackBar;
    Bevel2: TBevel;
    gbPrebuffer: TGroupBox;
    slPrebuffer: TTrackBar;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    editFormats: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
    btnDefaults: TButton;
    procedure FormCreate(Sender: TObject);
    procedure slLatencyChange(Sender: TObject);
    procedure slPrebufferChange(Sender: TObject);
    procedure btnDefaultsClick(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
  public
    class procedure Execute;
  end;

var
  fmOutputSetup: TfmOutputSetup;

implementation

uses
  SGMain, Lite, CommCtrl, SGKernel, SGConst;

{$R *.dfm}

procedure TfmOutputSetup.FormCreate(Sender: TObject);
begin
  ChangeWindowStyle(slLatency.Handle, 0, TBS_ENABLESELRANGE);
  ChangeWindowStyle(slPrebuffer.Handle, 0, TBS_ENABLESELRANGE);
  slLatencyChange(nil);
  slPrebufferChange(nil);    
end;

procedure TfmOutputSetup.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = VK_ESCAPE then
  begin
    Close;
    Handled := True;
  end;
end;

class procedure TfmOutputSetup.Execute;
begin
  with Create(Application) do
    try
      slLatency.Position := Round(SG.Latency * 1e3);
      slPrebuffer.Position := Round(SG.Prebuffer * 1e3);
      editFormats.Text := PCMFormatsToStr(PCMFormats);
      if (ShowModal = mrOk) and (SG <> nil) then
      begin
        SG.Latency := slLatency.Position / 1e3;
        SG.Prebuffer := slPrebuffer.Position / 1e3;
        PCMFormats := StrToPCMFormats(editFormats.Text);
        fmMain.UpdateControls(SG, [sgsAux1]);
      end;
    finally
      Free;
    end;
end;

procedure TfmOutputSetup.slLatencyChange(Sender: TObject);
begin
  gbLatency.Caption := Format(SLatencyCaption, [slLatency.Position]);
end;

procedure TfmOutputSetup.slPrebufferChange(Sender: TObject);
begin
  gbPrebuffer.Caption := Format(SPrebufferCaption, [slPrebuffer.Position]);
end;

var
  DefPCMFormats: TPCMFormats;

procedure TfmOutputSetup.btnDefaultsClick(Sender: TObject);
begin
  slLatency.Position := 50;
  slPrebuffer.Position := 100;
  editFormats.Text := PCMFormatsToStr(DefPCMFormats);
end;

initialization
  SetLength(DefPCMFormats, 4);

  DefPCMFormats[0].BitDepth := 24;
  DefPCMFormats[0].SamplingRate := 96000;
  DefPCMFormats[0].ChannelCount := 2;

  DefPCMFormats[1].BitDepth := 16;
  DefPCMFormats[1].SamplingRate := 48000;
  DefPCMFormats[1].ChannelCount := 2;

  DefPCMFormats[2].BitDepth := 16;
  DefPCMFormats[2].SamplingRate := 44100;
  DefPCMFormats[2].ChannelCount := 2;

  DefPCMFormats[3].BitDepth := 16;
  DefPCMFormats[3].SamplingRate := 48000;
  DefPCMFormats[3].ChannelCount := 1;

  PCMFormats := DefPCMFormats;
  
end.
