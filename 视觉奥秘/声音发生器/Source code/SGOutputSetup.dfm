object fmOutputSetup: TfmOutputSetup
  Left = 541
  Top = 504
  BorderStyle = bsDialog
  BorderWidth = 3
  Caption = 'Output setup'
  ClientHeight = 191
  ClientWidth = 204
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShortCut = FormShortCut
  PixelsPerInch = 100
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 96
    Width = 204
    Height = 3
    Align = alTop
    Shape = bsSpacer
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 204
    Height = 96
    Align = alTop
    Caption = 'Flow'
    TabOrder = 0
    object Bevel2: TBevel
      Left = 2
      Top = 52
      Width = 200
      Height = 3
      Align = alTop
      Shape = bsSpacer
    end
    object gbLatency: TGroupBox
      Left = 2
      Top = 15
      Width = 200
      Height = 37
      Align = alTop
      Caption = 'Latency'
      TabOrder = 0
      object slLatency: TTrackBar
        Left = 2
        Top = 15
        Width = 196
        Height = 20
        Hint = 'Increase if you listen clicks; decrase if control is too slow'
        Align = alClient
        Max = 200
        Min = 25
        PageSize = 25
        Position = 25
        TabOrder = 0
        ThumbLength = 16
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = slLatencyChange
      end
    end
    object gbPrebuffer: TGroupBox
      Left = 2
      Top = 55
      Width = 200
      Height = 37
      Align = alTop
      Caption = 'Prebuffer'
      TabOrder = 1
      object slPrebuffer: TTrackBar
        Left = 2
        Top = 15
        Width = 196
        Height = 20
        Align = alClient
        Max = 1000
        Min = 100
        PageSize = 100
        Position = 100
        TabOrder = 0
        ThumbLength = 16
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = slPrebufferChange
      end
    end
  end
  object btnDefaults: TButton
    Left = 0
    Top = 142
    Width = 75
    Height = 23
    Caption = 'Defaults'
    TabOrder = 2
    OnClick = btnDefaultsClick
  end
  object btnOK: TButton
    Left = 51
    Top = 168
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 129
    Top = 168
    Width = 75
    Height = 23
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
    OnClick = btnDefaultsClick
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 99
    Width = 204
    Height = 40
    Align = alTop
    Caption = 'Formats'
    TabOrder = 1
    object editFormats: TEdit
      Left = 2
      Top = 15
      Width = 200
      Height = 21
      Hint = 'bits/kHz [m]; ...'
      MaxLength = 80
      TabOrder = 0
    end
  end
end
