unit uLibraryBasic;

interface

Uses

SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,Dialogs,
StdCtrls, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
cxGridDBTableView, cxGrid, cxGridExportLink, Vcl.Forms, Winapi.ShellAPI;

function fn_Add(var wl_List: array of Real):Real;
function fn_Subtract(var wl_List: array of Real):Real;
function fn_Multiply(var wl_List: array of Real):Real;
function fn_Share(var wl_List: array of Real):Real;
function fn_Align_a_left(p_string: string; p_size: integer) : string;
procedure ExportFor( cxGrid :TcxGrid);

implementation


function fn_Add(var wl_List: array of Real):Real;
var
  wl_tam, i: integer;
  wl_add: real;
begin
  wl_add:= 0;
  wl_tam:= Length(wl_List);
  for i := 0 to (wl_tam - 1) do
  begin
    wl_add:= wl_add + wl_List[i];
  end;
  Result:= wl_add;
end;

function fn_Subtract(var wl_List: array of Real):Real;
var
  wl_tam, i: integer;
  wl_Subtract: real;
begin
  wl_Subtract:= 0;
  wl_tam:= Length(wl_List);
  for i := 0 to (wl_tam - 1) do
  begin
    wl_Subtract:= wl_Subtract - wl_List[i];
  end;
  Result:= wl_Subtract;
end;

function fn_Multiply(var wl_List: array of Real):Real;
var
  wl_tam, i: integer;
  wl_Multiply: real;
begin
  wl_Multiply:= 0;
  wl_tam:= Length(wl_List);
  for i := 0 to (wl_tam - 1) do
  begin
    wl_Multiply:= wl_Multiply * wl_List[i];
  end;
  Result:= wl_Multiply;
end;

function fn_Share(var wl_List: array of Real):Real;
var
  wl_tam, i: integer;
  wl_Share: real;
begin
  wl_Share:= 0;
  wl_tam:= Length(wl_List);
  for i := 0 to (wl_tam - 1) do
  begin
    wl_Share:= wl_Share / wl_List[i];
  end;
  Result:= wl_Share;
end;

function fn_Align_a_left(p_string : string; p_size: integer) : string;
var
  v_start, v_aux: integer;
begin
  v_aux    := p_size;
  p_size := (p_size - Length(p_string));

  for v_start := 1 to (p_size) do
  begin
    p_string:= p_string + ' ';
  end;

  Result:= Copy(p_string, 1, v_aux);
end;

procedure ExportFor(cxGrid :TcxGrid);
var
  FileExt: String;
  SaveExportGrid: TSaveDialog;
begin
  SaveExportGrid:= TSaveDialog.Create(nil);
  try

    SaveExportGrid.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
    SaveExportGrid.Title := 'Exportar Dados';
    SaveExportGrid.DefaultExt:= 'xls';
    if SaveExportGrid.Execute then
    begin
      FileExt := LowerCase(ExtractFileExt(SaveExportGrid.FileName));
      if FileExt = '.xls' then
        ExportGridToExcel(SaveExportGrid.FileName,cxGrid)
      else if FileExt = '.xml' then
         ExportGridToXML(SaveExportGrid.FileName, cxGrid)
      else if FileExt = '.txt' then
         ExportGridToText(SaveExportGrid.FileName, cxGrid)
      else  if FileExt = '.html' then
        ExportGridToHTML(SaveExportGrid.FileName, cxGrid);
    End;
    if not (SaveExportGrid.FileName = ExtractfilePath(Application.name)) then
      ShellExecute(0, 'open', pchar(SaveExportGrid.FileName), nil, nil, SW_SHOW);
  finally
     SaveExportGrid.Free;
  end;
end;

end.
