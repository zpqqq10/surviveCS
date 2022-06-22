object fmPhase: TfmPhase
  Left = 899
  Top = 99
  Width = 141
  Height = 141
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  BorderWidth = 3
  Caption = 'Phase'
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  ScreenSnap = True
  Visible = True
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 100
  TextHeight = 13
  object spTopBottom: TBevel
    Left = 0
    Top = 61
    Width = 127
    Height = 3
    Align = alTop
    Shape = bsSpacer
  end
  object gbPhaseOffset: TGroupBox
    Left = 0
    Top = 64
    Width = 127
    Height = 43
    Align = alClient
    Caption = 'Offset'
    TabOrder = 1
    object paintPhaseOffset: TPaintBox
      Left = 2
      Top = 15
      Width = 123
      Height = 26
      Cursor = crSizeWE
      Align = alClient
      OnMouseDown = paintPhaseOffsetMouseDown
      OnMouseMove = paintPhaseOffsetMouseMove
      OnMouseUp = paintPhaseOffsetMouseUp
      OnPaint = paintPhaseOffsetPaint
    end
  end
  object gbPhaseDifference: TGroupBox
    Left = 0
    Top = 0
    Width = 127
    Height = 61
    Align = alTop
    Caption = 'Difference'
    TabOrder = 0
    object Label1: TLabel
      Tag = 180
      Left = 39
      Top = 46
      Width = 15
      Height = 13
      Caption = '-90'
    end
    object labelZero: TLabel
      Tag = 360
      Left = 66
      Top = 46
      Width = 6
      Height = 13
      Cursor = crHandPoint
      Caption = '0'
      OnMouseDown = labelZeroMouseDown
    end
    object Label2: TLabel
      Tag = 540
      Left = 84
      Top = 46
      Width = 12
      Height = 13
      Caption = '90'
    end
    object slPhaseDifference: TTrackBar
      Left = 2
      Top = 15
      Width = 123
      Height = 30
      Align = alTop
      Max = 360
      Min = -360
      PageSize = 30
      Frequency = 60
      TabOrder = 0
      OnChange = slPhaseDifferenceChange
    end
  end
end
