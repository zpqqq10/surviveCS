object fmFrequency: TfmFrequency
  Left = 285
  Top = 108
  Width = 129
  Height = 213
  BorderIcons = []
  BorderWidth = 3
  Caption = 'Frequency (Hz)'
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
  object Label10: TLabel
    Tag = 1
    Left = 30
    Top = 140
    Width = 12
    Height = 13
    Align = alCustom
    Caption = '20'
    Transparent = True
  end
  object Label9: TLabel
    Tag = 4
    Left = 30
    Top = 127
    Width = 12
    Height = 13
    Align = alCustom
    Caption = '50'
    Transparent = True
  end
  object Label8: TLabel
    Tag = 9
    Left = 30
    Top = 114
    Width = 18
    Height = 13
    Align = alCustom
    Caption = '100'
    Transparent = True
  end
  object Label7: TLabel
    Tag = 10
    Left = 30
    Top = 101
    Width = 18
    Height = 13
    Align = alCustom
    Caption = '200'
    Transparent = True
  end
  object Label6: TLabel
    Tag = 13
    Left = 30
    Top = 88
    Width = 18
    Height = 13
    Align = alCustom
    Caption = '500'
    Transparent = True
  end
  object Label5: TLabel
    Tag = 18
    Left = 30
    Top = 75
    Width = 15
    Height = 13
    Align = alCustom
    Caption = '1 k'
    Transparent = True
  end
  object Label4: TLabel
    Tag = 19
    Left = 30
    Top = 62
    Width = 15
    Height = 13
    Align = alCustom
    Caption = '2 k'
    Transparent = True
  end
  object Label3: TLabel
    Tag = 22
    Left = 30
    Top = 49
    Width = 15
    Height = 13
    Align = alCustom
    Caption = '5 k'
    Transparent = True
  end
  object Label2: TLabel
    Tag = 27
    Left = 30
    Top = 36
    Width = 21
    Height = 13
    Align = alCustom
    Caption = '10 k'
    Transparent = True
  end
  object Label1: TLabel
    Tag = 28
    Left = 30
    Top = 23
    Width = 21
    Height = 13
    Align = alCustom
    Caption = '20 k'
    Transparent = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 154
    Width = 115
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnToneMatch: TButton
      Left = 92
      Top = 2
      Width = 23
      Height = 23
      Caption = '#'
      TabOrder = 2
      OnClick = btnToneMatchClick
    end
    object btnDoubleFrequency: TButton
      Left = 69
      Top = 2
      Width = 23
      Height = 23
      Caption = '* 2'
      TabOrder = 1
      OnClick = btnDoubleFrequencyClick
    end
    object btnHalfFrequency: TButton
      Left = 46
      Top = 2
      Width = 23
      Height = 23
      Caption = '/ 2'
      TabOrder = 0
      OnClick = btnHalfFrequencyClick
    end
    object panFrequencyAdjustment: TPanel
      Left = 0
      Top = 2
      Width = 45
      Height = 23
      Cursor = crSizeNS
      Hint = 'Left is harder'
      BevelOuter = bvLowered
      Caption = 'Adjust'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnMouseDown = panFrequencyAdjustmentMouseDown
      OnMouseMove = panFrequencyAdjustmentMouseMove
      OnMouseUp = panFrequencyAdjustmentMouseUp
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 115
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object editFrequency: TEdit
      Left = 0
      Top = 0
      Width = 115
      Height = 21
      MaxLength = 15
      TabOrder = 0
      OnChange = editFrequencyChange
      OnExit = editFrequencyExit
    end
  end
  object slFrequency: TTrackBar
    Left = 0
    Top = 23
    Width = 30
    Height = 131
    Align = alLeft
    LineSize = 3
    Min = -10150
    Orientation = trVertical
    PageSize = 100
    Position = -5000
    TabOrder = 1
    TickStyle = tsManual
    OnChange = slFrequencyChange
  end
  object lbTone: TListBox
    Left = 60
    Top = 23
    Width = 55
    Height = 131
    Align = alRight
    ItemHeight = 13
    TabOrder = 2
    OnClick = lbToneClick
  end
end
