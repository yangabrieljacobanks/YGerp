unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  TDM = class(TDataModule)
    MySQLDriverLink: TFDPhysMySQLDriverLink;
    Conexao: TFDConnection;
    GUIxWaitCursor: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
