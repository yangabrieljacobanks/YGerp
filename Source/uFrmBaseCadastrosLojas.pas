unit uFrmBaseCadastrosLojas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastros, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox, cxDBEdit, Vcl.Menus, FireDAC.Comp.Client;

type
  TFrmBaseCadastrosLojas = class(TFrmBaseCadastros)
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
    dbDATACRIACAO: TDBEdit;
    dbENDERECO: TDBEdit;
    dbNUMERO: TDBEdit;
    dbCEP: TDBEdit;
    dbCOMPLEMENTO: TDBEdit;
    dbPONTODEREFERENCIA: TDBEdit;
    pnlDadosRodaPe: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbDATACADASTRO: TDBEdit;
    dbDATAATUALIZACAO: TDBEdit;
    dbUSUARIOCADASTRO: TDBEdit;
    dbUSUARIOATUALIZACAO: TDBEdit;
    cxgridBaseCadastrosDBTableView1ID: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO2: TcxGridDBColumn;
    dbID_TIPOENTIDADES: TcxDBLookupComboBox;
    Label6: TLabel;
    dbTIPO_FJ: TcxDBImageComboBox;
    dbATIVO: TcxDBImageComboBox;
    Label7: TLabel;
    dbINSCRICAO_ESTADUAL: TDBEdit;
    Label19: TLabel;
    dbDATAABERTURA: TDBEdit;
    rgFiltros: TRadioGroup;
    edtfiltro: TEdit;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure cxgridBaseCadastrosDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtfiltroKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImprimirListagem1Click(Sender: TObject);
  private
    procedure CustomGrids;
  public
    { Public declarations }
  end;

var
  FrmBaseCadastrosLojas: TFrmBaseCadastrosLojas;

implementation

Uses uDMFrmBaseCadastrosLojas, uFrmBaseCadastrosConfiguracaoLojas, uDM,
     uFrmBaseRelatoriosTexto, uLibraryBasic;

{$R *.dfm}

procedure TFrmBaseCadastrosLojas.BtnAddClick(Sender: TObject);
begin
  inherited;
  DMFrmBaseCadastrosLojas.qBaseCadastros.Append;
  dbCPF_CNPJ.SetFocus;
  dbCPF_CNPJ.SelectAll;
end;

procedure TFrmBaseCadastrosLojas.BtnAtualizarClick(Sender: TObject);
begin
  inherited;
  with DMFrmBaseCadastrosLojas do
  begin
    qBaseCadastros.Close;
    qBaseCadastros.Open;
  end;
end;

procedure TFrmBaseCadastrosLojas.BtnConfiguracoesClick(Sender: TObject);
begin
  inherited;
  TFrmBaseCadastrosConfiguracaoLojas.Inicializa(  1
                                                , 1
                                                , DMFrmBaseCadastrosLojas.qBaseCadastros.SQL.Text);
end;

procedure TFrmBaseCadastrosLojas.BtnEditClick(Sender: TObject);
begin
  inherited;
  if not (DMFrmBaseCadastrosLojas.qBaseCadastros.State = dsEdit) then
  begin
    DMFrmBaseCadastrosLojas.qBaseCadastros.Edit;
    dbCPF_CNPJ.SetFocus;
    dbCPF_CNPJ.SelectAll;
  end;
end;

procedure TFrmBaseCadastrosLojas.BtnSaveClick(Sender: TObject);
begin
  inherited;
  if DMFrmBaseCadastrosLojas.DSqBaseCadastros.DataSet.State in dsEditModes then
    DMFrmBaseCadastrosLojas.qBaseCadastros.Post;
end;

procedure TFrmBaseCadastrosLojas.CustomGrids;
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
  '  AND B.NAME = '''+FrmBaseCadastrosLojas.Name+'''                                    ' ;

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

procedure TFrmBaseCadastrosLojas.cxgridBaseCadastrosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  pcCadastros.ActivePage:= TsDados;
end;

procedure TFrmBaseCadastrosLojas.edtfiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    with DMFrmBaseCadastrosLojas do
    begin
      if Trim(edtfiltro.Text) <> '' then
      begin
        qBaseCadastros.DisableControls;
        qBaseCadastros.Close;
        qBaseCadastros.Filtered:= False;
        case rgFiltros.ItemIndex of
          0: qBaseCadastros.Filter:= 'ID = '+Trim(edtfiltro.Text);
          1: qBaseCadastros.Filter:= 'CPF_CNPJ like '+QuotedStr('%'+Trim(edtfiltro.Text)+'%');
          2: qBaseCadastros.Filter:= 'DESCRICAO like '+QuotedStr('%'+Trim(edtfiltro.Text)+'%');
          3: qBaseCadastros.Filter:= 'DESCRICAO2 like '+QuotedStr('%'+Trim(edtfiltro.Text)+'%');
          4: qBaseCadastros.Filter:= 'ENDERECO like '+QuotedStr('%'+Trim(edtfiltro.Text)+'%');
          5: qBaseCadastros.Filter:= 'PONTOREFERENCIA like '+QuotedStr('%'+Trim(edtfiltro.Text)+'%');
        end;
        qBaseCadastros.Filtered:= True;
        qBaseCadastros.Open;
        qBaseCadastros.EnableControls;
      end
      else
      begin
        qBaseCadastros.Close;
        qBaseCadastros.Open;
      end;

    end;
  end;

  if Key = #27 then
  begin
    edtfiltro.Clear;
    with DMFrmBaseCadastrosLojas do
    begin
      qBaseCadastros.Close;
      qBaseCadastros.Filtered:= False;
      qBaseCadastros.Open;
    end;
  end;
end;

procedure TFrmBaseCadastrosLojas.FormActivate(Sender: TObject);
begin
  inherited;
  CustomGrids;
end;

procedure TFrmBaseCadastrosLojas.FormShow(Sender: TObject);
begin
  inherited;
  with DMFrmBaseCadastrosLojas do
  begin
    if not qTipoEntidadesLK.Active  then qTipoEntidadesLK.Open;
  end;
end;

procedure TFrmBaseCadastrosLojas.Image2Click(Sender: TObject);
begin
  inherited;
  with DMFrmBaseCadastrosLojas do
  begin
    if qBaseCadastros.Active    then qBaseCadastros.Close;
    if qTipoEntidadesLK.Active  then qTipoEntidadesLK.Close;
  end;
end;

procedure TFrmBaseCadastrosLojas.ImprimirListagem1Click(Sender: TObject);
var
  Arq: TextFile;
begin
  inherited;

  if DMFrmBaseCadastrosLojas.qBaseCadastros.RecordCount > 0 then
  begin
    try
      AssignFile(Arq, 'Temp.txt');
      Rewrite(Arq);
    except
      CloseFile(Arq);
      Rewrite(Arq);
    end;

    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| LISTAGEM DE LOJAS                                          |');
    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| CODIGO | RAZÃO SOCIAL / DESCRIÇÃO                          |');
    WriteLn(Arq, '+------------------------------------------------------------+');

    DMFrmBaseCadastrosLojas.qBaseCadastros.First;
    while not DMFrmBaseCadastrosLojas.qBaseCadastros.Eof do
    begin
      WriteLn(Arq, '| '+ fn_Align_a_left(DMFrmBaseCadastrosLojas.qBaseCadastrosID.AsString, 6) +' | '
                       + fn_Align_a_left(DMFrmBaseCadastrosLojas.qBaseCadastrosDESCRICAO.AsString, 49) +' | '
             );
      DMFrmBaseCadastrosLojas.qBaseCadastros.Next;
    end;
    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| TOTAL DE REGISTRO(S) -->>>                                 |');
    WriteLn(Arq, '+------------------------------------------------------------+');
    CloseFile(Arq);
    TFrmBaseRelatoriosTexto.Inicializa('Temp.txt', 'Listagem de Lojas');
  end
  else
    ShowMessage('Sem registro(s) para exibir!');
end;

end.
