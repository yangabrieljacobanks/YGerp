unit uFrmBaseCadastrosFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastros, cxGraphics,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.Menus, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, Vcl.Mask, Vcl.DBCtrls,
  dxGDIPlusClasses;

type
  TFrmBaseCadastrosFuncionarios = class(TFrmBaseCadastros)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dbID: TDBEdit;
    dbDESCRICAO: TDBEdit;
    dbDESCRICAO2: TDBEdit;
    dbCPF_CNPJ: TDBEdit;
    dbDATANASCIMENTO: TDBEdit;
    pnlDadosRodaPe: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbDATACADASTRO: TDBEdit;
    dbDATAATUALIZACAO: TDBEdit;
    dbUSUARIOCADASTRO: TDBEdit;
    dbUSUARIOATUALIZACAO: TDBEdit;
    dbENDERECO: TDBEdit;
    dbNUMERO: TDBEdit;
    dbCEP: TDBEdit;
    dbCOMPLEMENTO: TDBEdit;
    dbPONTODEREFERENCIA: TDBEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxgridBaseCadastrosDBTableView1ID: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO2: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1ATIVO: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1TIPO_FJ: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1CPF_CNPJ: TcxGridDBColumn;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirListagem1Click(Sender: TObject);
    procedure cxgridBaseCadastrosDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure CustomGrids;
  public
    { Public declarations }
  end;

var
  FrmBaseCadastrosFuncionarios: TFrmBaseCadastrosFuncionarios;

implementation

Uses uDMFrmBaseCadastrosFuncionarios, uYG_Dialogs, uYG_Constants, uLibraryBasic,
  uFrmBaseRelatoriosTexto, FireDAC.Comp.Client, uDM;

{$R *.dfm}

procedure TFrmBaseCadastrosFuncionarios.BtnAddClick(Sender: TObject);
begin
  inherited;
  DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Append;
  dbCPF_CNPJ.SetFocus;
  dbCPF_CNPJ.SelectAll;
end;

procedure TFrmBaseCadastrosFuncionarios.BtnAtualizarClick(Sender: TObject);
begin
  inherited;
  with DMFrmBaseCadastrosFuncionarios do
  begin
    qBaseCadastros.Close;
    qBaseCadastros.Open;
  end;
end;

procedure TFrmBaseCadastrosFuncionarios.BtnCancelClick(Sender: TObject);
begin
  inherited;
  BtnAtualizarClick(BtnAtualizar);
end;

procedure TFrmBaseCadastrosFuncionarios.BtnConfiguracoesClick(Sender: TObject);
begin
  inherited;
{  TFrmBaseCadastrosConfiguracaoClientes.Inicializa(  1
                                                   , 2
                                                   , DMFrmBaseCadastrosClientes.qBaseCadastros.SQL.Text);}
end;

procedure TFrmBaseCadastrosFuncionarios.BtnEditClick(Sender: TObject);
begin
  inherited;
  if not (DMFrmBaseCadastrosFuncionarios.qBaseCadastros.State = dsEdit) then
  begin
    if pcCadastros.ActivePage = TsFiltros then
      pcCadastros.ActivePage:= TsDados;

    if pcCadastros.ActivePage = TsDados then
    begin
      DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Edit;
      dbCPF_CNPJ.SetFocus;
      dbCPF_CNPJ.SelectAll;
    end;
  end;
end;

procedure TFrmBaseCadastrosFuncionarios.BtnSaveClick(Sender: TObject);
begin
  inherited;
  if DMFrmBaseCadastrosFuncionarios.DSqBaseCadastros.DataSet.State in dsEditModes then
    DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Post;
end;

procedure TFrmBaseCadastrosFuncionarios.CustomGrids;
var
  wl_SQL: string;
  xQryLocal: TFDQuery;
  i : integer;
begin
  wl_SQL:= ' SELECT A.ID_USER                                                           ' +
  '               , NAME_USER = C.NICKNAME                                              ' +
  '               , A.ID_FORM                                                           ' +
  '               , NAME_FORM = B.NAME                                                  ' +
  '               , A.ID_GRID                                                           ' +
	'               , NAME_GRID = D.NAME                                                  ' +
  '               , A.ID_FIELD                                                          ' +
	'               , NAME_FIELD = E.NAME                                                 ' +
  '               , A.VISIBLE                                                           ' +
  '               , A.SIZE                                                              ' +
  'FROM VISUAL_CONFIGURATION A                                                          ' +
  'INNER JOIN FORMS B ON (A.ID_FORM = B.ID)                                             ' +
  'INNER JOIN USERS C ON (A.ID_USER = C.ID)                                             ' +
  'INNER JOIN GRIDS D ON (D.ID_FORM = B.ID AND A.ID_GRID = D.ID)                        ' +
  'INNER JOIN FIELDS E ON (E.ID_FORM = B.ID AND E.ID_GRID = D.ID AND A.ID_FIELD = E.ID) ' +
  'WHERE C.NICKNAME = ''ADM''                                                           ' +
  '  AND B.NAME = '''+FrmBaseCadastrosFuncionarios.Name+'''                                 ' ;

  xQryLocal:= TFDQuery.Create(nil);
  xQryLocal.Connection:= DM.Conexao;
  xQryLocal.Close;
  xQryLocal.SQL.Text:= wl_SQL;
  xQryLocal.Prepare;
  xQryLocal.Open;
  if xQryLocal.RecordCount > 0 then
  begin
    while not xQryLocal.Eof do
    begin
      if xQryLocal.FieldByName('NAME_GRID').AsString = cxgridBaseCadastros.Name then
      begin
        for i := 0 to (cxgridBaseCadastrosDBTableView1.ColumnCount - 1) do
        begin
          if cxgridBaseCadastrosDBTableView1.Columns[i].DataBinding.FieldName = xQryLocal.FieldByName('NAME_FIELD').AsString then
          begin
            if xQryLocal.FieldByName('VISIBLE').AsString = 'S' then
              cxgridBaseCadastrosDBTableView1.Columns[i].Visible:= True
            else
              cxgridBaseCadastrosDBTableView1.Columns[i].Visible:= False;
            cxgridBaseCadastrosDBTableView1.Columns[i].width:= xQryLocal.FieldByName('SIZE').Value;
          end;
        end;
      end;
      xQryLocal.Next;
    end;
  end;
end;

procedure TFrmBaseCadastrosFuncionarios.cxgridBaseCadastrosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  pcCadastros.ActivePage:= TsDados;
end;

procedure TFrmBaseCadastrosFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMFrmBaseCadastrosFuncionarios.qBaseCadastros.State in dsEditModes then
  begin
    if Pergunta(cs_ExitQuestion) then
      DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Post
    else
      DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Cancel;
  end;

  With DMFrmBaseCadastrosFuncionarios do
  begin
    if qTipoEntidadesLK.Active then qTipoEntidadesLK.Close;
    if qBaseCadastros.Active   then qBaseCadastros.Close;
  end;

  inherited;
end;

procedure TFrmBaseCadastrosFuncionarios.ImprimirListagem1Click(Sender: TObject);
var
  Arq: TextFile;
begin
  inherited;

  if DMFrmBaseCadastrosFuncionarios.qBaseCadastros.RecordCount > 0 then
  begin
    try
      AssignFile(Arq, 'Temp.txt');
      Rewrite(Arq);
    except
      CloseFile(Arq);
      Rewrite(Arq);
    end;

    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| LISTAGEM DE CLIENTES                                       |');
    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| CODIGO | NOME / DESCRIÇÃO                                  |');
    WriteLn(Arq, '+------------------------------------------------------------+');

    DMFrmBaseCadastrosFuncionarios.qBaseCadastros.First;
    while not DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Eof do
    begin
      WriteLn(Arq, '| '+ fn_Align_a_left(DMFrmBaseCadastrosFuncionarios.qBaseCadastrosID.AsString, 6) +' | '
                       + fn_Align_a_left(DMFrmBaseCadastrosFuncionarios.qBaseCadastrosDESCRICAO.AsString, 49) +' | '
             );
      DMFrmBaseCadastrosFuncionarios.qBaseCadastros.Next;
    end;
    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| TOTAL DE REGISTRO(S) -->>>                                 |');
    WriteLn(Arq, '+------------------------------------------------------------+');
    CloseFile(Arq);
    TFrmBaseRelatoriosTexto.Inicializa('Temp.txt', 'Listagem de Clientes');
  end
  else
    ShowMessage('Sem registro(s) para exibir!');
end;

end.
