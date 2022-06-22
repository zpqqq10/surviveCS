object fmAbout: TfmAbout
  Left = 528
  Top = 125
  BorderStyle = bsDialog
  Caption = 'About SineGen'
  ClientHeight = 135
  ClientWidth = 182
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 100
  TextHeight = 13
  object Label21: TLabel
    Left = 30
    Top = 81
    Width = 137
    Height = 17
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    Caption = 'http://e-cat.nm.ru/sinegen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = AddressClick
  end
  object Label23: TLabel
    Left = 45
    Top = 42
    Width = 122
    Height = 17
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    Caption = 'madsome@gmail.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = AddressClick
  end
  object Label1: TLabel
    Left = 47
    Top = 6
    Width = 53
    Height = 13
    Caption = 'Version 2.5'
  end
  object Label2: TLabel
    Left = 10
    Top = 25
    Width = 120
    Height = 13
    Caption = 'Reports and suggestions:'
  end
  object Label3: TLabel
    Left = 11
    Top = 63
    Width = 60
    Height = 13
    Caption = 'Last version:'
  end
  object Button1: TButton
    Left = 48
    Top = 104
    Width = 108
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
end
