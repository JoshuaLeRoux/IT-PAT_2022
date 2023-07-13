// Joshua Le Roux
unit Games_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrmQuarters = class(TForm)
    dbgquarters: TDBGrid;
    rgpgame4: TRadioGroup;
    rgpgame5: TRadioGroup;
    rgpgame6: TRadioGroup;
    rgpgame7: TRadioGroup;
    btnPost: TButton;
    btnSemis: TButton;
    btnHome: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSemisClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuarters: TfrmQuarters;

implementation
uses
  Home_U, Players_U, chessDM, Games2_U, Games3_U;

{$R *.dfm}

procedure TfrmQuarters.btnHomeClick(Sender: TObject);
begin
  frmHome.Show;
  Self.Close;
end;

procedure TfrmQuarters.btnPostClick(Sender: TObject);
// Use radiogroups to determine winnerid per game
var
  J, W  :integer;
begin
  W := 1;
  // Extract winnerid from radiogroups
  if rgpgame4.ItemIndex = 0 then
    arrwinners[4] := 1
  else
  if rgpgame4.ItemIndex = 1 then
    arrwinners[4] := 3
  else
    inc(W);                                  // If none selected

  if rgpgame5.ItemIndex = 0 then
    arrwinners[5] := 2
  else
  if rgpgame5.ItemIndex = 1 then
    arrwinners[5] := 4
  else
    inc(W);

  if rgpgame6.ItemIndex = 0 then
    arrwinners[6] := 5
  else
  if rgpgame6.ItemIndex = 1 then
    arrwinners[6] := 7
  else
    inc(W);

  if rgpgame7.ItemIndex = 0 then
    arrwinners[7] := 6
  else
  if rgpgame7.ItemIndex = 1 then
    arrwinners[7] := 8
  else
    inc(W);

  if W <> 1 then                             // Show message to select a winner for EACH game if one not selected
    begin
      ShowMessage('Please select a winner for each game');
      Exit;
    end;

  // Updates the database with the selected winners
  J := 4;
  with dmchess do
    begin
      tblquarters.Edit;
      tblquarters.First;
      while not tblquarters.eof do
        begin
        tblquarters.Edit;
          tblquarters['winnerid'] := arrwinners[J];
          tblquarters.Next;
          inc(J);
        end;
    end;
end;

procedure TfrmQuarters.btnSemisClick(Sender: TObject);
begin
  frmSemis.Show;
  Self.Close;
end;

procedure TfrmQuarters.FormClose(Sender: TObject; var Action: TCloseAction);
// Ensures program not left running in the background, shows home screen
begin
  if (frmHome.Visible = false) and (frmSemis.Visible = false) then
    frmHome.Show;
end;

end.
