// Joshua Le Roux
unit Games3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrmFinals = class(TForm)
    btnPost: TButton;
    rgpgame1: TRadioGroup;
    btnHome: TButton;
    dbgfinals: TDBGrid;
    btnSemis: TButton;
    pnlwinner: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSemisClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinals: TfrmFinals;

implementation
uses
  Home_U, Games_U, Games2_U, chessDM, Players_U;

{$R *.dfm}

procedure TfrmFinals.btnHomeClick(Sender: TObject);
begin
  frmHome.Show;
  Self.Close;
end;

procedure TfrmFinals.btnPostClick(Sender: TObject);
// Use radiogroups to determine winnerid per game
var
  winner  :string;
  iwinner, W :integer;
begin
  W := 1;
  if rgpgame1.ItemIndex = 0 then
    arrwinners[1] := arrwinners[2]
  else
  if rgpgame1.ItemIndex = 1 then
    arrwinners[1] := arrwinners[3]
  else
    inc(W);                                  // If none selected

  if W <> 1 then                             // Show message to select a winner for EACH game if one not selected
    begin
      ShowMessage('Please select a winner for each game');
      Exit;
    end;

  // Updates the database with the selected winners
  with dmchess do
    begin
      tblfinals.First;
      tblfinals.Edit;
      tblfinals['winnerid'] := arrwinners[1];
      tblfinals.Next;
    end;

  // Displays the winners firstname
  iwinner := arrwinners[1];
  if iwinner = 0 then                        // If no winner chosen yet, nothing must be displayed
    exit;
  winner := arrfirstname[iwinner];
  pnlwinner.Caption := 'Winner: ' + winner + '!';

end;

procedure TfrmFinals.btnSemisClick(Sender: TObject);
begin
  frmSemis.Show;
  Self.Close;
end;

procedure TfrmFinals.FormClose(Sender: TObject; var Action: TCloseAction);
// Ensures program not left running in the background, shows home screen
begin
  if (frmHome.Visible = false) and (frmSemis.Visible = false) then
    frmHome.Show;
end;

procedure TfrmFinals.FormShow(Sender: TObject);
begin
  // Sets radiogroup items to quarters winnerids
  rgpgame1.Items[0] := 'ID ' + IntToStr(arrwinners[2]);
  rgpgame1.Items[1] := 'ID ' + IntToStr(arrwinners[3]);

  // Insert quarters winnerids into semis table player1 and player2 fields
  with dmchess do
    begin
      tblfinals.First;
      tblfinals.Edit;
      tblfinals['player1'] := arrwinners[2];
      tblfinals['player2'] := arrwinners[3];
      tblfinals.Post;
      tblfinals.Refresh;
    end;
end;

end.
