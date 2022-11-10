unit uFrmBaseCadastrosConfiguracaoClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastrosConfiguracao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox;

type
  TFrmBaseCadastrosConfiguracaoClientes = class(TFrmBaseCadastrosConfiguracao)
    procedure qConfiguracoesAfterPost(DataSet: TDataSet);
  private
    function VerificaSeExisteConfiguracao(ID_USUARIOS, ID_FORMULARIO: integer): boolean;
    procedure FiltraDados(ID_USUARIOS, ID_FORMULARIO: integer);
  public
    { Public declarations }
    class procedure Inicializa(ID_USUARIOS, ID_FORMULARIO: integer; wl_SQL: string);
  end;

var
  FrmBaseCadastrosConfiguracaoClientes: TFrmBaseCadastrosConfiguracaoClientes;

implementation

{$R *.dfm}

uses uDM;

{ TFrmBaseCadastrosConfiguracaoClientes }

procedure TFrmBaseCadastrosConfiguracaoClientes.FiltraDados(ID_USUARIOS, ID_FORMULARIO: integer);
begin
  qConfiguracoes.Close;
  qConfiguracoes.Params.ParamByName('ID_USER').Value:= ID_USUARIOS;
  qConfiguracoes.Params.ParamByName('ID_FORM').Value:= ID_FORMULARIO;
  qConfiguracoes.Open;
end;

class procedure TFrmBaseCadastrosConfiguracaoClientes.Inicializa(
  ID_USUARIOS, ID_FORMULARIO: integer; wl_SQL: string);
begin
  with TFrmBaseCadastrosConfiguracaoClientes.Create(Application) do
  begin
    if VerificaSeExisteConfiguracao(ID_USUARIOS, ID_FORMULARIO) then
    begin
      FiltraDados(ID_USUARIOS, ID_FORMULARIO);
    end;
    Show;
  end;
end;

procedure TFrmBaseCadastrosConfiguracaoClientes.qConfiguracoesAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qConfiguracoes.ApplyUpdates(-1);
end;

function TFrmBaseCadastrosConfiguracaoClientes.VerificaSeExisteConfiguracao(
  ID_USUARIOS, ID_FORMULARIO: integer): boolean;
var
  wl_SQL: string;
  QueryAux: TFDQuery;
begin
  Result:= False;
  try
    QueryAux:= TFDQuery.Create(nil);
    QueryAux.Connection:= DM.Conexao;

    wl_SQL:= ' SELECT CONTADOR = COUNT(*) '+
             '   FROM VISUAL_CONFIGURATION ' +
             ' WHERE ID_USER = '+IntToStr(ID_USUARIOS)+
             '   AND ID_FORM = '+IntToStr(ID_FORMULARIO);

    QueryAux.Close;
    QueryAux.SQL.Clear;
    QueryAux.SQL.Text:= wl_SQL;
    QueryAux.Prepare;
    QueryAux.Open;
    if (QueryAux.RecordCount > 0) then
      Result:= True;
  finally
    QueryAux.Close;
    QueryAux.Free;
  end;
end;

end.
