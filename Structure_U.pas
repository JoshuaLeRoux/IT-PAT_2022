// Joshua Le Roux
unit Structure_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage;

type
  TfrmStructure = class(TForm)
    imgstructure: TImage;
    btnHome: TButton;
    Label1: TLabel;
    imgchess: TImage;
    procedure btnHomeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStructure: TfrmStructure;

implementation
uses
  Home_U;

{$R *.dfm}

procedure TfrmStructure.btnHomeClick(Sender: TObject);
begin
  frmHome.Show;
  Self.Close;
end;

procedure TfrmStructure.FormClose(Sender: TObject; var Action: TCloseAction);
// Ensures program not left running in the background, shows home screen
begin
  if frmHome.Visible = false then
    frmHome.Show;
end;

end.
