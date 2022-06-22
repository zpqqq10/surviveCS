{-------------------|
| TWaveInOut v1.0.4 |
| (c) eCat          |
|-------------------}

unit WaveInOut;

interface

uses
  Windows, MMSystem, SysUtils, Classes, WaveFmt, Lite;

var
  DefPCMFormat: TPCMFormat = (
    BitDepth: 16;
    SamplingRate: 48000;
    ChannelCount: 2;
  );

const
  LatencyRange: TRange = (Min: 0.01; Max: 0.5);
  PrebufferRange: TRange = (Min: 0.1; Max: 5.0);

type
  EWaveError = class(Exception);
  
  TWaveInOut = class;
  TWaveStream = class;

  TWaveBuffer = class
  private
    FHeader: TWaveHdr;
    FNext: TWaveBuffer;
    FOwner: TWaveStream;
    FReturned: Boolean;
    procedure ProcessData;
    procedure Return;
  protected
    procedure AfterProcessData; virtual;
    procedure BeforeProcessData; virtual;
    function DataLength: Integer; virtual; abstract;
    procedure Process; virtual;
    procedure Send; virtual; abstract;
  public
    constructor Create(AOwner: TWaveStream); virtual;
    destructor Destroy; override;
    procedure SaveToStream(Stream: TStream);
    function WaveInOut: TWaveInOut;
    property Returned: Boolean read FReturned;
  end;

  TWaveBufferClass = class of TWaveBuffer;

  TWaveStream = class(TList)
  private
    FHead, FUnprocessed, FTail: TWaveBuffer;
    FTerminated: Boolean;
    FReleasedCount: Integer;
    FOwner: TWaveInOut;
    FEvent, FThread: THandle;
    FCapture: TStream;
    procedure Process;
    procedure SetTail(Value: TWaveBuffer);
  protected
    procedure Accept(Buffer: TWaveBuffer);
    function BufferClass: TWaveBufferClass; virtual; abstract;
    procedure Notify(Ptr: Pointer; Action: TListNotification); override;
    procedure Reset; virtual; abstract;
  public
    constructor Create(AOwner: TWaveInOut); virtual;
    destructor Destroy; override;
  end;

  TWaveStreamClass = class of TWaveStream;

  TWaveInOut = class
  private
    FActive: Boolean;
    FDeviceID: Cardinal;
    FPCMFormat: TPCMFormat;
    FStream: TWaveStream;
    FCaps: TWaveOutCaps;
    FPrebuffer: Real;
    FLatency: Real;
    FHandle: Integer;
    FFormat: TWaveFormatEx;
    FCaptureFile: string;
    FPaused: Boolean;
    function GetDeviceFormats: TPCMFormatMask;
    function GetDeviceName: string;
    function GetStereo: Boolean;
    procedure SetActive(const Value: Boolean);
    procedure SetCaptureFile(const Value: string);
    procedure SetDeviceID(const Value: Cardinal);
    procedure SetLatency(const Value: Real);
    procedure SetPaused(const Value: Boolean);
    procedure SetPCMFormat(const Value: TPCMFormat);
    procedure SetPrebuffer(const Value: Real);
  protected
    procedure CheckError(ErrorCode: Cardinal);
    procedure Close; virtual; abstract;
    function CreateCapture: TStream; virtual;
    procedure DoGetErrorText(ErrorCode: Cardinal; var Buffer;
      BufSize: Cardinal); virtual; abstract;
    procedure DoOpen(PFormatEx: PWaveFormatEx); virtual; abstract;
    procedure GetCaps; virtual; abstract;
    procedure Open; virtual;
    procedure Pause; virtual; abstract;
    procedure ProcessData(var Data; SampleCount: Integer); virtual; abstract;
    function StreamClass: TWaveStreamClass; virtual; abstract;
    procedure Unpause; virtual; abstract;
    property Handle: Integer read FHandle;
  public
    constructor Create;
    destructor Destroy; override;
    property Active: Boolean read FActive write SetActive;
    property CaptureFile: string read FCaptureFile write SetCaptureFile;
    property DeviceFormats: TPCMFormatMask read GetDeviceFormats;
    property DeviceID: Cardinal read FDeviceID write SetDeviceID;
    property DeviceName: string read GetDeviceName;
    property Latency: Real read FLatency write SetLatency;
    property Paused: Boolean read FPaused write SetPaused;
    property PCMFormat: TPCMFormat read FPCMFormat write SetPCMFormat;
    property Prebuffer: Real read FPrebuffer write SetPrebuffer;
    property Stereo: Boolean read GetStereo;
  end;

  TWaveCaptureClass = class of TCustomWaveFileWriter;

  TWaveOutBuffer = class(TWaveBuffer)
  private
    FWaveEndState: Pointer;
  protected
    procedure AfterProcessData; override;
    procedure BeforeProcessData; override;
    function DataLength: Integer; override;
    procedure Process; override;
    procedure Send; override;
  public
    constructor Create(AOwner: TWaveStream); override;
    destructor Destroy; override;
  end;

  TWaveOutStream = class(TWaveStream)
  private
    FNeedUpdate: Boolean;
    procedure CheckUpdate;
  protected
    function BufferClass: TWaveBufferClass; override;
    procedure Reset; override;
  end;

  TWaveOut = class(TWaveInOut)
  protected
    procedure Close; override;
    procedure DoGetErrorText(ErrorCode: Cardinal; var Buffer;
      BufSize: Cardinal); override;
    procedure DoOpen(PFormatEx: PWaveFormatEx); override;
    procedure GetCaps; override;
    procedure Pause; override;
    procedure RestoreWaveState(const Source); virtual;
    procedure SaveWaveState(var Dest); virtual;
    function StreamClass: TWaveStreamClass; override;
    procedure Unpause; override;
    function WaveStateDataSize: Integer; virtual;
  public
    procedure UpdateStream;
  end;

  TWaveInBuffer = class(TWaveBuffer)
  protected
    function DataLength: Integer; override;
    procedure Process; override;
    procedure Send; override;
  public
    constructor Create(AOwner: TWaveStream); override;
    destructor Destroy; override;
  end;

  TWaveInStream = class(TWaveStream)
  protected
    function BufferClass: TWaveBufferClass; override;
    procedure Reset; override;
  public
    constructor Create(AOwner: TWaveInOut); override;
  end;

  TWaveIn = class(TWaveInOut)
  protected
    procedure Close; override;
    procedure DoGetErrorText(ErrorCode: Cardinal; var Buffer;
      BufSize: Cardinal); override;
    procedure DoOpen(PFormatEx: PWaveFormatEx); override;
    procedure GetCaps; override;
    procedure Pause; override;
    function StreamClass: TWaveStreamClass; override;
    procedure Unpause; override;
  end;

var
  WaveCaptureClass: TWaveCaptureClass = TBasicWaveFileWriter;

implementation

uses
  Math, Lite1;

procedure waveProc(Handle: Integer; Msg: Cardinal; Instance: TWaveInOut;
  Header: PWaveHdr; UnusedParam: Cardinal); stdcall;
begin
  if (Msg = WIM_DATA) or (Msg = WOM_DONE) then
    try
      TWaveBuffer(Header^.dwUser).Return;
    except
      if Assigned(ApplicationHandleException) then
        ApplicationHandleException(Instance);
    end;
end;

function ProcessWaveStream(Instance: TWaveStream): Cardinal; stdcall;
begin
  try
    Instance.Process;
  except
    if Assigned(ApplicationHandleException) then
      ApplicationHandleException(Instance);
  end;
  Result := 0;
end;

{ TWaveBuffer }

procedure TWaveBuffer.AfterProcessData;
begin
end;

procedure TWaveBuffer.BeforeProcessData;
begin
end;

constructor TWaveBuffer.Create(AOwner: TWaveStream);
begin
  FOwner := AOwner;
  with FHeader, WaveInOut do
  begin
    dwBufferLength := Round(FLatency * FFormat.nAvgBytesPerSec);
    GetMem(lpData, dwBufferLength);
    dwUser := Cardinal(Self);
  end;
end;

destructor TWaveBuffer.Destroy;
begin
  with FHeader do
    if lpData <> nil then
      FreeMem(lpData, dwBufferLength);
  inherited;
end;

procedure TWaveBuffer.Process;
begin
  if not FOwner.FTerminated then
    Send;
end;

procedure TWaveBuffer.ProcessData;
begin
  BeforeProcessData;
  with FHeader, WaveInOut do
    ProcessData(lpData^, DataLength div FFormat.nBlockAlign);
  AfterProcessData;
end;

procedure TWaveBuffer.Return;
begin
  FReturned := True;
  FOwner.Accept(Self);
end;

procedure TWaveBuffer.SaveToStream(Stream: TStream);
begin
  if FReturned then
    Stream.WriteBuffer(FHeader.lpData^, DataLength);
end;

function TWaveBuffer.WaveInOut: TWaveInOut;
begin
  Result := FOwner.FOwner;
end;

{ TWaveStream }

procedure TWaveStream.Accept(Buffer: TWaveBuffer);
begin
  FHead := Buffer.FNext;
  Buffer.FNext := nil;
  SetTail(Buffer);
  if FUnprocessed = nil then
  begin
    FUnprocessed := Buffer;
    SetEvent(FEvent);
  end;
end;

constructor TWaveStream.Create(AOwner: TWaveInOut);
var
  I: Integer;
  ThreadID: Cardinal;
begin
  FOwner := AOwner;
  with FOwner do
    Capacity := Max(Round(FPrebuffer / FLatency), 2);
  for I := 1 to Capacity do
    Add(BufferClass.Create(Self));
  FCapture := FOwner.CreateCapture;
  FEvent := CreateEvent(nil, False, False, nil);
  FThread := CreateThread(nil, 0, @ProcessWaveStream, Self, 0, ThreadID);
  SetThreadPriority(FThread, THREAD_PRIORITY_TIME_CRITICAL);
  FUnprocessed := First;
  SetEvent(FEvent);
end;

destructor TWaveStream.Destroy;
begin
  FTerminated := True;
  Reset;
  WaitForSingleObject(FThread, INFINITE);
  CloseHandle(FThread);
  CloseHandle(FEvent);
  FCapture.Free;
  inherited Destroy;
end;

procedure TWaveStream.Notify(Ptr: Pointer; Action: TListNotification);
begin
  case Action of
    lnAdded: SetTail(Ptr);
    lnDeleted: TObject(Ptr).Free;
  end;
end;

procedure TWaveStream.Process;
begin
  while WaitForSingleObject(FEvent, INFINITE) = WAIT_OBJECT_0 do
    while FUnprocessed <> nil do
    begin
      if FCapture <> nil then
        FUnprocessed.SaveToStream(FCapture);
      FUnprocessed.Process;
      if FTerminated then
      begin
        Inc(FReleasedCount);
        if FReleasedCount = Count then
          Exit;
      end;
      FUnprocessed := FUnprocessed.FNext;
    end;
  RaiseLastOSError;
end;

procedure TWaveStream.SetTail(Value: TWaveBuffer);
begin
  if FTail <> nil then
    FTail.FNext := Value;
  FTail := Value;
end;

{ TWaveInOut }

procedure TWaveInOut.CheckError(ErrorCode: Cardinal);
var
  Buf: array[0..MAXERRORLENGTH - 1] of Char;
begin
  if ErrorCode <> MMSYSERR_NOERROR then
  begin
    DoGetErrorText(ErrorCode, Buf, SizeOf(Buf));
    raise EWaveError.Create(Buf);
  end;
end;

constructor TWaveInOut.Create;
begin
  FLatency := 0.05;
  FPrebuffer := 0.1;
  FPCMFormat := DefPCMFormat;
  SetDeviceID(WAVE_MAPPER);
end;

function TWaveInOut.CreateCapture: TStream;
begin
  Result := nil;
  if FCaptureFile <> '' then
    Result := WaveCaptureClass.Create(FCaptureFile, FPCMFormat);
end;

destructor TWaveInOut.Destroy;
begin
  SetActive(False);
  inherited;
end;

function TWaveInOut.GetDeviceFormats: TPCMFormatMask;
begin
  Result := TPCMFormatMask(FCaps.dwFormats);
end;

function TWaveInOut.GetDeviceName: string;
begin
  Result := FCaps.szPname;
end;

function TWaveInOut.GetStereo: Boolean;
begin
  Result := FPCMFormat.ChannelCount > 1;
end;

procedure TWaveInOut.Open;
var
  wfe: TWaveFormatExtensible;
begin
  SetPCMFormatInfo(wfe, FPCMFormat);
  DoOpen(@wfe.Format);
  FFormat := wfe.Format;
end;

procedure TWaveInOut.SetActive(const Value: Boolean);
begin
  if Value <> FActive then
  begin
    if Value then
    begin        
      Open;
      try
        FStream := StreamClass.Create(Self);
      except
        Close;
        raise;
      end;
    end
    else
    begin
      FStream.Free;
      Close;
      FPaused := False;
    end;
    FActive := Value;
  end;
end;

procedure TWaveInOut.SetCaptureFile(const Value: string);
begin
  if not FActive then
    FCaptureFile := Value;
end;

procedure TWaveInOut.SetDeviceID(const Value: Cardinal);
begin
  if not FActive then
  begin
    FDeviceID := Value;
    FillChar(FCaps, SizeOf(TWaveOutCaps), 0);
    GetCaps;
  end;
end;

procedure TWaveInOut.SetLatency(const Value: Real);
begin
  FLatency := EnsureRange(Value, LatencyRange);
  FPrebuffer := Max(FPrebuffer, FLatency * 2);
end;

procedure TWaveInOut.SetPaused(const Value: Boolean);
begin
  if FActive and (Value <> FPaused) then
  begin
    if Value then
      Pause
    else
      Unpause;
    FPaused := Value;
  end;
end;

procedure TWaveInOut.SetPCMFormat(const Value: TPCMFormat);
begin
  if not FActive then
    FPCMFormat := ValidPCMFormat(Value);
end;

procedure TWaveInOut.SetPrebuffer(const Value: Real);
begin
  FPrebuffer := Max(EnsureRange(Value, PrebufferRange), FLatency * 2);
end;

{ TWaveOutBuffer }

procedure TWaveOutBuffer.AfterProcessData;
begin
  TWaveOut(WaveInOut).SaveWaveState(FWaveEndState^);
end;

procedure TWaveOutBuffer.BeforeProcessData;
begin
  TWaveOutStream(FOwner).CheckUpdate;
end;

constructor TWaveOutBuffer.Create(AOwner: TWaveStream);
begin
  inherited Create(AOwner);
  WaveInOut.CheckError(waveOutPrepareHeader(WaveInOut.FHandle, @FHeader,
    SizeOf(TWaveHdr)));
  GetMem(FWaveEndState, TWaveOut(WaveInOut).WaveStateDataSize);
end;

function TWaveOutBuffer.DataLength: Integer;
begin
  Result := FHeader.dwBufferLength - FHeader.dwBufferLength mod
    WaveInOut.FFormat.nBlockAlign;
end;

destructor TWaveOutBuffer.Destroy;
begin
  if FWaveEndState <> nil then
    FreeMem(FWaveEndState);
  waveOutUnprepareHeader(WaveInOut.FHandle, @FHeader, SizeOf(TWaveHdr));
  inherited Destroy;
end;

procedure TWaveOutBuffer.Process;
begin
  if not FOwner.FTerminated then
    ProcessData;
  inherited Process;
end;

procedure TWaveOutBuffer.Send;
begin
  waveOutWrite(WaveInOut.FHandle, @FHeader, SizeOf(TWaveHdr));
end;

{ TWaveOutStream }

function TWaveOutStream.BufferClass: TWaveBufferClass;
begin
  Result := TWaveOutBuffer;
end;

procedure TWaveOutStream.CheckUpdate;
var
  Buf: TWaveBuffer;
begin
  if FNeedUpdate then
  begin
    FNeedUpdate := False;
    Buf := FHead;
    if Buf <> nil then
    begin
      TWaveOut(FOwner).RestoreWaveState(TWaveOutBuffer(Buf).FWaveEndState^);
      while True do
      begin
        Buf := Buf.FNext;
        if Buf = FUnprocessed then
          Break;
        Buf.ProcessData;
      end;
    end;
  end;
end;

procedure TWaveOutStream.Reset;
begin
  waveOutReset(FOwner.FHandle);
end;

{ TWaveOut }

procedure TWaveOut.Close;
begin
  waveOutClose(FHandle);
end;

procedure TWaveOut.DoGetErrorText(ErrorCode: Cardinal; var Buffer;
  BufSize: Cardinal);
begin
  waveOutGetErrorText(ErrorCode, @Buffer, BufSize);
end;

procedure TWaveOut.DoOpen(PFormatEx: PWaveFormatEx);
begin
  CheckError(waveOutOpen(@FHandle, FDeviceID, PFormatEx, Cardinal(@waveProc),
    Cardinal(Self), WAVE_FORMAT_DIRECT * Ord(Win32MajorVersion > 4) or
    CALLBACK_FUNCTION));
end;

procedure TWaveOut.GetCaps;
begin
  waveOutGetDevCaps(FDeviceID, @FCaps, SizeOf(TWaveOutCaps));
end;

procedure TWaveOut.Pause;
begin
  waveOutPause(FHandle);
end;

procedure TWaveOut.RestoreWaveState(const Source);
begin
end;

procedure TWaveOut.SaveWaveState(var Dest);
begin
end;

function TWaveOut.StreamClass: TWaveStreamClass;
begin
  Result := TWaveOutStream;
end;

procedure TWaveOut.Unpause;
begin
  waveOutRestart(FHandle);
end;

procedure TWaveOut.UpdateStream;
begin
  if FActive then
    TWaveOutStream(FStream).FNeedUpdate := True;
end;

function TWaveOut.WaveStateDataSize: Integer;
begin
  Result := 0;
end;

{ TWaveInBuffer }

constructor TWaveInBuffer.Create(AOwner: TWaveStream);
begin
  inherited Create(AOwner);
  WaveInOut.CheckError(waveInPrepareHeader(WaveInOut.FHandle, @FHeader,
    SizeOf(TWaveHdr)));
end;

function TWaveInBuffer.DataLength: Integer;
begin
  Result := FHeader.dwBytesRecorded;
end;

destructor TWaveInBuffer.Destroy;
begin
  waveOutUnprepareHeader(WaveInOut.FHandle, @FHeader, SizeOf(TWaveHdr));
  inherited Destroy;
end;

procedure TWaveInBuffer.Process;
begin
  if FReturned and (DataLength <> 0) then
    ProcessData;
  inherited Process;
end;

procedure TWaveInBuffer.Send;
begin
  waveInAddBuffer(WaveInOut.FHandle, @FHeader, SizeOf(TWaveHdr));
end;

{ TWaveInStream }

function TWaveInStream.BufferClass: TWaveBufferClass;
begin
  Result := TWaveInBuffer;
end;

constructor TWaveInStream.Create(AOwner: TWaveInOut);
begin
  inherited Create(AOwner);
  waveInStart(FOwner.FHandle);
end;

procedure TWaveInStream.Reset;
begin
  waveInReset(FOwner.FHandle);
end;

{ TWaveIn }

procedure TWaveIn.Close;
begin
  waveInClose(FHandle);
end;

procedure TWaveIn.DoGetErrorText(ErrorCode: Cardinal; var Buffer;
  BufSize: Cardinal);
begin
  waveInGetErrorText(ErrorCode, @Buffer, BufSize);
end;

procedure TWaveIn.DoOpen(PFormatEx: PWaveFormatEx);
begin
  CheckError(waveInOpen(@FHandle, FDeviceID, PFormatEx, Cardinal(@waveProc),
    Cardinal(Self), WAVE_FORMAT_DIRECT * Ord(Win32MajorVersion > 4) or
    CALLBACK_FUNCTION));
end;

procedure TWaveIn.GetCaps;
begin
  waveInGetDevCaps(FDeviceID, @FCaps, SizeOf(TWaveInCaps));
end;

procedure TWaveIn.Pause;
begin
  waveInStop(FHandle);
end;

function TWaveIn.StreamClass: TWaveStreamClass;
begin
  Result := TWaveInStream;
end;

procedure TWaveIn.Unpause;
begin
  waveInStart(FHandle);
end;

end.
