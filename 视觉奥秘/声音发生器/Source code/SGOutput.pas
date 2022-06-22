unit SGOutput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmOutput = class(TForm)
    gbDevice: TGroupBox;
    comboDevice: TComboBox;
    Bevel1: TBevel;
    gbOutputFile: TGroupBox;
    editOutputFile: TEdit;
    btnBrowseOutputFile: TButton;
    dlgOutputFileName: TSaveDialog;
    btnOutputSetup: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure comboDeviceSelect(Sender: TObject);
    procedure editOutputFileChange(Sender: TObject);
    procedure btnBrowseOutputFileClick(Sender: TObject);
    procedure btnOutputSetupClick(Sender: TObject);
  end;

var
  fmOutput: TfmOutput;

implementation

uses
  MMsystem, WaveInOut, SGMain, SGOutputSetup;

{$R *.dfm}

procedure TfmOutput.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Constraints.MinWidth := (Width - ClientWidth) - Font.Height * 20;
  Constraints.MinHeight := (Height - ClientHeight) +
    btnOutputSetup.BoundsRect.Bottom;
  Constraints.MaxHeight := Constraints.MinHeight;
  with TWaveOut.Create do
    try
      for I := -1 to waveOutGetNumDevs - 1 do
      begin
        DeviceID := I;
        comboDevice.Items.Add(DeviceName);
      end;
    finally
      Free;
    end;
  FormResize(nil);
end;

procedure TfmOutput.FormResize(Sender: TObject);
var
  Margin: Integer;
begin
  Margin := comboDevice.Left;
  comboDevice.Width := gbDevice.ClientWidth - Margin * 2;
  editOutputFile.Width := gbOutputFile.Width - Margin * 2 -
    btnBrowseOutputFile.Width - 1;
  btnBrowseOutputFile.Left := gbOutputFile.Width - Margin -
    btnBrowseOutputFile.Width;
end;

procedure TfmOutput.comboDeviceSelect(Sender: TObject);
begin
  if RespondControlEvent(Sender) then
    try
      SG.DeviceID := comboDevice.ItemIndex - 1;
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmOutput.editOutputFileChange(Sender: TObject);
begin
  if RespondControlEvent(Sender) then
    try
      SG.CaptureFile := editOutputFile.Text;
    finally
      CurrentControl := nil;
    end;
end;

procedure TfmOutput.btnBrowseOutputFileClick(Sender: TObject);
begin                                               
  if (SG <> nil) and not SG.Active then
    with dlgOutputFileName do
    begin
      FileName := SG.CaptureFile;
      if Execute then
        SG.CaptureFile := FileName;
    end;
end;

procedure TfmOutput.btnOutputSetupClick(Sender: TObject);
begin
  if (SG <> nil) and not SG.Active then
    TfmOutputSetup.Execute;
end;

end.
