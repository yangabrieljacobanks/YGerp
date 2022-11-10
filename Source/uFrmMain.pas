unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ToolWin,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls;

type
  TFrmMain = class(TForm)
    MainMenuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Lojas1: TMenuItem;
    Clientes1: TMenuItem;
    Funcionrios1: TMenuItem;
    PnlPrincipal: TPanel;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BtnCadastrosLojas: TSpeedButton;
    BtnMovimentacoesPreVenda: TSpeedButton;
    BtnCadastrosProdutos: TSpeedButton;
    BtnCadastrosClientes: TSpeedButton;
    StatusBar1: TStatusBar;
    ipodeEntidades1: TMenuItem;
    Auxiliares1: TMenuItem;
    procedure BtnCadastrosProdutosClick(Sender: TObject);
    procedure BtnMovimentacoesPreVendaClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure BtnCadastrosClientesClick(Sender: TObject);
    procedure ipodeEntidades1Click(Sender: TObject);
    procedure Lojas1Click(Sender: TObject);
    procedure BtnCadastrosLojasClick(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

Uses uFrmBaseCadastrosLojas, uFrmBaseCadastrosClientes, uFrmBaseCadastrosProdutos,
uFrmBasePreVenda, uFrmLogin, uFrmBaseCadastrosTiposEntidades, uFrmBaseCadastrosFuncionarios;

{$R *.dfm}

procedure TFrmMain.BtnCadastrosClientesClick(Sender: TObject);
begin
  Clientes1Click(Sender);
end;

procedure TFrmMain.BtnCadastrosLojasClick(Sender: TObject);
begin
  Lojas1Click(Sender);
end;

procedure TFrmMain.BtnCadastrosProdutosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBaseCadastrosProdutos,FrmBaseCadastrosProdutos);
    FrmBaseCadastrosProdutos.Show;
  except
    FrmBaseCadastrosProdutos.Release;
  end;
end;

procedure TFrmMain.BtnMovimentacoesPreVendaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBasePreVenda,FrmBasePreVenda);
    FrmBasePreVenda.ShowModal;
  except
    FrmBasePreVenda.Release;
  end;
end;

procedure TFrmMain.Clientes1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBaseCadastrosClientes,FrmBaseCadastrosClientes);
    FrmBaseCadastrosClientes.Show;
  except
    FrmBaseCadastrosClientes.Release;
  end;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmMain.Funcionrios1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBaseCadastrosFuncionarios,FrmBaseCadastrosFuncionarios);
    FrmBaseCadastrosFuncionarios.Show;
  except
    FrmBaseCadastrosFuncionarios.Release;
  end;
end;

procedure TFrmMain.ipodeEntidades1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBaseCadastrosTiposEntidades,FrmBaseCadastrosTiposEntidades);
    FrmBaseCadastrosTiposEntidades.Show;
  except
    FrmBaseCadastrosTiposEntidades.Release;
  end;
end;

procedure TFrmMain.Lojas1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBaseCadastrosLojas,FrmBaseCadastrosLojas);
    FrmBaseCadastrosLojas.Show;
  except
    FrmBaseCadastrosLojas.Release;
  end;
end;

procedure TFrmMain.SpeedButton2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmLogin,FrmLogin);
    FrmLogin.Show;
  except
    FrmLogin.Release;
  end;
end;

procedure TFrmMain.SpeedButton3Click(Sender: TObject);
begin
  Funcionrios1Click(Sender);
end;

end.
