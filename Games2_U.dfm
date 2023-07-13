object frmSemis: TfrmSemis
  Left = 0
  Top = 0
  Caption = 'Semi-finals - Chess Tournament'
  ClientHeight = 398
  ClientWidth = 753
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
    TabOrder = 0
    OnClick = btnPostClick
  end
  object dbgsemis: TDBGrid
    Left = 16
    Top = 48
    Width = 529
    Height = 120
    DataSource = dmchess.dsrsemis
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object rgpgame2: TRadioGroup
    Left = 16
    Top = 248
    Width = 113
    Height = 105
    Caption = 'Game 2 Winner'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'ID'
      'ID')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object rgpgame3: TRadioGroup
    Left = 160
    Top = 248
    Width = 113
    Height = 105
    Caption = 'Game 3 Winner'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'ID'
      'ID')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object btnFinals: TButton
    Left = 632
    Top = 248
    Width = 99
    Height = 40
    Caption = 'Proceed to Finals'
    TabOrder = 4
    OnClick = btnFinalsClick
  end
  object btnHome: TButton
    Left = 632
    Top = 312
    Width = 99
    Height = 41
    Caption = 'Return to Home'
    TabOrder = 5
    OnClick = btnHomeClick
  end
  object btnQuarters: TButton
    Left = 512
    Top = 248
    Width = 99
    Height = 40
    Caption = 'Back to Quarters'
    TabOrder = 6
    OnClick = btnQuartersClick
  end
end
