unit uDMFrmBaseCadastrosLojas;

interface

uses
  System.SysUtils, System.Classes, uDMFrmBaseCadastros, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TDMFrmBaseCadastrosLojas = class(TDMFrmBaseCadastros)
    qBaseCadastrosID: TFDAutoIncField;
    qBaseCadastrosDESCRICAO: TStringField;
    qBaseCadastrosDESCRICAO2: TStringField;
    qBaseCadastrosATIVO: TStringField;
    qBaseCadastrosTIPO_FJ: TStringField;
    qBaseCadastrosDATANASCIMENTO: TSQLTimeStampField;
    qBaseCadastrosCEP: TStringField;
    qBaseCadastrosENDERECO: TStringField;
    qBaseCadastrosNUMERO: TStringField;
    qBaseCadastrosCOMPLEMENTO: TStringField;
    qBaseCadastrosPONTOREFERENCIA: TStringField;
    qBaseCadastrosCPF_CNPJ: TStringField;
    qBaseCadastrosDATACADASTRO: TSQLTimeStampField;
    qBaseCadastrosDATAATUALIZACAO: TSQLTimeStampField;
    qBaseCadastrosUSUARIO_CADASTRO: TStringField;
    qBaseCadastrosUSUARIO_ATUALIZACAO: TStringField;
    qBaseCadastrosID_TIPOENTIDADES: TIntegerField;
    qBaseCadastrosINSCRICAO_ESTADUAL: TStringField;
    qBaseCadastrosDATACRIACAO: TSQLTimeStampField;
    qBaseCadastrosDATAABERTURA: TSQLTimeStampField;
    procedure qBaseCadastrosAfterPost(DataSet: TDataSet);
    procedure DSqBaseCadastrosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFrmBaseCadastrosLojas: TDMFrmBaseCadastrosLojas;

implementation

Uses uFrmBaseCadastrosLojas;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMFrmBaseCadastrosLojas.DSqBaseCadastrosStateChange(Sender: TObject);
begin
  inherited;
  if DSqBaseCadastros.DataSet.State = dsInsert then
  begin
    DSqBaseCadastros.DataSet.FieldByName('DATACADASTRO').AsDateTime:= Now;
    DSqBaseCadastros.DataSet.FieldByName('USUARIO_CADASTRO').AsString:= 'ADM';
  end
  else
  if DSqBaseCadastros.DataSet.State = dsEdit then
  begin
    FrmBaseCadastrosLojas.BtnEdit.Click;
    DSqBaseCadastros.DataSet.FieldByName('DATAATUALIZACAO').AsDateTime:= Now;
    DSqBaseCadastros.DataSet.FieldByName('USUARIO_ATUALIZACAO').AsString:= 'ADM';
  end;
end;

procedure TDMFrmBaseCadastrosLojas.qBaseCadastrosAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMFrmBaseCadastrosLojas.qBaseCadastros.ApplyUpdates(-1);
end;

end.
