program LeRoux_P;

uses
  Forms,
  Home_U in 'Home_U.pas' {frmHome},
  chessDM in 'chessDM.pas' {dmchess: TDataModule},
  Players_U in 'Players_U.pas' {frmPlayers},
  Structure_U in 'Structure_U.pas' {frmStructure},
  Games_U in 'Games_U.pas' {frmQuarters},
  Games2_U in 'Games2_U.pas' {frmSemis},
  Games3_U in 'Games3_U.pas' {frmFinals};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Chess Tournament';
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(Tdmchess, dmchess);
  Application.CreateForm(TfrmPlayers, frmPlayers);
  Application.CreateForm(TfrmStructure, frmStructure);
  Application.CreateForm(TfrmQuarters, frmQuarters);
  Application.CreateForm(TfrmSemis, frmSemis);
  Application.CreateForm(TfrmFinals, frmFinals);
  Application.Run;
end.
