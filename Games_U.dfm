object frmQuarters: TfrmQuarters
  Left = 0
  Top = 0
  Caption = 'Quarter-finals - Chess Tournament'
  ClientHeight = 400
  ClientWidth = 755
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbgquarters: TDBGrid
    Left = 16
    Top = 48
    Width = 529
    Height = 121
    DataSource = dmchess.dsrquarters
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object rgpgame4: TRadioGroup
    Left = 16
    Top = 248
    Width = 113
    Height = 105
    Caption = 'Game 4 Winner'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'ID 1'
      'ID 3')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object rgpgame5: TRadioGroup
    Left = 151
    Top = 248
    Width = 114
    Height = 105
    Caption = 'Game 5 Winner'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'ID 2'
      'ID 4')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object rgpgame6: TRadioGroup
    Left = 287
    Top = 248
    Width = 114
    Height = 105
    Caption = 'Game 6 Winner'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'ID 5'
      'ID 7')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object rgpgame7: TRadioGroup
    Left = 423
    Top = 248
    Width = 114
    Height = 105
    Caption = 'Game 7 Winner'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'ID 6'
      'Id 8')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object btnPost: TButton
    Left = 576
    Top = 48
    Width = 155
    Height = 121
    Caption = 'Post Results'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnPostClick
  end
  object btnSemis: TButton
    Left = 632
    Top = 248
    Width = 99
    Height = 40
    Caption = 'Proceed to Semis'
    TabOrder = 6
    OnClick = btnSemisClick
  end
  object btnHome: TButton
    Left = 632
    Top = 312
    Width = 99
    Height = 41
    Caption = 'Return to Home'
    TabOrder = 7
    OnClick = btnHomeClick
  end
end
