program SineGen;

uses
  Forms,
  SGMain in 'SGMain.pas' {fmMain},
  SGFunction in 'SGFunction.pas' {fmFunction},
  SGPower in 'SGPower.pas' {fmPower},
  SGLevel in 'SGLevel.pas' {fmLevel},
  SGFrequency in 'SGFrequency.pas' {fmFrequency},
  SGPhase in 'SGPhase.pas' {fmPhase},
  SGOutput in 'SGOutput.pas' {fmOutput},
  SGMacro in 'SGMacro.pas' {fmMacro},
  SGTimer in 'SGTimer.pas' {fmTimer},
  SGOutputSetup in 'SGOutputSetup.pas' {fmOutputSetup},
  SGAbout in 'SGAbout.pas' {fmAbout},
  SGConst in 'SGConst.pas',
  SGKernel in 'SGKernel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmTimer, fmTimer);
  Application.CreateForm(TfmMacro, fmMacro);
  Application.CreateForm(TfmOutput, fmOutput);
  Application.CreateForm(TfmPhase, fmPhase);
  Application.CreateForm(TfmFrequency, fmFrequency);
  Application.CreateForm(TfmLevel, fmLevel);
  Application.CreateForm(TfmPower, fmPower);
  Application.CreateForm(TfmFunction, fmFunction);
  Application.Run;
end.
