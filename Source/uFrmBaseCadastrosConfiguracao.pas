unit uFrmBaseCadastrosConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBase, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox;

type
  TFrmBaseCadastrosConfiguracao = class(TFrmBase)
    Panel4: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    Panel3: TPanel;
    Image3: TImage;
    pgConfiguracoes: TPageControl;
    tbPersonalizarGride: TTabSheet;
    Label1: TLabel;
    pMenu: TPopupMenu;
    PersonalizarGrid1: TMenuItem;
    qConfiguracoes: TFDQuery;
    DSqConfiguracoes: TDataSource;
    FDUqConfiguracoes: TFDUpdateSQL;
    cxGridConfiguracaoDBTableView1: TcxGridDBTableView;
    cxGridConfiguracaoLevel1: TcxGridLevel;
    cxGridConfiguracao: TcxGrid;
    qConfiguracoesID_USER: TIntegerField;
    qConfiguracoesNAME_USER: TStringField;
    qConfiguracoesID_FORM: TIntegerField;
    qConfiguracoesNAME_FORM: TStringField;
    qConfiguracoesID_GRID: TIntegerField;
    qConfiguracoesNAME_GRID: TStringField;
    qConfiguracoesID_FIELD: TIntegerField;
    qConfiguracoesNAME_FIELD: TStringField;
    qConfiguracoesVISIBLE: TStringField;
    qConfiguracoesSIZE: TIntegerField;
    cxGridConfiguracaoDBTableView1ID_USER: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1NAME_USER: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1ID_FORM: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1NAME_FORM: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1ID_GRID: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1NAME_GRID: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1ID_FIELD: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1NAME_FIELD: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1VISIBLE: TcxGridDBColumn;
    cxGridConfiguracaoDBTableView1SIZE: TcxGridDBColumn;
    procedure Image2Click(Sender: TObject);
    procedure PersonalizarGrid1Click(Sender: TObject);
    procedure qConfiguracoesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaseCadastrosConfiguracao: TFrmBaseCadastrosConfiguracao;

implementation

{$R *.dfm}

Uses uDM;

procedure TFrmBaseCadastrosConfiguracao.Image2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmBaseCadastrosConfiguracao.PersonalizarGrid1Click(Sender: TObject);
begin
  inherited;
  pgConfiguracoes.Visible:= True;
  tbPersonalizarGride.TabVisible:= True;
  pgConfiguracoes.ActivePage:= tbPersonalizarGride;
end;

procedure TFrmBaseCadastrosConfiguracao.qConfiguracoesAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qConfiguracoes.ApplyUpdates(-1);
end;

end.
