unit uFrmBaseCadastrosTiposEntidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCadastros, Data.DB,
  Vcl.ComCtrls, Vcl.Touch.GestureCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, uDMFrmBaseCadastrosTiposEntidades,
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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus;

type
  TFrmBaseCadastrosTiposEntidades = class(TFrmBaseCadastros)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    rgFiltros: TRadioGroup;
    edtfiltro: TEdit;
    cxgridBaseCadastrosDBTableView1ID: TcxGridDBColumn;
    cxgridBaseCadastrosDBTableView1DESCRICAO: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure edtfiltroKeyPress(Sender: TObject; var Key: Char);
    procedure BtnHistClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure ImprimirListagem1Click(Sender: TObject);
  private
    procedure CustomGrids;
  public
    { Public declarations }
  protected
    procedure ExecuteOnActivate; virtual;
    procedure ExecuteOnDBGrid1DblClick; virtual;

  end;

var
  FrmBaseCadastrosTiposEntidades: TFrmBaseCadastrosTiposEntidades;

implementation

{$R *.dfm}

Uses uFrmBaseCadastrosConfiguracaoTiposEntidades, FireDAC.Comp.Client, uDM,
  uFrmBaseRelatoriosTexto, uLibraryBasic;

procedure TFrmBaseCadastrosTiposEntidades.BtnAddClick(Sender: TObject);
begin
  inherited;
  DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.Append;
  DBEdit2.SetFocus;
  DBEdit2.SelectAll;
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnAtualizarClick(Sender: TObject);
var
  wl_ID: integer;
begin
  inherited;
  with DMFrmBaseCadastrosTiposEntidades do
  begin
    wl_ID:= qBaseCadastrosID.AsInteger;

    qBaseCadastros.Close;
    qBaseCadastros.Open;
    qBaseCadastros.Locate('ID',wl_ID, [loCaseInsensitive]);
  end;
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnCancelClick(Sender: TObject);
begin
  inherited;
  if DMFrmBaseCadastrosTiposEntidades.DSqBaseCadastros.DataSet.State in dsEditModes then
    DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.Cancel;
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnConfiguracoesClick(
  Sender: TObject);
begin
  inherited;
  TFrmBaseCadastrosConfiguracaoTiposEntidades.Inicializa(  1
                                                         , 0
                                                         , DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.SQL.Text);
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnEditClick(Sender: TObject);
begin
  inherited;
  pcCadastros.ActivePage:= TsDados;
  DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.Edit;
  DBEdit2.SetFocus;
  DBEdit2.SelectAll;
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnHistClick(Sender: TObject);
begin
  inherited;
  MemoDebug.Lines.Text:= DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.SQL.Text;
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnPrintClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmBaseCadastrosTiposEntidades.BtnSaveClick(Sender: TObject);
begin
  inherited;
  if DMFrmBaseCadastrosTiposEntidades.DSqBaseCadastros.DataSet.State in dsEditModes then
    DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.Post;
end;

procedure TFrmBaseCadastrosTiposEntidades.CustomGrids;
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
  '  AND B.NAME = '''+FrmBaseCadastrosTiposEntidades.Name+'''                           ' ;

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

procedure TFrmBaseCadastrosTiposEntidades.edtfiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    with DMFrmBaseCadastrosTiposEntidades do
    begin
      if Trim(edtfiltro.Text) <> '' then
      begin
        qBaseCadastros.DisableControls;
        qBaseCadastros.Close;
        qBaseCadastros.Filtered:= False;
        if rgFiltros.ItemIndex = 0 then
          qBaseCadastros.Filter:= 'ID = '+Trim(edtfiltro.Text)
        else
        if rgFiltros.ItemIndex = 1 then
          qBaseCadastros.Filter:= 'NAME like '+QuotedStr('%'+Trim(edtfiltro.Text)+'%');
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
    with DMFrmBaseCadastrosTiposEntidades do
    begin
      qBaseCadastros.Close;
      qBaseCadastros.Filtered:= False;
      qBaseCadastros.Open;
    end;
  end;
end;

procedure TFrmBaseCadastrosTiposEntidades.ExecuteOnActivate;
begin
  inherited;
  cxgridBaseCadastrosDBTableView1ID.DataBinding.DataController.DataSource:=
  DMFrmBaseCadastrosTiposEntidades.DSqBaseCadastros;
  BtnAtualizarClick(BtnAtualizar);
end;

procedure TFrmBaseCadastrosTiposEntidades.ExecuteOnDBGrid1DblClick;
begin
  inherited;
end;

procedure TFrmBaseCadastrosTiposEntidades.FormActivate(Sender: TObject);
begin
  inherited;
  ExecuteOnActivate;
  CustomGrids;
end;

procedure TFrmBaseCadastrosTiposEntidades.ImprimirListagem1Click(
  Sender: TObject);
var
  Arq: TextFile;
begin
  inherited;

  if DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.RecordCount > 0 then
  begin
    try
      AssignFile(Arq, 'Temp.txt');
      Rewrite(Arq);
    except
      CloseFile(Arq);
      Rewrite(Arq);
    end;

    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| LISTAGEM DE TIPOS DE ENTIDADES                             |');
    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| CODIGO | NOME / DESCRIÇÃO                                  |');
    WriteLn(Arq, '+------------------------------------------------------------+');

    DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.First;
    while not DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.Eof do
    begin
      WriteLn(Arq, '| '+ fn_Align_a_left(DMFrmBaseCadastrosTiposEntidades.qBaseCadastrosID.AsString, 6) +' | '
                       + fn_Align_a_left(DMFrmBaseCadastrosTiposEntidades.qBaseCadastrosNAME.AsString, 49) +' | '
             );
      DMFrmBaseCadastrosTiposEntidades.qBaseCadastros.Next;
    end;
    WriteLn(Arq, '+------------------------------------------------------------+');
    WriteLn(Arq, '| TOTAL DE REGISTRO(S) -->>>                                 |');
    WriteLn(Arq, '+------------------------------------------------------------+');
    CloseFile(Arq);
    TFrmBaseRelatoriosTexto.Inicializa('Temp.txt', 'Listagem de Tipos de Entidades');
  end
  else
    ShowMessage('Sem registro(s) para exibir!');
end;

end.
