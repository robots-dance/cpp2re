object Form1: TForm1
  Left = 598
  Top = 286
  Width = 761
  Height = 597
  Caption = 'QuestMaster - project'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    745
    539)
  PixelsPerInch = 96
  TextHeight = 13
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
    OnKeyUp = ListBox2KeyUp
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
    OnKeyUp = ListBox1KeyUp
  end
  object SaveDialog1: TSaveDialog
    Filter = '????? ???????|*.qmproj'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 208
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = '????? ???????|*.qmproj'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 144
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 8
    object MenuItem1: TMenuItem
      Caption = #212#224#233#235
      object MenuItem1_1: TMenuItem
        Caption = #206#242#234#240#251#242#252'...'
        OnClick = MenuItem1_1Click
      end
      object MenuItem1_2: TMenuItem
        Caption = #205#238#226#251#233
        OnClick = MenuItem1_2Click
      end
      object MenuItem1_3: TMenuItem
        Caption = #209#238#245#240#224#237#232#242#252' Ctrl + S'
        OnClick = MenuItem1_3Click
      end
      object MenuItem1_4: TMenuItem
        Caption = #209#238#245#240#224#237#232#242#252' '#234#224#234'...'
        OnClick = MenuItem1_4Click
      end
      object MenuItem1_5: TMenuItem
        Caption = #194#251#245#238#228
        OnClick = MenuItem1_5Click
      end
    end
    object MenuItem2: TMenuItem
      Caption = #199#224#228#224#247#232
      object MenuItem2_1: TMenuItem
        Caption = #209#238#231#228#224#242#252' Ctrl + V'
        OnClick = MenuItem2_1Click
      end
      object MenuItem2_2: TMenuItem
        Caption = #211#228#224#235#232#242#252' Del'
        OnClick = MenuItem2_2Click
      end
    end
    object MenuItem3: TMenuItem
      Caption = #194#238#239#240#238#241#251
      object MenuItem3_1: TMenuItem
        Caption = #209#238#231#228#224#242#252' Ctrl + V'
        OnClick = MenuItem3_1Click
      end
      object MenuItem3_2: TMenuItem
        Caption = #211#228#224#235#232#242#252' Del'
        OnClick = MenuItem3_2Click
      end
    end
    object MenuItem4: TMenuItem
      Caption = '?????????????'
      object MenuItem4_1: TMenuItem
        Caption = #194#240#229#236#255' '#237#224' '#242#229#241#242
        OnClick = MenuItem4_1Click
      end
      object MenuItem4_2: TMenuItem
        Caption = 'E-mail'
        OnClick = MenuItem4_2Click
      end
      object MenuItem4_3: TMenuItem
        Caption = #196#238#236#224#248#237#255#255' '#240#224#225#238#242#224
        OnClick = MenuItem4_3Click
      end
    end
    object MenuItem5: TMenuItem
      Caption = #209#239#240#224#226#234#224
      object MenuItem5_1: TMenuItem
        Caption = #206#225' '#224#226#242#238#240#229'...'
        OnClick = MenuItem5_1Click
      end
    end
  end
end
