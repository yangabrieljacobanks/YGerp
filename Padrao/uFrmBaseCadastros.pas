unit uFrmBaseCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBase, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Touch.GestureCtrls, uDMFrmBaseCadastros, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus;

type
  TFrmBaseCadastros = class(TFrmBase)
    PnlFiltro: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    BtnAdd: TSpeedButton;
    BtnEdit: TSpeedButton;
    BtnCancel: TSpeedButton;
    BtnSave: TSpeedButton;
    BtnAtualizar: TSpeedButton;
    Image2: TImage;
    BtnPrint: TSpeedButton;
    BtnSearch: TSpeedButton;
    BtnHist: TSpeedButton;
    BtnConfiguracoes: TSpeedButton;
    pcCadastros: TPageControl;
    TsFiltros: TTabSheet;
    Panel2: TPanel;
    TsDados: TTabSheet;
    PnlHist: TPanel;
    MemoDebug: TMemo;
    cxgridBaseCadastrosDBTableView1: TcxGridDBTableView;
    cxgridBaseCadastrosLevel1: TcxGridLevel;
    cxgridBaseCadastros: TcxGrid;
    pImprimir: TPopupMenu;
    ImprimirListagem1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnHistClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure cxgridBaseCadastrosDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ModoEdicao;
  protected
    procedure ExecuteOnActivate; virtual;
    procedure ExecuteOnDBGrid1DblClick; virtual;
  end;

var
  FrmBaseCadastros: TFrmBaseCadastros;

implementation

{$R *.dfm}

procedure TFrmBaseCadastros.BtnAddClick(Sender: TObject);
begin
  inherited;
  pcCadastros.ActivePage:= TsDados;
  BtnAdd.Enabled:= False;
  BtnEdit.Enabled:= False;
  BtnCancel.Enabled:= True;
  BtnSave.Enabled:= True;
  BtnAtualizar.Enabled:= False;
end;

procedure TFrmBaseCadastros.BtnAtualizarClick(Sender: TObject);
begin
  inherited;
  {with DMFrmBaseCadastros do
  begin
    qBaseCadastros.Close;
    qBaseCadastros.Open;
  end;}
end;

procedure TFrmBaseCadastros.BtnCancelClick(Sender: TObject);
begin
  inherited;
  BtnAdd.Enabled:= True;
  BtnEdit.Enabled:= True;
  BtnCancel.Enabled:= False;
  BtnSave.Enabled:= False;
  BtnAtualizar.Enabled:= True;
end;

procedure TFrmBaseCadastros.BtnEditClick(Sender: TObject);
begin
  inherited;
  ModoEdicao;
end;

procedure TFrmBaseCadastros.BtnHistClick(Sender: TObject);
begin
  inherited;
  if PnlHist.Visible = True then
    PnlHist.Visible:= False
  else
    PnlHist.Visible:= True;
end;

procedure TFrmBaseCadastros.BtnPrintClick(Sender: TObject);
begin
  inherited;
  pImprimir.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmBaseCadastros.BtnSaveClick(Sender: TObject);
begin
  inherited;
  BtnAdd.Enabled:= True;
  BtnEdit.Enabled:= True;
  BtnCancel.Enabled:= False;
  BtnSave.Enabled:= False;
  BtnAtualizar.Enabled:= True;
end;

procedure TFrmBaseCadastros.BtnSearchClick(Sender: TObject);
begin
  inherited;
  if PnlFiltro.Visible = True then
    PnlFiltro.Visible:= False
  else
    PnlFiltro.Visible:= True;
end;

procedure TFrmBaseCadastros.cxgridBaseCadastrosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  ExecuteOnDBGrid1DblClick;
end;

procedure TFrmBaseCadastros.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ExecuteOnDBGrid1DblClick;
end;

procedure TFrmBaseCadastros.ExecuteOnActivate;
begin
  pcCadastros.ActivePage:= TsFiltros;
  BtnAdd.Enabled:= True;
  BtnEdit.Enabled:= True;
  BtnCancel.Enabled:= False;
  BtnSave.Enabled:= False;
  BtnAtualizar.Enabled:= True;
end;

procedure TFrmBaseCadastros.ExecuteOnDBGrid1DblClick;
begin
  pcCadastros.ActivePage:= TsDados;
end;

procedure TFrmBaseCadastros.FormActivate(Sender: TObject);
begin
  inherited;
  ExecuteOnActivate;
end;

procedure TFrmBaseCadastros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
  FrmBaseCadastros:=nil;
end;

procedure TFrmBaseCadastros.Image2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmBaseCadastros.ModoEdicao;
begin
  //pcCadastros.ActivePage:= TsDados;
  BtnAdd.Enabled:= False;
  BtnEdit.Enabled:= False;
  BtnCancel.Enabled:= True;
  BtnSave.Enabled:= True;
  BtnAtualizar.Enabled:= False;
end;

end.
