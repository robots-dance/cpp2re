object Form2: TForm2
  Left = 289
  Top = 171
  Width = 691
  Height = 556
  Caption = 'QuestManager - quest settings'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Courier'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    675
    520)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 60
    Height = 18
    Caption = #1042#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 222
    Width = 160
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = #1042#1086#1079#1084#1086#1078#1085#1099#1077' '#1086#1090#1074#1077#1090#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 291
    Width = 11
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'X'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 256
    Top = 331
    Width = 11
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Y'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 8
    Top = 72
    Width = 54
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = #1089#1090#1088#1086#1082#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 256
    Top = 440
    Width = 64
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1055#1088#1086#1094#1077#1085#1090':'
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 654
    Height = 153
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 512
    ParentFont = False
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 256
    Top = 246
    Width = 89
    Height = 22
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akBottom]
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 2
    OnChange = ComboBox1Change
    Items.Strings = (
      ''
      '[x, y]'
      '(x, y)'
      '(x, +)'
      '(-, x)'
      '{x, y}'
      'x'
      #1089#1090#1088#1086#1082#1072)
  end
  object Edit1: TEdit
    Left = 360
    Top = 284
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    MaxLength = 9
    TabOrder = 5
    Visible = False
  end
  object Edit2: TEdit
    Left = 360
    Top = 324
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    MaxLength = 9
    TabOrder = 7
    Visible = False
  end
  object ListBox1: TListBox
    Left = 8
    Top = 246
    Width = 233
    Height = 267
    Anchors = [akLeft, akBottom]
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object Button1: TButton
    Left = 360
    Top = 240
    Width = 121
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 520
    Top = 290
    Width = 73
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1094#1077#1083#1086#1077
    TabOrder = 6
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 520
    Top = 330
    Width = 73
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1094#1077#1083#1086#1077
    TabOrder = 8
    Visible = False
  end
  object RadioGroup1: TRadioGroup
    Left = 256
    Top = 358
    Width = 337
    Height = 65
    Anchors = [akLeft, akBottom]
    Caption = #1058#1080#1087' '#1083#1086#1075#1080#1095#1077#1089#1082#1086#1081' '#1089#1074#1103#1079#1082#1080
    ItemIndex = 0
    Items.Strings = (
      #1048
      #1048#1051#1048)
    TabOrder = 9
  end
  object Button2: TButton
    Left = 512
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object EditPer: TEdit
    Left = 360
    Top = 432
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    MaxLength = 3
    TabOrder = 10
    OnKeyPress = EditPerKeyPress
  end
end
