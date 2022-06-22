object fmOutput: TfmOutput
  Left = 527
  Top = 128
  Width = 185
  Height = 143
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  BorderWidth = 3
  Caption = 'Output'
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
  object Bevel1: TBevel
    Left = 0
    Top = 40
    Width = 171
    Height = 3
    Align = alTop
    Shape = bsSpacer
  end
  object btnOutputSetup: TButton
    Left = 0
    Top = 86
    Width = 75
    Height = 23
    Caption = '&Setup...'
    TabOrder = 2
    OnClick = btnOutputSetupClick
  end
  object gbOutputFile: TGroupBox
    Left = 0
    Top = 43
    Width = 171
    Height = 40
    Align = alTop
    Caption = 'File'
    TabOrder = 1
    object editOutputFile: TEdit
      Left = 2
      Top = 15
      Width = 117
      Height = 21
      TabOrder = 0
      OnChange = editOutputFileChange
    end
    object btnBrowseOutputFile: TButton
      Left = 122
      Top = 17
      Width = 23
      Height = 19
      Caption = '...'
      TabOrder = 1
      OnClick = btnBrowseOutputFileClick
    end
  end
  object gbDevice: TGroupBox
    Left = 0
    Top = 0
    Width = 171
    Height = 40
    Align = alTop
    Caption = 'Device'
    TabOrder = 0
    object comboDevice: TComboBox
      Left = 2
      Top = 15
      Width = 161
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnSelect = comboDeviceSelect
    end
  end
  object dlgOutputFileName: TSaveDialog
    DefaultExt = 'wav'
    Filter = 'Wave files (*.wav)|*.wav'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Output file'
    Left = 33
    Top = 45
  end
end
