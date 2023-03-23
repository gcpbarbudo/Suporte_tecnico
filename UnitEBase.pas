unit UnitEBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformEBase = class(TForm)
    TDEdit: TPanel;
    Label1: TLabel;
    Nome: TLabel;
    edtNome1: TEdit;
    bLocalizar: TButton;
    edtNome2: TEdit;
    Button1: TButton;
    Grid: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure edtNome1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEBase: TformEBase;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformEBase.Button1Click(Sender: TObject);
begin
   with Dm do
   begin
     if sqlEBase.Active then sqlEBase.Close;
     sqlEBase.ParamByName('Nome1').AsString := edtNome1.Text;
     sqlEBase.ParamByName('Nome2').AsString := edtNome2.Text;
     sqlEBase.Open();
   end;
end;



procedure TformEBase.edtNome1Change(Sender: TObject);
begin
  with  DM do
  if sqlEBase.Active then sqlEBase.Close;
end;

end.
