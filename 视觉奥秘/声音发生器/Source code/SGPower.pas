unit SGPower;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfmPower = class(TForm)
    timerActive: TTimer;
    btnOnOff: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure OnOff(Sender: TObject);
    procedure timerActiveTimer(Sender: TObject);
  end;

var
  fmPower: TfmPower;

implementation

uses
  Lite1, SGMain, SGConst;

{$R *.dfm}

procedure TfmPower.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := (Height - ClientHeight) + btnOnOff.Height;
  Constraints.MaxHeight := Constraints.MinHeight;
  FormResize(nil);
  try
    SGInitialize;
  except
    Application.HandleException(Self);
  end;
end;

procedure TfmPower.FormResize(Sender: TObject);
begin
  btnOnOff.Width := ClientWidth;
end;

procedure TfmPower.OnOff(Sender: TObject);
begin
  if (SG <> nil) then
    SG.Active := not SG.Active and CanActivate;
end;

procedure TfmPower.timerActiveTimer(Sender: TObject);
begin
  Caption := Format(SPowerCaptionOn, [TimeToStrEx(ActiveTime)]);
end;

end.
