object Form2: TForm2
  Left = 361
  Top = 228
  Width = 691
  Height = 555
  Caption = 'Tester - question'
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
    519)
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
    Top = 221
    Width = 60
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1074#1077#1090#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 250
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
    Top = 290
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
    Top = 71
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
    Top = 407
    Width = 64
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1055#1088#1086#1094#1077#1085#1090':'
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 654
    Height = 152
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 512
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 360
    Top = 251
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    MaxLength = 9
    TabOrder = 2
    Text = '0'
    Visible = False
  end
  object Edit2: TEdit
    Left = 360
    Top = 283
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    MaxLength = 9
    TabOrder = 4
    Text = '0'
    Visible = False
  end
  object ListBox1: TListBox
    Left = 8
    Top = 245
    Width = 233
    Height = 260
    Anchors = [akLeft, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 17
    ParentFont = False
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object CheckBox1: TCheckBox
    Left = 496
    Top = 257
    Width = 73
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1094#1077#1083#1086#1077
    Enabled = False
    TabOrder = 3
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 496
    Top = 289
    Width = 73
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1094#1077#1083#1086#1077
    Enabled = False
    TabOrder = 5
    Visible = False
  end
  object RadioGroup1: TRadioGroup
    Left = 256
    Top = 325
    Width = 337
    Height = 65
    Anchors = [akLeft, akBottom]
    Caption = #1058#1080#1087' '#1083#1086#1075#1080#1095#1077#1089#1082#1086#1081' '#1089#1074#1103#1079#1082#1080
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      #1048
      #1048#1051#1048)
    TabOrder = 6
  end
  object EditPer: TEdit
    Left = 360
    Top = 399
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    Enabled = False
    MaxLength = 3
    ReadOnly = True
    TabOrder = 7
  end
  object CheckBoxCritical: TCheckBox
    Left = 256
    Top = 439
    Width = 225
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081' '#1074' '#1079#1072#1076#1072#1095#1077
    Enabled = False
    TabOrder = 8
  end
end
