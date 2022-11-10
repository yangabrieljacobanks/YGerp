unit uDMFrmBaseCadastrosClientes;

interface

uses
  System.SysUtils, System.Classes, uDMFrmBaseCadastros, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TDMFrmBaseCadastrosClientes = class(TDMFrmBaseCadastros)
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
    qBaseCadastrosID: TFDAutoIncField;
    procedure DSqBaseCadastrosStateChange(Sender: TObject);
    procedure qBaseCadastrosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFrmBaseCadastrosClientes: TDMFrmBaseCadastrosClientes;

implementation

Uses uFrmBaseCadastrosClientes;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMFrmBaseCadastrosClientes.DSqBaseCadastrosStateChange(
  Sender: TObject);
begin
  inherited;
  if DSqBaseCadastros.DataSet.State = dsInsert then
  begin
    DSqBaseCadastros.DataSet.FieldByName('DATACADASTRO').AsDateTime:= Now;
  end
  else
  if DSqBaseCadastros.DataSet.State = dsEdit then
    FrmBaseCadastrosClientes.BtnEdit.Click;
end;

procedure TDMFrmBaseCadastrosClientes.qBaseCadastrosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DMFrmBaseCadastrosClientes.qBaseCadastros.ApplyUpdates(-1);
  if DMFrmBaseCadastrosClientes.DSqBaseCadastros.DataSet.State = dsBrowse then
    FrmBaseCadastrosClientes.BtnSave.Click;
end;

end.
