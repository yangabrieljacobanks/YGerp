unit uDMFrmBaseCadastros;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, uDM, Dialogs;

type
  TDMFrmBaseCadastros = class(TDataModule)
    qBaseCadastros: TFDQuery;
    DSqBaseCadastros: TDataSource;
    FDUqBaseCadastros: TFDUpdateSQL;
    qTipoEntidadesLK: TFDQuery;
    dsqTipoEntidadesLK: TDataSource;
    qTipoEntidadesLKID: TFDAutoIncField;
    qTipoEntidadesLKNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFrmBaseCadastros: TDMFrmBaseCadastros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
