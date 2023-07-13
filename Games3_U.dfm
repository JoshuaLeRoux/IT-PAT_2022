object frmFinals: TfrmFinals
  Left = 0
  Top = 0
  Caption = 'Finals - Chess Tournament'
  ClientHeight = 403
  ClientWidth = 754
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
  object rgpgame1: TRadioGroup
    Left = 16
    Top = 248
    Width = 113
    Height = 105
    Caption = 'Game 1 Winner'
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
    TabOrder = 1
  end
  object btnHome: TButton
    Left = 632
    Top = 312
    Width = 99
    Height = 41
    Caption = 'Return to Home'
    TabOrder = 2
    OnClick = btnHomeClick
  end
  object dbgfinals: TDBGrid
    Left = 16
    Top = 48
    Width = 529
    Height = 121
    DataSource = dmchess.dsrfinals
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSemis: TButton
    Left = 632
    Top = 248
    Width = 99
    Height = 41
    Caption = 'Back to Semis'
    TabOrder = 4
    OnClick = btnSemisClick
  end
  object pnlwinner: TPanel
    Left = 160
    Top = 248
    Width = 441
    Height = 105
    Color = clBtnText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
end
