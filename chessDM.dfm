object dmchess: Tdmchess
  OldCreateOrder = False
  Height = 432
  Width = 729
  object conChess: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=ChessDB.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 208
  end
  object tblplayers: TADOTable
    Active = True
    Connection = conChess
    CursorType = ctStatic
    TableName = 'tblplayers'
    Left = 152
    Top = 24
  end
  object tblquarters: TADOTable
    Active = True
    Connection = conChess
    CursorType = ctStatic
    TableName = 'tblquarters'
    Left = 152
    Top = 128
  end
  object tblsemis: TADOTable
    Active = True
    Connection = conChess
    CursorType = ctStatic
    TableName = 'tblsemis'
    Left = 152
    Top = 248
  end
  object tblfinals: TADOTable
    Active = True
    Connection = conChess
    CursorType = ctStatic
    TableName = 'tblfinals'
    Left = 152
    Top = 352
  end
  object dsrplayers: TDataSource
    DataSet = tblplayers
    Left = 336
    Top = 24
  end
  object dsrquarters: TDataSource
    DataSet = tblquarters
    Left = 336
    Top = 128
  end
  object dsrsemis: TDataSource
    DataSet = tblsemis
    Left = 336
    Top = 248
  end
  object dsrfinals: TDataSource
    DataSet = tblfinals
    Left = 336
    Top = 352
  end
end
