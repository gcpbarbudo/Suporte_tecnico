unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TformPrincipal = class(TForm)
    btBaseUsuario: TBitBtn;
    btVerifBase: TBitBtn;
    btEspelhoBase: TBitBtn;
    btLogEmail: TBitBtn;
    btEspelhoAcesso: TBitBtn;
    btSair: TBitBtn;
    TDEdit: TPanel;
    procedure btBaseUsuarioClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btVerifBaseClick(Sender: TObject);
    procedure btEspelhoBaseClick(Sender: TObject);
    procedure btLogEmailClick(Sender: TObject);
    procedure btEspelhoAcessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses UnitChamado, UnitVBase, UnitEAcesso, UnitLogEmail, UnitEBase;

procedure TformPrincipal.btBaseUsuarioClick(Sender: TObject);
begin
  formChamado.ShowModal;

end;

procedure TformPrincipal.btEspelhoAcessoClick(Sender: TObject);
begin
   formEBase.ShowModal;
end;

procedure TformPrincipal.btEspelhoBaseClick(Sender: TObject);
begin
   formEAcesso.ShowModal;
end;

procedure TformPrincipal.btLogEmailClick(Sender: TObject);
begin
   formLogEmail.ShowModal;
end;

procedure TformPrincipal.btSairClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TformPrincipal.btVerifBaseClick(Sender: TObject);
begin
   formVBase.ShowModal;
end;

end.
