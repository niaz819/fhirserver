object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 295
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 619
    ExplicitHeight = 273
  end
  object Panel2: TPanel
    Left = 0
    Top = 295
    Width = 635
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 304
    ExplicitTop = 312
    ExplicitWidth = 185
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Mark'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Data'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
