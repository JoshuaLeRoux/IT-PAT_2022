object frmPlayers: TfrmPlayers
  Left = 0
  Top = 0
  Caption = 'Edit Players - Chess Tournament'
  ClientHeight = 399
  ClientWidth = 751
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
  object lblfirstname: TLabel
    Left = 16
    Top = 225
    Width = 64
    Height = 18
    Caption = 'Firstname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblschool: TLabel
    Left = 16
    Top = 348
    Width = 41
    Height = 18
    Caption = 'School'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblsurname: TLabel
    Left = 16
    Top = 286
    Width = 58
    Height = 18
    Caption = 'Surname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgplayers: TDBGrid
    Left = 16
    Top = 16
    Width = 561
    Height = 185
    DataSource = dmchess.dsrplayers
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtfirstname: TEdit
    Left = 96
    Top = 226
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object cmbschool: TComboBox
    Left = 96
    Top = 349
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'Select'
    Items.Strings = (
      'College'
      'Saints'
      'Hilton'
      'Howick')
  end
  object edtsurname: TEdit
    Left = 96
    Top = 287
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object btnEdit: TButton
    Left = 312
    Top = 226
    Width = 97
    Height = 144
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnEditClick
  end
  object btnHome: TButton
    Left = 478
    Top = 332
    Width = 99
    Height = 38
    Caption = 'Return to Home'
    TabOrder = 5
    OnClick = btnHomeClick
  end
  object btnClear: TButton
    Left = 478
    Top = 279
    Width = 99
    Height = 38
    Caption = 'Clear Input Fields'
    TabOrder = 6
    OnClick = btnClearClick
  end
  object btnSave: TButton
    Left = 478
    Top = 226
    Width = 99
    Height = 39
    Caption = 'Undo All Edits'
    TabOrder = 7
    OnClick = btnSaveClick
  end
end
