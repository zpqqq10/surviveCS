unit SGFunction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmFunction = class(TForm)
    comboWorkFunction: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure comboWorkFunctionSelect(Sender: TObject);
  end;

var
  fmFunction: TfmFunction;

implementation

uses
  SGKernel, SGMain;

{$R *.dfm}

procedure TfmFunction.FormCreate(Sender: TObject);
var
  FT: TSGWorkFunc;
begin
  for FT := sgfFirst to sgfLast do
    comboWorkFunction.Items.Add(SGWorkFuncs[FT].Name);
end;

procedure TfmFunction.comboWorkFunctionSelect(Sender: TObject);
begin
  if RespondControlEvent(Sender) then
    try
      SG.WorkFunc := TSGWorkFunc(Ord(sgfFirst) + comboWorkFunction.ItemIndex);
    finally
      CurrentControl := nil;
    end;
end;

end.
