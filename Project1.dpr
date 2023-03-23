program Project1;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {formPrincipal},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitChamado in 'UnitChamado.pas' {formChamado},
  UnitVBase in 'UnitVBase.pas' {formVBase},
  UnitEAcesso in 'UnitEAcesso.pas' {formEAcesso},
  UnitLogEmail in 'UnitLogEmail.pas' {formLogEmail},
  UnitEBase in 'UnitEBase.pas' {formEBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformChamado, formChamado);
  Application.CreateForm(TformVBase, formVBase);
  Application.CreateForm(TformEAcesso, formEAcesso);
  Application.CreateForm(TformLogEmail, formLogEmail);
  Application.CreateForm(TformEBase, formEBase);
  Application.Run;
end.
