unit SGKernel;

interface

uses
  WaveInOut, WaveFmt, Lite;

type
  TSineGen = class;

  PSGWaveState = ^TSGWaveState;
  TSGWaveState = record
    Amp_0, Amp_1, Phase, Alpha, Phi0_0, Phi0_1: Real;
  end;

  TSGWorkFunc = (sgfNone, sgfSine, sgfSquare, sgfTriangle, sgfSawtooth,
    sgfSine3, sgfInvSine2, sgfWhiteNoise, sgfPinkNoise, sgfCustom);

  TSGSetting = (sgsWorkFunction, sgsActive, sgsLevel, sgsLevel_0, sgsLevel_1,
    sgsFrequency, sgsPhaseDifference, sgsPhaseOffset, sgsLatency, sgsPrebuffer,
    sgsFading, sgsPCMFormat, sgsDevice, sgsOutputFile, sgsAux1, sgsAux2);
  TSGSettings = set of TSGSetting;

  TSGParamsEvent = procedure(Sender: TObject; Settings: TSGSettings) of object;

  TSineGen = class(TWaveOut)
  private
    FWorkFunc: TSGWorkFunc;
    FWorkFuncProc: TFunction;
    FLevel_0: Real;
    FLevel_1: Real;
    FFrequency: Real;
    FPhaseDifference: Real;
    FPhaseOffset: Real;
    FFade: Boolean;
    FWaveState: TSGWaveState;
    FFunction: TFunction;
    FFading: Boolean;
    FOnSettingsChange: TSGParamsEvent;
    function GetAccept(Setting: TSGSetting): Boolean;
    function GetActive: Boolean;
    function GetBriefInfo: string;
    function GetCaptureFile: string;
    function GetDeviceID: Cardinal;
    function GetLatency: Real;
    function GetLevel: Real;
    function GetMaxAvailFreq: Real;
    function GetPCMFormat: TPCMFormat;
    function GetPrebuffer: Real;
    procedure SetActive(const Value: Boolean);
    procedure SetCaptureFile(const Value: string);
    procedure SetDeviceID(const Value: Cardinal);
    procedure SetFrequency(const Value: Real);
    procedure SetWorkFuncProc(const Value: TFunction);
    procedure SetWorkFunc(const Value: TSGWorkFunc);
    procedure SetLatency(const Value: Real);
    procedure SetLevel(const Value: Real);
    procedure SetLevel_0(const Value: Real);
    procedure SetLevel_1(const Value: Real);
    procedure SetPCMFormat(const Value: TPCMFormat);
    procedure SetPhaseDifference(const Value: Real);
    procedure SetPhaseOffset(const Value: Real);
    procedure SetPrebuffer(const Value: Real);
    procedure SetFade(const Value: Boolean);
  protected
    procedure DoSetWorkFunc(WorkFunc: TSGWorkFunc; WorkFuncProc: TFunction);
    procedure ProcessData(var Data; SampleCount: Integer); override;
    procedure RestoreWaveState(const Source); override;
    procedure SaveWaveState(var Dest); override;
    procedure SettingsChange(Settings: TSGSettings); virtual;
    function WaveStateDataSize: Integer; override;
  public
    constructor Create; virtual;
    property Accept[Setting: TSGSetting]: Boolean read GetAccept;
    property Active: Boolean read GetActive write SetActive;
    property BriefInfo: string read GetBriefInfo;
    property CaptureFile: string read GetCaptureFile write SetCaptureFile;
    property DeviceID: Cardinal read GetDeviceID write SetDeviceID;
    property Fade: Boolean read FFade write SetFade;
    property Frequency: Real read FFrequency write SetFrequency;
    property WorkFuncProc: TFunction read FWorkFuncProc write SetWorkFuncProc;
    property WorkFunc: TSGWorkFunc read FWorkFunc write SetWorkFunc;
    property Latency: Real read GetLatency write SetLatency;
    property Level: Real read GetLevel write SetLevel;
    property Level_0: Real read FLevel_0 write SetLevel_0;
    property Level_1: Real read FLevel_1 write SetLevel_1;
    property MaxAvailFreq: Real read GetMaxAvailFreq;
    property PCMFormat: TPCMFormat read GetPCMFormat write SetPCMFormat;
    property PhaseDifference: Real read FPhaseDifference write SetPhaseDifference;
    property PhaseOffset: Real read FPhaseOffset write SetPhaseOffset;
    property Prebuffer: Real read GetPrebuffer write SetPrebuffer;
    property OnSettingsChange: TSGParamsEvent read FOnSettingsChange write FOnSettingsChange;
  end;

function Sine(const X: Extended): Extended;
function Square(const X: Extended): Extended;
function Triangle(const X: Extended): Extended;
function Sawtooth(const X: Extended): Extended;
function Sine3(const X: Extended): Extended;
function InvSine2(const X: Extended): Extended;
function WhiteNoise(const X: Extended = 0): Extended;
function PinkNoise(const X: Extended = 0): Extended;

resourcestring
  SSine        = 'Sine';
  SSquare      = 'Square';
  STriangle    = 'Triangle';
  SSawtooth    = 'Sawtooth';
  SWhiteNoise  = 'White noise';
  SPinkNoise   = 'Pink noise';
  SSine3       = 'Sine^3';
  SInvSine2    = 'InvSine^2';
  SCustom      = 'Custom';

type
  TSGWorkFuncRec = record
    Name: string;
    Proc: TFunction;
  end;

const
  SGLevelRange: TRange = (Min: -114; Max: 0);
  SGMaxCheannels = 2;
  SGWorkFuncs: array[TSGWorkFunc] of TSGWorkFuncRec = (
    (Name: ''; Proc: nil),
    (Name: SSine; Proc: Sine),
    (Name: SSquare; Proc: Square),
    (Name: STriangle; Proc: Triangle),
    (Name: SSawtooth; Proc: Sawtooth),
    (Name: SSine3; Proc: Sine3),
    (Name: SInvSine2; Proc: InvSine2),
    (Name: SWhiteNoise; Proc: WhiteNoise),
    (Name: SPinkNoise; Proc: PinkNoise),
    (Name: SCustom; Proc: nil)
  );
  sgfFirst = Succ(sgfNone);
  sgfLast = Pred(sgfCustom);
  sgfNoise = [sgfWhiteNoise, sgfPinkNoise];
  sgfPeriodic = [sgfFirst..High(TSGWorkFunc)] - sgfNoise;
  SGFrequencyRange: TRange = (Min: 1e-3; Max: 1e5);
  sgsLevelFirst = sgsLevel;
  sgsLevelLast = sgsLevel_1;
  sgsAny = [Low(TSGSetting)..High(TSGSetting)];

threadvar
  Channel: Integer;

implementation

uses
  SysUtils, Math, Lite1;

resourcestring
  SLevelStr = ', %.1f dB';
  SFreqStr = ', %.*f %sHz';
  SKilo = 'k';

function Cycle(const Theta: Extended): Extended;
begin
  Result := Frac(Theta / _2Pi);
  if Result < 0 then
    Result := Result + 1;
end;

{ Work functions }

function Sine(const X: Extended): Extended;
begin
  Result := Sin(X);
end;

function Square(const X: Extended): Extended;
begin
  if Cycle(X) < 0.5 then
    Result := 1
  else
    Result := -1;
end;

function Triangle(const X: Extended): Extended;
begin
  Result := Cycle(X + Pi / 2);
  if Result > 0.5 then
    Result := 1 - Result;
  Result := 4 * (Result - 0.25);
end;

function Sawtooth(const X: Extended): Extended;
begin
  Result := 2 * (Cycle(X + Pi) - 0.5);
end;

function Sine3(const X: Extended): Extended;
begin
  Result := IntPower(Sine(X), 3);
end;

function InvSine2(const X: Extended): Extended;
begin
  Result := 2 * (IntPower(1 - Abs(Sin(X / 2)), 2) - 0.5);
end;

function WhiteNoise(const X: Extended): Extended;
begin
  Result := 2 * (Random - 0.5);
end;

const
  PinkCoefs: array[0..5] of
    record
      P, V: Double;
    end
    = (
    (P: 0.997; V: 0.011743),
    (P: 0.985; V: 0.012911),
    (P: 0.950; V: 0.019071),
    (P: 0.850; V: 0.035946),
    (P: 0.620; V: 0.043253),
    (P: 0.250; V: 0.101508)
  );
  
type
  TPinkBuf = array[0..High(PinkCoefs)] of Double;

threadvar
  PinkBufs: array[0..SGMaxCheannels - 1] of TPinkBuf;

function PinkNoise(const X: Extended): Extended;

  function MakePink(var Buf: TPinkBuf; const White: Double): Double;
  var
    I: Integer;
  begin
    for I := 0 to High(PinkCoefs) do
      with PinkCoefs[I] do
        Buf[I] := P * Buf[I] + V * White;
    Result := Sum(Buf);
  end;
  
begin
  Result := MakePink(PinkBufs[Channel], WhiteNoise);
end;

{ Conversions }

function LevelToPCMAmp(const Level: Real; BitDepth: Integer): Real;
begin
  Result := LevelToAmp(Level) * PCMAmp(BitDepth);
end;

function FreqToAlpha(const Frequency: Real; SampleRate: Integer): Real;
begin
  Result := _2Pi * Frequency / SampleRate;
end;

{ TSineGen }

constructor TSineGen.Create;
begin
  inherited Create;
  FLevel_0 := -12;
  FLevel_1 := -12;
  FWorkFunc := sgfSine;
  FWorkFuncProc := Sine;
  Randomize;
  FFrequency := 1000;  
end;

procedure TSineGen.DoSetWorkFunc(WorkFunc: TSGWorkFunc;
  WorkFuncProc: TFunction);
var
  ChangedSettings: TSGSettings;
begin
  FWorkFunc := WorkFunc;
  FWorkFuncProc := WorkFuncProc;
  FPhaseOffset := 0;
  UpdateStream;
  ChangedSettings := [sgsWorkFunction];
  if Accept[sgsPhaseOffset] then
    Include(ChangedSettings, sgsPhaseOffset);
  SettingsChange(ChangedSettings);
end;

function TSineGen.GetAccept(Setting: TSGSetting): Boolean;
var
  Periodic: Boolean;
begin
  Result := True;
  Periodic := FWorkFunc in sgfPeriodic;
  if Active then
    case Setting of
      sgsLevel: Result := FWorkFunc <> sgfNone;
      sgsLevel_0, sgsLevel_1: Result := Accept[sgsLevel] and Stereo;
      sgsFrequency: Result := Periodic;
      sgsPhaseDifference: Result := Periodic and Stereo;
    end;
  if Setting = sgsPhaseOffset then
    Result := Active and Periodic;
end;

function TSineGen.GetActive: Boolean;
begin
  Result := inherited Active;
end;

function TSineGen.GetBriefInfo: string;
const
  Prefixes: array[Boolean] of string = ('', SKilo);
  Denominators: array[Boolean] of Real = (1, 1e3);
var
  LevelStr, FreqStr: string;
  Kilo: Boolean;
  FrequencyUnits: Real;
begin
  if Accept[sgsLevel] then
    LevelStr := Format(SLevelStr, [Level]);
  if Accept[sgsFrequency] then
  begin
    Kilo := Frequency >= 1e4;
    FrequencyUnits := Frequency / Denominators[Kilo];
    FreqStr := Format(SFreqStr, [Max(FracLen(FrequencyUnits, 4), 0),
      FrequencyUnits, Prefixes[Kilo]]);
  end;
  Result := SGWorkFuncs[FWorkFunc].Name + FreqStr + LevelStr;
end;

function TSineGen.GetCaptureFile: string;
begin
  Result := inherited CaptureFile;
end;

function TSineGen.GetDeviceID: Cardinal;
begin
  Result := inherited DeviceID;
end;

function TSineGen.GetLatency: Real;
begin
  Result := inherited Latency;
end;

function TSineGen.GetLevel: Real;
begin
  Result := LevelMean([FLevel_0, FLevel_1]);
end;

function TSineGen.GetMaxAvailFreq: Real;
begin
  Result := PCMFormat.SamplingRate / 2;
end;

function TSineGen.GetPCMFormat: TPCMFormat;
begin
  Result := inherited PCMFormat;
end;

function TSineGen.GetPrebuffer: Real;
begin
  Result := inherited Prebuffer;
end;

procedure TSineGen.ProcessData(var Data; SampleCount: Integer);
type
  PInt24 = ^Int24;
  Int24 = array[0..2] of Byte;
var
  NewAmp_0, NewAmp_1, New_Alpha, NewPhi0_0, NewPhi0_1: Real;
  Amp_0_Sh, Amp_1_Sh, Alpha_Sh, Phi0_0_Sh, Phi0_1_Sh: Extended;
  I, J, FormatIndex, Value_0, Value_1: Integer;
  Samples8_1: array[0..0] of Byte absolute Data;
  Samples8_2: array[0..0, 0..1] of Byte absolute Data;
  Samples16_1: array[0..0] of SmallInt absolute Data;
  Samples16_2: array[0..0, 0..1] of SmallInt absolute Data;
  Samples24_1: array[0..0] of Int24 absolute Data;
  Samples24_2: array[0..0, 0..1] of Int24 absolute Data;
  Samples32_1: array[0..0] of LongInt absolute Data;
  Samples32_2: array[0..0, 0..1] of LongInt absolute Data;

  procedure ClaculateNewParams;
  var
    HalfPhaseDif: Extended;
  begin
    with PCMFormat do
    begin
      if Accept[sgsPhaseDifference] then
        HalfPhaseDif := FPhaseDifference / 2
      else
        HalfPhaseDif := 0;
      NewAmp_0 := LevelToPCMAmp(FLevel_0, BitDepth);
      NewAmp_1 := LevelToPCMAmp(FLevel_1, BitDepth);
      New_Alpha := FreqToAlpha(FFrequency, SamplingRate);
      NewPhi0_0 := FPhaseOffset - HalfPhaseDif;
      NewPhi0_1 := FPhaseOffset + HalfPhaseDif;
    end;
  end;

  procedure CalculateFitShifts(Count: Integer);
  begin
    with FWaveState do
    begin
      Amp_0_Sh := (NewAmp_0 - Amp_0) / Count;
      Amp_1_Sh := (NewAmp_1 - Amp_1) / Count;
      Alpha_Sh := (New_Alpha - Alpha) / Count;
      Phi0_0_Sh := (NewPhi0_0 - Phi0_0) / Count;
      Phi0_1_Sh := (NewPhi0_1 - Phi0_1) / Count;
    end;
  end;

begin                              
  with FWaveState, PCMFormat do
  begin
    NewAmp_0 := 0;
    NewAmp_1 := 0;
    New_Alpha := Alpha;
    NewPhi0_0 := Phi0_0;
    NewPhi0_1 := Phi0_1;
    J := SampleCount;
    if not FFading then
      if @FWorkFuncProc = @FFunction then
        ClaculateNewParams
      else
        J := SampleCount div 2;
    CalculateFitShifts(J);
    FormatIndex := BitDepth div 4 + ChannelCount - 3;
    for I := 0 to SampleCount - 1 do
    begin
      if I = J then
      begin
        FFunction := FWorkFuncProc;
        ClaculateNewParams;
        CalculateFitShifts(SampleCount - J);
      end;
      if Assigned(FFunction) then
      begin
        Channel := 0;
        Value_0 := Round(Amp_0 * FFunction(Phase + Phi0_0));
        if ChannelCount > 1 then
        begin
          Channel := 1;
          Value_1 := Round(Amp_1 * FFunction(Phase + Phi0_1));
        end;
      end
      else
      begin
        Value_0 := 0;
        Value_1 := 0;
      end;
      case FormatIndex of
        0: Samples8_1[I] := 128 + Value_0;
        1:
          begin
            Samples8_2[I, 0] := 128 + Value_0;
            Samples8_2[I, 1] := 128 + Value_1;
          end;
        2: Samples16_1[I] := Value_0;
        3:
          begin
            Samples16_2[I, 0] := Value_0;
            Samples16_2[I, 1] := Value_1;
          end;
        4: Samples24_1[I] := PInt24(@Value_0)^;
        5:
          begin
            Samples24_2[I, 0] := PInt24(@Value_0)^;
            Samples24_2[I, 1] := PInt24(@Value_1)^;
          end;
        6: Samples32_1[I] := Value_0;
        7:
          begin
            Samples32_2[I, 0] := Value_0;
            Samples32_2[I, 1] := Value_1;
          end;
      end;
      Phase := Phase + Alpha;
      if Phase > _2Pi then
        Phase := Phase - _2Pi;
      Amp_0 := Amp_0 + Amp_0_Sh;
      Amp_1 := Amp_1 + Amp_1_Sh;
      Alpha := Alpha + Alpha_Sh;
      Phi0_0 := Phi0_0 + Phi0_0_Sh;
      Phi0_1 := Phi0_1 + Phi0_1_Sh;
    end;
  end;
end;

procedure TSineGen.RestoreWaveState(const Source);
begin
  FWaveState := TSGWaveState(Source);
end;

procedure TSineGen.SaveWaveState(var Dest);
begin
  TSGWaveState(Dest) := FWaveState;
end;

procedure TSineGen.SetActive(const Value: Boolean);
begin
  if Value <> Active then
  begin
    if Value then
    begin
      SetFrequency(Min(FFrequency, MaxAvailFreq));
      if not Stereo and (FLevel_0 <> FLevel_1) then
        SetLevel(RoundTo(GetLevel, -2));
      FillChar(FWaveState, SizeOf(TSGWaveState), 0);
      FWaveState.Alpha := FreqToAlpha(FFrequency, PCMFormat.SamplingRate);
      FFading := False;
    end
    else
      if FFade then
      begin
        FFading := True;
        UpdateStream;
        Sleep(Round(Latency * 3e3));
      end;
    FPhaseOffset := 0;
    inherited Active := Value;
    SettingsChange([sgsActive]);
  end;
end;

procedure TSineGen.SetCaptureFile(const Value: string);
begin
  inherited CaptureFile := Value;
  SettingsChange([sgsOutputFile]);
end;

procedure TSineGen.SetDeviceID(const Value: Cardinal);
begin
  inherited DeviceID := Value;
  SettingsChange([sgsDevice]);
end;

procedure TSineGen.SetFade(const Value: Boolean);
begin
  if Value <> FFade then
  begin
    FFade := Value;
    SettingsChange([sgsFading]);
  end;
end;

procedure TSineGen.SetFrequency(const Value: Real);
var
  NewFreq: Real; 
begin
  if Active then
    NewFreq := EnsureRange(Value, SGFrequencyRange.Min, MaxAvailFreq)
  else
    NewFreq := EnsureRange(Value, SGFrequencyRange);
  if Accept[sgsFrequency] and (NewFreq <> FFrequency) then
  begin
    FFrequency := NewFreq;
    UpdateStream;
    SettingsChange([sgsFrequency]);
  end;
end;

procedure TSineGen.SetLatency(const Value: Real);
begin
  inherited Latency := Value;
  SettingsChange([sgsLatency]);
end;

procedure TSineGen.SetLevel(const Value: Real);
var
  NewLevel: Real;
begin
  NewLevel := EnsureRange(Value, SGLevelRange);
  if (NewLevel <> FLevel_0) or (NewLevel <> FLevel_1) then
  begin
    FLevel_0 := NewLevel;
    FLevel_1 := NewLevel;
    UpdateStream;
    SettingsChange([sgsLevel, sgsLevel_0, sgsLevel_1]);
  end;
end;

procedure TSineGen.SetLevel_0(const Value: Real);
var
  NewLevel: Real;
begin
  NewLevel := EnsureRange(Value, SGLevelRange);
  if NewLevel <> FLevel_0 then
    if Accept[sgsLevel_0] then
    begin
      FLevel_0 := NewLevel;
      UpdateStream;
      SettingsChange([sgsLevel, sgsLevel_0]);
    end
    else
      SetLevel(NewLevel);
end;

procedure TSineGen.SetLevel_1(const Value: Real);
var
  NewLevel: Real;
begin
  NewLevel := EnsureRange(Value, SGLevelRange);
  if NewLevel <> FLevel_1 then
    if Accept[sgsLevel_1] then
    begin
      FLevel_1 := NewLevel;
      UpdateStream;
      SettingsChange([sgsLevel, sgsLevel_1]);
    end
    else
      SetLevel(NewLevel);
end;

procedure TSineGen.SetPCMFormat(const Value: TPCMFormat);
begin
  Push(MaxPCMChannels);
  try
    MaxPCMChannels := SGMaxCheannels;
    inherited PCMFormat := Value;
  finally
    MaxPCMChannels := Pop;
  end;
  SettingsChange([sgsPCMFormat]);
end;

procedure TSineGen.SetPhaseDifference(const Value: Real);
var
  NewPhaseDif: Real;
begin
  NewPhaseDif := EnsureRange(Value, -Pi, Pi);
  if NewPhaseDif <> FPhaseDifference then
  begin
    FPhaseDifference := NewPhaseDif;
    if Stereo then
      UpdateStream;
    SettingsChange([sgsPhaseDifference]);
  end;
end;

procedure TSineGen.SetPhaseOffset(const Value: Real);
begin
  if Accept[sgsPhaseOffset] and (Value <> FPhaseOffset) then
  begin
    FPhaseOffset := Value;
    UpdateStream;
    SettingsChange([sgsPhaseOffset]);
  end;
end;

procedure TSineGen.SetPrebuffer(const Value: Real);
begin
  inherited Prebuffer := Value;
  SettingsChange([sgsPrebuffer]);
end;

procedure TSineGen.SettingsChange(Settings: TSGSettings);
begin
  if Assigned(FOnSettingsChange) then
    FOnSettingsChange(Self, Settings);
end;

procedure TSineGen.SetWorkFunc(const Value: TSGWorkFunc);
begin
  if (Value >= sgfNone) and (Value <= sgfLast) and (Value <> FWorkFunc) then
    DoSetWorkFunc(Value, SGWorkFuncs[Value].Proc);
end;

procedure TSineGen.SetWorkFuncProc(const Value: TFunction);
begin
  DoSetWorkFunc(sgfCustom, Value);
end;

function TSineGen.WaveStateDataSize: Integer;
begin
  Result := SizeOf(TSGWaveState);
end;

end.
