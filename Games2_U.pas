// Joshua Le Roux
unit Games2_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrmSemis = class(TForm)
    btnPost: TButton;
    dbgsemis: TDBGrid;
    rgpgame2: TRadioGroup;
    rgpgame3: TRadioGroup;
    btnFinals: TButton;
    btnHome: TButton;
    btnQuarters: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnFinalsClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnQuartersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSemis: TfrmSemis;

implementation
uses
  Home_U, Games_U, Games3_U, chessDM;

{$R *.dfm}

procedure TfrmSemis.btnFinalsClick(Sender: TObject);
begin
  frmFinals.Show;
  Self.Close;
end;

procedure TfrmSemis.btnHomeClick(Sender: TObject);
begin
  frmHome.Show;
  Self.Close;
end;

procedure TfrmSemis.btnPostClick(Sender: TObject);
// Use radiogroups to determine winnerid per game
var
  J, W :integer;
begin
  W := 1;
  if rgpgame2.ItemIndex = 0 then
    arrwinners[2] := arrwinners[4]
  else
  if rgpgame2.ItemIndex = 1 then
    arrwinners[2] := arrwinners[6]
  else
    inc(W);                                  // If none selected

  if rgpgame3.ItemIndex = 0 then
    arrwinners[3] := arrwinners[5]
  else
  if rgpgame3.ItemIndex = 1 then
    arrwinners[3] := arrwinners[7]
  else
    inc(W);

  if W <> 1 then                             // Show message to select a winner for EACH game if one not selected
    begin
      ShowMessage('Please select a winner for each game');
      Exit;
    end;

  // Updates the database with the selected winners
  J := 2;
  with dmchess do
    begin
      tblsemis.First;
      tblsemis.Edit;
      while not tblsemis.eof do
        begin
          tblsemis.Edit;
          tblsemis['winnerid'] := arrwinners[J];
          tblsemis.Next;
          inc(J);
        end;
    end;

end;

procedure TfrmSemis.btnQuartersClick(Sender: TObject);
begin
  frmQuarters.Show;
  Self.Close;
end;

procedure TfrmSemis.FormClose(Sender: TObject; var Action: TCloseAction);
// Ensures program not left running in the background, shows home screen
begin
  if (frmHome.Visible = false) and (frmFinals.Visible = false) and (frmQuarters.Visible = false) then
    frmHome.Show;
end;

procedure TfrmSemis.FormShow(Sender: TObject);
var
  J, R :integer;
begin
  // Sets radiogroup items to quarters winnerids
  rgpgame2.Items[0] := 'ID ' + IntToStr(arrwinners[4]);
  rgpgame2.Items[1] := 'ID ' + IntToStr(arrwinners[6]);
  rgpgame3.Items[0] := 'ID ' + IntToStr(arrwinners[5]);
  rgpgame3.Items[1] := 'ID ' + IntToStr(arrwinners[7]);

  // Insert quarters winnerids into semis table player1 and player2 fields
  J := 4;
  R := 6;
  with dmchess do
    begin
      tblsemis.First;
      tblsemis.Edit;
      while not tblsemis.eof do
        begin
          tblsemis.Edit;
          tblsemis['player1'] := arrwinners[J];
          tblsemis['player2'] := arrwinners[R];
          tblsemis.Next;
          inc(J);
          inc(R);
        end;
    end;
end;

end.
