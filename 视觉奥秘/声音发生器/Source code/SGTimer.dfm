object fmTimer: TfmTimer
  Left = 627
  Top = 166
  BorderIcons = []
  BorderStyle = bsToolWindow
  BorderWidth = 3
  Caption = 'Timer'
  ClientHeight = 83
  ClientWidth = 212
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  ScreenSnap = True
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 100
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 40
    Width = 212
    Height = 3
    Align = alTop
    Shape = bsSpacer
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 212
    Height = 40
    Align = alTop
    Caption = 'On'
    TabOrder = 0
    object cbOnTimer: TCheckBox
      Tag = 1
      Left = 2
      Top = 17
      Width = 17
      Height = 17
      TabOrder = 0
      OnClick = TimerSettingChange
    end
    object cbOnDate: TCheckBox
      Tag = 1
      Left = 101
      Top = 17
      Width = 25
      Height = 17
      TabOrder = 2
      OnClick = TimerSettingChange
    end
    object dtpOnDate: TDateTimePicker
      Tag = 1
      Left = 115
      Top = 15
      Width = 93
      Height = 21
      Date = 39090.000000000000000000
      Time = 39090.000000000000000000
      Enabled = False
      TabOrder = 3
      OnChange = TimerSettingChange
    end
    object dtpOnTime: TDateTimePicker
      Tag = 1
      Left = 18
      Top = 15
      Width = 80
      Height = 21
      Date = 36892.000000000000000000
      Time = 36892.000000000000000000
      Kind = dtkTime
      TabOrder = 1
      OnChange = TimerSettingChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 43
    Width = 212
    Height = 40
    Align = alTop
    Caption = 'Duration'
    TabOrder = 1
    object Label1: TLabel
      Left = 158
      Top = 19
      Width = 22
      Height = 13
      Caption = 'days'
    end
    object cbOffTimer: TCheckBox
      Left = 2
      Top = 17
      Width = 17
      Height = 17
      TabOrder = 0
      OnClick = TimerSettingChange
    end
    object dtpDuration: TDateTimePicker
      Left = 18
      Top = 15
      Width = 80
      Height = 21
      Date = 36892.000057870370000000
      Format = 'HH:mm:ss'
      Time = 36892.000057870370000000
      Kind = dtkTime
      TabOrder = 1
      OnChange = TimerSettingChange
    end
    object editDurationDays: TEdit
      Left = 101
      Top = 15
      Width = 37
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = TimerSettingChange
    end
    object udDurationDays: TUpDown
      Left = 138
      Top = 15
      Width = 17
      Height = 21
      Associate = editDurationDays
      TabOrder = 3
    end
  end
  object timerOnOff: TTimer
    Tag = 1
    Enabled = False
    Interval = 100
    OnTimer = timerOnOffTimer
    Left = 134
    Top = 65519
  end
end
