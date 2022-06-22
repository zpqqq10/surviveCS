object fmFunction: TfmFunction
  Left = 312
  Top = 100
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsToolWindow
  BorderWidth = 3
  Caption = 'Work function'
  ClientHeight = 21
  ClientWidth = 110
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
  object comboWorkFunction: TComboBox
    Left = 0
    Top = 0
    Width = 110
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnSelect = comboWorkFunctionSelect
  end
end
