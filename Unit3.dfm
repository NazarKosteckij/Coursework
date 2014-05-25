object AboutBox: TAboutBox
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'AboutBox'
  ClientHeight = 149
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 157
    Height = 13
    Caption = #1055#1088#1086#1075#1088#1072#1084#1072' '#1050#1086#1089#1090#1077#1094#1100#1082#1086#1075#1086' '#1053#1072#1079#1072#1088#1110#1103
  end
  object Button1: TButton
    Left = 96
    Top = 96
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 0
    OnClick = Button1Click
  end
end
