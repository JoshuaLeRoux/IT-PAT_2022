// Joshua Le Roux
unit Players_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrmPlayers = class(TForm)
    dbgplayers: TDBGrid;
    edtfirstname: TEdit;
    cmbschool: TComboBox;
    lblfirstname: TLabel;
    lblschool: TLabel;
    lblsurname: TLabel;
    edtsurname: TEdit;
    btnEdit: TButton;
    btnHome: TButton;
    btnClear: TButton;
    btnSave: TButton;
    procedure btnHomeClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlayers: TfrmPlayers;

implementation
uses
  Home_U, chessDM;

{$R *.dfm}

procedure TfrmPlayers.btnClearClick(Sender: TObject);
// Resets all inputs to empty
begin
  edtfirstname.Text := '';
  edtsurname.Text := '';
  cmbschool.ClearSelection;
end;

procedure TfrmPlayers.btnEditClick(Sender: TObject);
// Edit players
var
  confirm :string;
begin
  // Edit warning and confirmation
  confirm := InputBox('Warning!','Are you sure you want to edit the selected player? y/n','n');
  if Uppercase(confirm) = 'N' then
    exit;

  // Edit the selected player with user input values
  with dmchess do
    begin
      tblplayers.Edit;
      if edtfirstname.Text <> '' then                    // Check the input field is not empty
        tblplayers['firstname'] := edtfirstname.Text;
      if edtsurname.Text <> '' then
        tblplayers['surname'] := edtsurname.Text;
      if cmbschool.ItemIndex > -1 then
        tblplayers['school']  := cmbschool.Items[cmbschool.ItemIndex];
      tblplayers.Post;
      tblplayers.Refresh;
    end;

end;

procedure TfrmPlayers.btnHomeClick(Sender: TObject);
begin
  frmHome.Show;
  Self.Close;
end;

procedure TfrmPlayers.btnSaveClick(Sender: TObject);
// Restore the player list in the database to its default values
var
  L, P :integer;
  ans :string;
begin
  // File exist check
  if FileExists('players list.txt') = false then
    begin
      ShowMessage('File not found!');
      Exit;
    end
  // Edit warning and confirmation
  else
    begin
      ans := InputBox('Warning!','Are you sure you want to undo all edits? y/n','n');
      if Uppercase(ans) = 'N' then
        exit;
    end;

  // Extract player list from text file and store in an array
  L := 1;
  AssignFile(myfile, 'players list.txt');
  Reset(myfile);
  while not eof(myfile) do
    begin
      readln(myfile, sline);
      P := pos('#', sline);
      arrfirstname[L] := copy(sline, 1, P-1);
      delete(sline,1,P);
      P := pos('#', sline);
      arrsurname[L] := copy(sline, 1, P-1);
      delete(sline,1,P);
      arrschool[L] := sline;
      inc(L);
    end;
  CloseFile(myfile);

  // Transfer the stored array data to the database
  L := 1;
  with dmchess do
    begin
      tblplayers.Edit;
      tblplayers.First;
      while not tblplayers.eof do
        begin
          tblplayers.Edit;
          tblplayers['firstname'] := arrfirstname[L];
          tblplayers['surname'] := arrsurname[L];
          tblplayers['school'] := arrschool[L];
          tblplayers.Next;
          inc(L);
        end;
      tblplayers.First;
    end;

end;

procedure TfrmPlayers.FormClose(Sender: TObject; var Action: TCloseAction);
// Ensures program not left running in the background, shows home screen
begin
  if frmHome.Visible = false then
    frmHome.Show;
end;

procedure TfrmPlayers.FormShow(Sender: TObject);
begin
  with dmchess do
    begin
      tblplayers.First;
    end;
end;

end.
