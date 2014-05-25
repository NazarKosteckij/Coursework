object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 2
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1080#1093
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 774
    Height = 398
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = -6
    ExplicitWidth = 780
    ExplicitHeight = 410
    object TabSheet1: TTabSheet
      Caption = #1043#1086#1083#1086#1074#1085#1072
      ExplicitLeft = 204
      ExplicitTop = 248
      ExplicitWidth = 772
      ExplicitHeight = 382
      object Panel1: TPanel
        Left = 372
        Top = 0
        Width = 394
        Height = 343
        Align = alClient
        BorderWidth = 5
        Locked = True
        TabOrder = 0
        ExplicitLeft = 319
        ExplicitTop = -3
        ExplicitWidth = 450
        object GroupBox1: TGroupBox
          Left = 197
          Top = 6
          Width = 191
          Height = 331
          Align = alClient
          Caption = #1044#1086#1076#1072#1074#1072#1085#1085#1103' '#1085#1086#1074#1086#1075#1086' '#1077#1083#1077#1084#1077#1085#1090#1091
          TabOrder = 0
          ExplicitLeft = 7
          ExplicitTop = 7
          ExplicitWidth = 247
          object Label1: TLabel
            Left = 19
            Top = 16
            Width = 46
            Height = 13
            BiDiMode = bdRightToLeft
            Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100
            ParentBiDiMode = False
          end
          object Label2: TLabel
            Left = 19
            Top = 62
            Width = 54
            Height = 13
            BiDiMode = bdRightToLeft
            Caption = #1030#1084#39#1103' '#1076#1077#1090#1072#1083#1110
            ParentBiDiMode = False
          end
          object Label4: TLabel
            Left = 19
            Top = 108
            Width = 22
            Height = 13
            Align = alCustom
            BiDiMode = bdRightToLeft
            Caption = #1062#1110#1085#1072
            ParentBiDiMode = False
          end
          object Label3: TLabel
            Left = 19
            Top = 200
            Width = 56
            Height = 13
            BiDiMode = bdRightToLeft
            Caption = #1055#1088#1086#1076#1072#1074#1077#1094#1100
            ParentBiDiMode = False
          end
          object Label5: TLabel
            Left = 20
            Top = 154
            Width = 26
            Height = 13
            BiDiMode = bdRightToLeft
            Caption = #1044#1072#1090#1072
            ParentBiDiMode = False
          end
          object edName: TEdit
            Left = 19
            Top = 81
            Width = 118
            Height = 21
            TabOrder = 0
            Text = 'Name'
          end
          object edPrice: TEdit
            Left = 19
            Top = 127
            Width = 118
            Height = 21
            TabOrder = 1
            Text = '0'
          end
          object cbSeller: TComboBox
            Left = 19
            Top = 219
            Width = 118
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'Seller'
          end
          object CheckBox1: TCheckBox
            Left = 19
            Top = 246
            Width = 121
            Height = 17
            Caption = #1053#1086#1074#1080#1081' '#1087#1088#1086#1076#1072#1074#1077#1094#1100
            TabOrder = 3
            OnClick = CheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 19
            Top = 173
            Width = 118
            Height = 21
            Date = 41782.028075474540000000
            Time = 41782.028075474540000000
            TabOrder = 4
          end
          object edCount: TSpinEdit
            AlignWithMargins = True
            Left = 20
            Top = 34
            Width = 117
            Height = 22
            MaxValue = 20000
            MinValue = 1
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
            Value = 0
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 9
          Top = 9
          Width = 185
          Height = 325
          Align = alLeft
          Caption = #1055#1086#1096#1091#1082
          TabOrder = 1
          Visible = False
          ExplicitLeft = 6
          ExplicitTop = 13
          object Label6: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 64
            Width = 175
            Height = 13
            Align = alTop
            Alignment = taRightJustify
            BiDiMode = bdRightToLeft
            Caption = #1044#1072#1090#1072
            ParentBiDiMode = False
            ExplicitLeft = 7
            ExplicitTop = 35
          end
          object Label12: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 175
            Height = 13
            Align = alTop
            Caption = #1030#1084#39#1103
            ExplicitLeft = -166
            ExplicitTop = 21
            ExplicitWidth = 181
          end
          object Button3: TButton
            AlignWithMargins = True
            Left = 5
            Top = 186
            Width = 175
            Height = 25
            Align = alTop
            Caption = #1055#1086#1096#1091#1082
            TabOrder = 0
            OnClick = Button3Click
            ExplicitLeft = 7
          end
          object DateTimePicker2: TDateTimePicker
            AlignWithMargins = True
            Left = 5
            Top = 83
            Width = 175
            Height = 21
            Align = alTop
            Date = 41784.080405486110000000
            Time = 41784.080405486110000000
            TabOrder = 1
            ExplicitLeft = 7
            ExplicitTop = 39
          end
          object RadioGroup1: TRadioGroup
            AlignWithMargins = True
            Left = 5
            Top = 110
            Width = 175
            Height = 70
            Align = alTop
            Caption = #1064#1091#1082#1072#1090#1080' '#1079#1072':'
            ItemIndex = 0
            Items.Strings = (
              #1030#1084#1077#1085#1077#1084
              #1044#1072#1090#1086#1102)
            TabOrder = 2
            ExplicitLeft = 7
            ExplicitTop = 83
          end
          object LabeledEdit1: TEdit
            AlignWithMargins = True
            Left = 5
            Top = 37
            Width = 175
            Height = 21
            Align = alTop
            TabOrder = 3
            ExplicitLeft = 3
            ExplicitTop = 31
            ExplicitWidth = 181
          end
        end
      end
      object SpeedBarBottom: TPanel
        Left = 0
        Top = 343
        Width = 766
        Height = 27
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 342
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
          Left = 128
          Top = 2
          Width = 131
          Height = 21
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1047#1084#1110#1085#1080#1090#1080' (Ctrl+M)'
          TabOrder = 1
        end
        object Button2: TButton
          Left = 263
          Top = 2
          Width = 137
          Height = 21
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1054#1095#1080#1089#1090#1080#1090#1080' (Ctrl+Del)'
          TabOrder = 2
          OnClick = btClearClick
        end
        object btDelete: TButton
          Left = 405
          Top = 2
          Width = 154
          Height = 21
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080' (Shift+Del)'
          TabOrder = 3
        end
        object btExit: TButton
          Left = 563
          Top = 2
          Width = 118
          Height = 21
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1047#1072#1082#1088#1080#1090#1080' (Alt+F4)'
          TabOrder = 4
        end
      end
      object ListBox1: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 366
        Height = 337
        Align = alLeft
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1103
      ImageIndex = 1
      ExplicitLeft = -20
      ExplicitTop = -33
      ExplicitWidth = 281
      ExplicitHeight = 165
      object StringGrid1: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 503
        Height = 364
        Align = alClient
        ColCount = 6
        PopupMenu = PopupMenu1
        TabOrder = 0
        ExplicitTop = -2
        ExplicitWidth = 518
        ExplicitHeight = 382
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 512
        Top = 3
        Width = 251
        Height = 364
        Align = alRight
        Caption = #1060#1110#1083#1100#1090#1088#1080
        TabOrder = 1
        Visible = False
        object Label7: TLabel
          Left = 8
          Top = 13
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object Label8: TLabel
          Left = 8
          Top = 57
          Width = 18
          Height = 13
          Align = alCustom
          Caption = #1030#1084#39#1103
        end
        object Button5: TButton
          Left = 2
          Top = 337
          Width = 247
          Height = 25
          Align = alBottom
          Caption = #1047#1072#1076#1072#1090#1080' '#1092#1110#1083#1100#1090#1088#1080
          TabOrder = 0
          OnClick = Button5Click
          ExplicitLeft = 3
          ExplicitTop = 340
        end
        object DateTimePicker3: TDateTimePicker
          Left = 8
          Top = 31
          Width = 129
          Height = 21
          Date = 41784.458068356480000000
          Time = 41784.458068356480000000
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 8
          Top = 74
          Width = 129
          Height = 21
          TabOrder = 2
        end
        object DateFilter: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 271
          Width = 241
          Height = 17
          Align = alBottom
          BiDiMode = bdRightToLeftReadingOnly
          Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1079#1072' '#1076#1072#1090#1086#1102
          Checked = True
          ParentBiDiMode = False
          State = cbChecked
          TabOrder = 3
          OnClick = DateFilterClick
          ExplicitTop = 276
          ExplicitWidth = 217
        end
        object NameFilter: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 294
          Width = 241
          Height = 17
          Align = alBottom
          BiDiMode = bdRightToLeftReadingOnly
          Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1079#1072' '#1110#1084#1077#1085#1077#1084' '
          Checked = True
          ParentBiDiMode = False
          State = cbChecked
          TabOrder = 4
          OnClick = NameFilterClick
          ExplicitTop = 299
          ExplicitWidth = 217
        end
        object PriceFilter: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 317
          Width = 241
          Height = 17
          Align = alBottom
          BiDiMode = bdRightToLeftReadingOnly
          Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1079#1072' '#1094#1110#1085#1086#1102
          Checked = True
          ParentBiDiMode = False
          State = cbChecked
          TabOrder = 5
          OnClick = PriceFilterClick
          ExplicitTop = 322
          ExplicitWidth = 217
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 96
          Width = 241
          Height = 169
          Align = alBottom
          Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1079#1072' '#1094#1110#1085#1086#1102
          TabOrder = 6
          ExplicitTop = 101
          ExplicitWidth = 217
          object Label9: TLabel
            Left = 16
            Top = 17
            Width = 3
            Height = 13
          end
          object Label10: TLabel
            Left = 9
            Top = 38
            Width = 15
            Height = 13
            Caption = #1042#1110#1076
          end
          object Label11: TLabel
            Left = 120
            Top = 38
            Width = 14
            Height = 13
            Caption = #1044#1086
            Visible = False
          end
          object RadioGroup2: TRadioGroup
            AlignWithMargins = True
            Left = 5
            Top = 84
            Width = 231
            Height = 80
            Cursor = crHandPoint
            Align = alBottom
            BiDiMode = bdLeftToRight
            Caption = #1064#1091#1082#1072#1090#1080':'
            ItemIndex = 1
            Items.Strings = (
              #1047' '#1087#1088#1086#1084#1110#1078#1082#1091' '#1094#1110#1085
              #1041#1110#1083#1100#1096#1091' '#1094#1110#1085#1091' '#1079#1072
              #1052#1077#1085#1096#1091' '#1094#1110#1085#1091' '#1079#1072)
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = RadioGroup2Click
            ExplicitLeft = 7
            ExplicitTop = 86
          end
          object Edit4: TEdit
            AlignWithMargins = True
            Left = 120
            Top = 55
            Width = 75
            Height = 21
            TabOrder = 1
            Visible = False
          end
          object Edit5: TEdit
            AlignWithMargins = True
            Left = 8
            Top = 55
            Width = 75
            Height = 21
            TabOrder = 2
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 407
    Width = 774
    Height = 19
    Panels = <
      item
        Bevel = pbNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 320
      end
      item
        Width = 5
      end
      item
        Bevel = pbRaised
        Width = 150
      end
      item
        Width = 50
      end
      item
        Width = 10
      end>
    ExplicitLeft = 1
    ExplicitTop = 381
    ExplicitWidth = 252
  end
  object MainMenu: TMainMenu
    Left = 25
    Top = 304
    object FileMenu: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      ShortCut = 16462
      object FileNew: TMenuItem
        Caption = #1053#1086#1074#1080#1081
        ShortCut = 16462
      end
      object FileOpen: TMenuItem
        Caption = '&'#1042#1110#1076#1082#1088#1080#1090#1080'...'
        ShortCut = 16463
        OnClick = FileOpenClick
      end
      object FileSave: TMenuItem
        Caption = '&'#1047#1073#1077#1088#1077#1075#1090#1080
        ShortCut = 16467
        OnClick = FileSaveClick
      end
      object FileSaveAs: TMenuItem
        Caption = #1047#1073#1088#1077#1075#1090#1080' &'#1071#1082'...'
        OnClick = FileSaveAsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExit: TMenuItem
        Caption = '&'#1047#1072#1082#1088#1080#1090#1080
        ShortCut = 32883
      end
    end
    object BaseMenu: TMenuItem
      Caption = '&'#1041#1072#1079#1072
      object Add1: TMenuItem
        Caption = #1044#1086#1076#1072#1090#1080
        ShortCut = 16449
        OnClick = btAddClick
      end
      object Modify1: TMenuItem
        Caption = '&'#1047#1084#1110#1085#1080#1090#1080
        Enabled = False
        ShortCut = 16461
      end
      object ClearFields1: TMenuItem
        Caption = '&'#1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
        ShortCut = 16430
        OnClick = btClearClick
      end
      object Delete1: TMenuItem
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Enabled = False
        ShortCut = 8238
      end
      object Find1: TMenuItem
        Caption = '&'#1047#1085#1072#1081#1090#1080'...'
        ShortCut = 16454
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = #1057#1086#1088#1090#1091#1074#1072#1085#1085#1103
        object SortAdr: TMenuItem
          Caption = #1057#1086#1088#1090#1091#1074#1072#1090#1080' '#1079#1072' '#1072#1083#1092#1072#1074#1110#1090#1086#1084
          OnClick = SortAdrClick
        end
        object N4: TMenuItem
          Caption = #1057#1086#1088#1090#1091#1074#1072#1090#1080' '#1079#1072' '#1076#1072#1090#1086#1102
          Enabled = False
        end
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object N11: TMenuItem
        Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080' '#1074' '#1090#1072#1073#1083#1080#1094#1102' '
        OnClick = N11Click
      end
    end
    object N5: TMenuItem
      Caption = '&'#1042#1080#1075#1083#1103#1076
      object N12: TMenuItem
        Caption = #1055#1086#1082#1072#1079#1072#1090#1080' '#1092#1110#1083#1100#1090#1088#1080
        OnClick = N12Click
      end
      object N14: TMenuItem
        Caption = #1055#1086#1096#1091#1082' '#1091' '#1089#1087#1080#1089#1082#1091
        OnClick = N14Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082
        Checked = True
        RadioItem = True
        OnClick = N7Click
      end
      object N6: TMenuItem
        Caption = #1058#1072#1073#1083#1080#1094#1103
        RadioItem = True
        OnClick = N6Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = #1050#1086#1083#1110#1088' '#1092#1086#1085#1091
      end
    end
    object Settings: TMenuItem
      Caption = '&'#1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      object Language: TMenuItem
        Caption = #1052#1086#1074#1072
        object Ukranian: TMenuItem
          Caption = #1059#1082#1088#1072#1111#1085#1089#1100#1082#1072
          Checked = True
          OnClick = UkranianClick
        end
        object English1: TMenuItem
          Caption = 'English'
          OnClick = English1Click
        end
      end
    end
    object HelpMenu: TMenuItem
      Caption = '&'#1044#1086#1087#1086#1084#1086#1075#1072
      object HelpAbout: TMenuItem
        Caption = '&'#1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
        ShortCut = 112
        OnClick = HelpAboutClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Adress Book (*.adb)|*.adb|Text|*.txt|All|*.*'
    Left = 53
    Top = 304
  end
  object SaveDialog: TSaveDialog
    Left = 85
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Left = 23
    Top = 339
    object N15: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1080' '#1092#1110#1083#1100#1090#1088#1080
      OnClick = N11Click
    end
  end
end
