// Joshua Le Roux
// Gr11 IT PAT 2022
unit Home_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, chessDM, ExtCtrls, pngimage, Players_U, Structure_U, Games_U, Games2_U, Games3_U;

type
  TfrmHome = class(TForm)
    lbltitle: TLabel;
    btnplayers: TButton;
    btngames: TButton;
    btnstructure: TButton;
    Image1: TImage;
    procedure btnplayersClick(Sender: TObject);
    procedure btnstructureClick(Sender: TObject);
    procedure btngamesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;
  arrfirstname  : array [1..8] of string;
  arrsurname  : array [1..8] of string;
  arrschool  : array [1..8] of string;
  arrwinners  : array [1..7] of integer;
  myfile  :TextFile;
  sline :string;
  L,J,R :integer;

implementation

{$R *.dfm}

procedure TfrmHome.btngamesClick(Sender: TObject);
begin
  frmQuarters.Show;
  Self.Hide;
end;

procedure TfrmHome.btnplayersClick(Sender: TObject);
begin
  frmPlayers.Show;
  Self.Hide;
end;

procedure TfrmHome.btnstructureClick(Sender: TObject);
begin
  frmStructure.Show;
  Self.Hide;
end;

procedure TfrmHome.FormShow(Sender: TObject);
begin
  L := 1;
  with dmchess do
    begin
    // Populate player arrays
      tblplayers.First;
      while not tblplayers.eof do
        begin
          arrfirstname[L] := tblplayers['firstname'];
          arrsurname[L] := tblplayers['surname'];
          arrschool[L]  := tblplayers['school'];
          tblplayers.Next;
          inc(L);
        end;

    // Set all winnerid values to 0 to avoid confusion with previously set values
      tblquarters.Edit;
      tblquarters.First;
      while not tblquarters.eof do
        begin
          tblquarters.Edit;
          tblquarters['winnerid'] := 0;
          tblquarters.Next;
        end;
      tblsemis.Edit;
      tblsemis.First;
      while not tblsemis.eof do
        begin
          tblsemis.Edit;
          tblsemis['winnerid'] := 0;
          tblsemis.Next;
        end;
      tblfinals.Edit;
      tblfinals['winnerid'] := 0;

    end;
end;

end.
