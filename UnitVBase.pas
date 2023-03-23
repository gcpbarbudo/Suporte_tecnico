unit UnitVBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformVBase = class(TForm)
    TDEdit: TPanel;
    Nome: TLabel;
    edtNome: TEdit;
    bLocalizar: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    procedure bLocalizarClick(Sender: TObject);
    procedure edtNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formVBase: TformVBase;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformVBase.bLocalizarClick(Sender: TObject);
begin
   with DM do
   begin
     if sqlVBase.Active then sqlVBase.Close;
     sqlVBase.ParamByName('Nome').AsString := edtNome.Text;
     sqlVBase.Open();
   end;
end;

procedure TformVBase.edtNomeClick(Sender: TObject);
begin
  with DM do
  begin
    if sqlVBase.Active then sqlVBase.Close;
  end
  end;


end.
