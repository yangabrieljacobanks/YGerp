unit uDMFrmBaseCadastrosFuncionarios;

interface

uses
  System.SysUtils, System.Classes, uDMFrmBaseCadastros, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMFrmBaseCadastrosFuncionarios = class(TDMFrmBaseCadastros)
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
    procedure DSqBaseCadastrosStateChange(Sender: TObject);
    procedure qBaseCadastrosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFrmBaseCadastrosFuncionarios: TDMFrmBaseCadastrosFuncionarios;

implementation

Uses uFrmBaseCadastrosFuncionarios;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMFrmBaseCadastrosFuncionarios.DSqBaseCadastrosStateChange(
  Sender: TObject);
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
    FrmBaseCadastrosFuncionarios.BtnEdit.Click;
    DSqBaseCadastros.DataSet.FieldByName('DATAATUALIZACAO').AsDateTime:= Now;
    DSqBaseCadastros.DataSet.FieldByName('USUARIO_ATUALIZACAO').AsString:= 'ADM';
  end;
end;

procedure TDMFrmBaseCadastrosFuncionarios.qBaseCadastrosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DMFrmBaseCadastrosFuncionarios.qBaseCadastros.ApplyUpdates(-1);
end;

end.
