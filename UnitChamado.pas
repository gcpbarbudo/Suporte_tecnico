unit UnitChamado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TformChamado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Nome: TLabel;
    rgStatus: TRadioGroup;
    edtNome: TEdit;
    bLocalizar: TButton;
    Timer1: TTimer;
    procedure bLocalizarClick(Sender: TObject);
    procedure rgStatusClick(Sender: TObject);
    procedure edtNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formChamado: TformChamado;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformChamado.bLocalizarClick(Sender: TObject);
begin
   with DM do
   begin
      if sqlChamados.Active then sqlChamados.Close;
      sqlChamados.ParamByName('Status').AsInteger := rgStatus.ItemIndex;
      sqlChamados.ParamByName('Nome').AsString :=edtNome.Text;
      sqlChamados.Open();
      
   end;
end;

procedure TformChamado.edtNomeClick(Sender: TObject);
begin
   with DM do
   begin
   if sqlChamados.Active then sqlChamados.Close;
 end
end;

procedure TformChamado.rgStatusClick(Sender: TObject);
begin
   with DM do
   begin
     if sqlChamados.Active then sqlChamados.Close;
   end
end;

end.
