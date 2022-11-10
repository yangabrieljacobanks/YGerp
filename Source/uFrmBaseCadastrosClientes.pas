unit uFrmBaseCadastrosClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastros, Data.DB,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, uDMFrmBaseCadastrosClientes,
  Vcl.ComCtrls, Vcl.Touch.GestureCtrls, Vcl.StdCtrls, Vcl.Mask, cxGraphics,
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
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, Vcl.Menus,
  FireDAC.Comp.Client;

type
  TFrmBaseCadastrosClientes = class(TFrmBaseCadastros)
    dbID: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbDESCRICAO: TDBEdit;
    Label3: TLabel;
    dbDESCRICAO2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbCPF_CNPJ: TDBEdit;
    Label8: TLabel;
    dbDATANASCIMENTO: TDBEdit;
    Label9: TLabel;
    pnlDadosRodaPe: TPanel;
    Label10: TLabel;
    dbDATACADASTRO: TDBEdit;
    Label11: TLabel;
    dbDATAATUALIZACAO: TDBEdit;
    Label12: TLabel;
    dbUSUARIOCADASTRO: TDBEdit;
    Label13: TLabel;
    dbUSUARIOATUALIZACAO: TDBEdit;
    Label14: TLabel;
    dbENDERECO: TDBEdit;
    Label15: TLabel;
    dbNUMERO: TDBEdit;
    Label16: TLabel;
    dbCEP: TDBEdit;
    Label17: TLabel;
    dbCOMPLEMENTO: TDBEdit;
    Label18: TLabel;
    dbPONTODEREFERENCIA: TDBEdit;
    cxgridBaseCadastrosDBTableView1ID: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1CPF_CNPJ: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO2: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1ATIVO: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1TIPO_FJ: TcxGridDBColumn;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    procedure BtnAtualClick(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ImprimirListagem1Click(Sender: TObject);
  private
    procedure CustomGrids;
  public
    { Public declarations }
  end;

var
  FrmBaseCadastrosClientes: TFrmBaseCadastrosClientes;

implementation

{$R *.dfm}

Uses uYG_Dialogs, uYG_Constants, uFrmBaseCadastrosConfiguracaoClientes,
     uDM, uFrmBaseRelatoriosTexto, uLibraryBasic;

procedure TFrmBaseCadastrosClientes.BtnAddClick(Sender: TObject);
begin
  inherited;
  DMFrmBaseCadastrosClientes.qBaseCadastros.Append;
  dbCPF_CNPJ.SetFocus;
  dbCPF_CNPJ.SelectAll;
end;

procedure TFrmBaseCadastrosClientes.BtnAtualClick(Sender: TObject);
begin
  inherited;
  with DMFrmBaseCadastrosClientes do
  begin
    qBaseCadastros.Close;
    qBaseCadastros.Open;
  end;
end;

procedure TFrmBaseCadastrosClientes.BtnCancelClick(Sender: TObject);
begin
  inherited;
  BtnAtualClick(BtnAtualizar);
end;

procedure TFrmBaseCadastrosClientes.BtnConfiguracoesClick(Sender: TObject);
begin
  inherited;
  TFrmBaseCadastrosConfiguracaoClientes.Inicializa(  1
                                                   , 2
                                                   , DMFrmBaseCadastrosClientes.qBaseCadastros.SQL.Text);
end;

procedure TFrmBaseCadastrosClientes.BtnEditClick(Sender: TObject);
begin
  inherited;
  if not (DMFrmBaseCadastrosClientes.qBaseCadastros.State = dsEdit) then
  begin
    if pcCadastros.ActivePage = TsFiltros then
      pcCadastros.ActivePage:= TsDados;

    if pcCadastros.ActivePage = TsDados then
    begin
      DMFrmBaseCadastrosClientes.qBaseCadastros.Edit;
      dbCPF_CNPJ.SetFocus;
      dbCPF_CNPJ.SelectAll;
    end;
  end;
end;

procedure TFrmBaseCadastrosClientes.BtnSaveClick(Sender: TObject);
begin
  inherited;
  if DMFrmBaseCadastrosClientes.DSqBaseCadastros.DataSet.State in dsEditModes then
    DMFrmBaseCadastrosClientes.qBaseCadastros.Post;
end;

procedure TFrmBaseCadastrosClientes.FormActivate(Sender: TObject);
begin
  inherited;
  CustomGrids;
end;

procedure TFrmBaseCadastrosClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMFrmBaseCadastrosClientes.qBaseCadastros.State in dsEditModes then
  begin
    if Pergunta(cs_ExitQuestion) then
      DMFrmBaseCadastrosClientes.qBaseCadastros.Post
    else
      DMFrmBaseCadastrosClientes.qBaseCadastros.Cancel;
  end;

  With DMFrmBaseCadastrosClientes do
  begin
    if qTipoEntidadesLK.Active then qTipoEntidadesLK.Close;
    if qBaseCadastros.Active   then qBaseCadastros.Close;
  end;

  inherited;
end;

procedure TFrmBaseCadastrosClientes.ImprimirListagem1Click(Sender: TObject);
var
  Arq: TextFile;
begin
  inherited;

  if DMFrmBaseCadastrosClientes.qBaseCadastros.RecordCount > 0 then
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

    DMFrmBaseCadastrosClientes.qBaseCadastros.First;
    while not DMFrmBaseCadastrosClientes.qBaseCadastros.Eof do
    begin
      WriteLn(Arq, '| '+ fn_Align_a_left(DMFrmBaseCadastrosClientes.qBaseCadastrosID.AsString, 6) +' | '
                       + fn_Align_a_left(DMFrmBaseCadastrosClientes.qBaseCadastrosDESCRICAO.AsString, 49) +' | '
             );
      DMFrmBaseCadastrosClientes.qBaseCadastros.Next;
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

procedure TFrmBaseCadastrosClientes.CustomGrids;
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
  '  AND B.NAME = '''+FrmBaseCadastrosClientes.Name+'''                                 ' ;

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

end.
