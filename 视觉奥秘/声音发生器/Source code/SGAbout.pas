unit SGAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmAbout = class(TForm)
    Button1: TButton;
    Label21: TLabel;
    Label23: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AddressClick(Sender: TObject);
  end;

var
  fmAbout: TfmAbout;

implementation

uses
  SGConst, Lite2, ShellAPI;

{$R *.dfm}

procedure TfmAbout.FormCreate(Sender: TObject);
begin
  Caption := Format(SAboutCaption, [ProductName]);
end;

procedure TfmAbout.AddressClick(Sender: TObject);
var
  S: string;
begin
  S := (Sender as TLabel).Caption;
  if Pos('@', S) <> 0 then
    S := Format('mailto:%s?subject=%s', [S, ProductName]);
  ShellExecute(Handle, nil, PChar(S), nil, nil, SW_SHOWNORMAL);
end;

end.
