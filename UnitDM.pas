unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    dsChamados: TDataSource;
    sqlVBase: TFDQuery;
    sqlChamados: TFDQuery;
    sqlEAcesso: TFDQuery;
    sqlLogEmail: TFDQuery;
    sqlLogEmailCLI_EMAILNFE: TStringField;
    sqlLogEmailNFM_CODIGO: TBCDField;
    sqlLogEmailNFU_CODIGO: TBCDField;
    sqlLogEmailNFU_SERIE: TStringField;
    sqlLogEmailNFM_ASSUNTO: TStringField;
    sqlLogEmailNFM_DESTINATARIO: TStringField;
    sqlLogEmailNFM_DEST_CC: TStringField;
    sqlLogEmailNFM_DEST_CCO: TStringField;
    sqlLogEmailNFM_OBSERVACAO: TStringField;
    sqlLogEmailLOT_CODIGO: TBCDField;
    sqlLogEmailNFM_INCLUIDATA: TDateTimeField;
    sqlLogEmailNFM_INCLUIPOR: TStringField;
    sqlLogEmailNFM_AUTENTICACAO: TStringField;
    sqlLogEmailNFM_SERVER: TStringField;
    sqlLogEmailNFM_SITUACAO: TStringField;
    sqlLogEmailNFM_OWNER: TStringField;
    sqlLogEmailNFM_DATAENVIO: TDateTimeField;
    dsVBase: TDataSource;
    dsEAcesso: TDataSource;
    dsLogEmail: TDataSource;
    dsEBase: TDataSource;
    sqlEBase: TFDQuery;
    sqlEBaseBASE: TStringField;
    sqlEBaseQNT: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
