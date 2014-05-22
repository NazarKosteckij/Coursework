object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  BorderWidth = 2
  Caption = 'Form1'
  ClientHeight = 429
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 305
    Height = 379
    Align = alLeft
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
    ExplicitLeft = 9
    ExplicitTop = -1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 410
    Width = 780
    Height = 19
    Panels = <
      item
        Width = 100
      end>
    ExplicitTop = 346
    ExplicitWidth = 774
  end
  object SpeedBarBottom: TPanel
    Left = 0
    Top = 385
    Width = 780
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 335
    ExplicitWidth = 774
    object Button1: TButton
      Left = 7
      Top = 2
      Width = 117
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1044#1086#1076#1072#1090#1080' (Ctrl+A)'
      TabOrder = 0
      OnClick = btAddClick
    end
    object btModify: TButton
      Left = 130
      Top = 4
      Width = 131
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' (Ctrl+M)'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 267
      Top = 2
      Width = 137
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' (Ctrl+Del)'
      TabOrder = 2
      OnClick = btClearClick
    end
    object btDelete: TButton
      Left = 408
      Top = 2
      Width = 155
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1059#1076#1072#1083#1080#1090#1100' (Shift+Del)'
      TabOrder = 3
    end
    object btExit: TButton
      Left = 650
      Top = 2
      Width = 118
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1047#1072#1082#1088#1099#1090#1100' (Alt+F4)'
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 326
    Top = 0
    Width = 454
    Height = 385
    Align = alRight
    BorderWidth = 5
    Locked = True
    TabOrder = 3
    ExplicitLeft = 318
    ExplicitTop = -3
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 160
      Height = 373
      Align = alLeft
      BorderWidth = 2
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 40
      ExplicitHeight = 344
      object edCount: TEdit
        Left = 8
        Top = 20
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Count'
      end
      object edName: TEdit
        Left = 8
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Name'
      end
      object edPrice: TEdit
        Left = 8
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'Price'
      end
    end
    object Panel3: TPanel
      Left = 172
      Top = 6
      Width = 276
      Height = 373
      Align = alRight
      Caption = 'Panel3'
      TabOrder = 1
    end
  end
  object MainMenu: TMainMenu
    Left = 12
    Top = 288
    object FileMenu: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      ShortCut = 16462
      object FileNew: TMenuItem
        Caption = '&'#1053#1086#1074#1099#1081
        ShortCut = 16462
      end
      object FileOpen: TMenuItem
        Caption = '&'#1054#1090#1082#1088#1099#1090#1100'...'
        ShortCut = 16463
        OnClick = FileOpenClick
      end
      object FileSave: TMenuItem
        Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = FileSaveClick
      end
      object FileSaveAs: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' &'#1050#1072#1082'...'
        OnClick = FileSaveAsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExit: TMenuItem
        Caption = '&'#1047#1072#1082#1088#1099#1090#1100
        ShortCut = 32883
      end
    end
    object BaseMenu: TMenuItem
      Caption = '&'#1041#1072#1079#1072
      object Add1: TMenuItem
        Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
        ShortCut = 16449
        OnClick = btAddClick
      end
      object Modify1: TMenuItem
        Caption = '&'#1048#1079#1084#1077#1085#1080#1090#1100
        ShortCut = 16461
      end
      object ClearFields1: TMenuItem
        Caption = '&'#1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
        ShortCut = 16430
        OnClick = btClearClick
      end
      object Delete1: TMenuItem
        Caption = '&'#1059#1076#1072#1083#1080#1090#1100
        ShortCut = 8238
      end
      object Find1: TMenuItem
        Caption = '&'#1053#1072#1081#1090#1080'...'
        ShortCut = 16454
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SortAdr: TMenuItem
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
      end
    end
    object HelpMenu: TMenuItem
      Caption = '&'#1055#1086#1084#1086#1097#1100
      object HelpAbout: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ShortCut = 112
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Adress Book (*.adb)|*.adb|Text|*.txt|All|*.*'
    Left = 48
    Top = 288
  end
  object SaveDialog: TSaveDialog
    Filter = 'Adress Book (*.adb)|*.adb|Text|*.txt|All|*.*'
    Left = 80
    Top = 288
  end
end
