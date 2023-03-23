unit UnitEAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TformEAcesso = class(TForm)
    TDEdit: TPanel;
    edtNome: TEdit;
    bLocalizar: TButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Nome: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEAcesso: TformEAcesso;

implementation

{$R *.dfm}

end.
