// Joshua Le Roux
unit chessDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmchess = class(TDataModule)
    conChess: TADOConnection;
    tblplayers: TADOTable;
    tblquarters: TADOTable;
    tblsemis: TADOTable;
    tblfinals: TADOTable;
    dsrplayers: TDataSource;
    dsrquarters: TDataSource;
    dsrsemis: TDataSource;
    dsrfinals: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmchess: Tdmchess;

implementation

{$R *.dfm}

end.
