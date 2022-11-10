unit uDMFrmBaseCadastrosTiposEntidades;

interface

uses
  System.SysUtils, System.Classes, uDMFrmBaseCadastros, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TDMFrmBaseCadastrosTiposEntidades = class(TDMFrmBaseCadastros)
    qBaseCadastrosID: TFDAutoIncField;
    qBaseCadastrosNAME: TStringField;
    procedure qBaseCadastrosAfterPost(DataSet: TDataSet);
    procedure DSqBaseCadastrosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFrmBaseCadastrosTiposEntidades: TDMFrmBaseCadastrosTiposEntidades;

implementation

Uses uFrmBaseCadastrosTiposEntidades;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMFrmBaseCadastrosTiposEntidades.DSqBaseCadastrosStateChange(
  Sender: TObject);
begin
  inherited;
  if DSqBaseCadastros.DataSet.State = dsEdit then
    FrmBaseCadastrosTiposEntidades.BtnEdit.Click;
end;

procedure TDMFrmBaseCadastrosTiposEntidades.qBaseCadastrosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.ApplyUpdates(-1);
end;

end.
