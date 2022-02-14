object Form1: TForm1
  Left = 360
  Top = 254
  Width = 761
  Height = 597
  Caption = 'Tester - menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    745
    541)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 432
    Top = 24
    Width = 184
    Height = 16
    Caption = #1042#1088#1077#1084#1103': '#1087#1086#1082#1072' '#1085#1077' '#1085#1072#1095#1072#1083#1086#1089#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object ListBox2: TListBox
    Left = 432
    Top = 56
    Width = 302
    Height = 455
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 0
    OnDblClick = ListBox2DblClick
    OnKeyPress = ListBox2KeyPress
  end
  object ListBox1: TListBox
    Left = 8
    Top = 56
    Width = 302
    Height = 455
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 1
    OnClick = ListBox1Click
    OnDblClick = ListBox1DblClick
  end
  object SaveDialog1: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' '#1087#1088#1086#1077#1082#1090#1072'|*.qmproj'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 352
    Top = 96
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' '#1087#1088#1086#1077#1082#1090#1072'|*.qmproj'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 352
    Top = 216
  end
  object MainMenu1: TMainMenu
    Left = 352
    Top = 160
    object MenuItem1: TMenuItem
      Caption = #1060#1072#1081#1083
      object MenuItem1_1: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100'...'
        OnClick = MenuItem1_1Click
      end
      object MenuItem1_2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = MenuItem1_2Click
      end
    end
    object MenuItem2: TMenuItem
      Caption = #1058#1077#1089#1090
      object MenuItem2_1: TMenuItem
        Caption = #1053#1072#1095#1072#1090#1100
        OnClick = MenuItem2_1Click
      end
      object MenuItem2_2: TMenuItem
        Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100
        OnClick = MenuItem2_2Click
      end
    end
    object MenuItem3: TMenuItem
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      object MenuItem3_1: TMenuItem
        Caption = #1059#1082#1072#1079#1072#1090#1100' UID'
        OnClick = MenuItem3_1Click
      end
    end
    object MenuItem4: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object MenuItem4_1: TMenuItem
        Caption = #1054#1073' '#1072#1074#1090#1086#1088#1072#1093'...'
        OnClick = MenuItem4_1Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 352
    Top = 280
  end
end
