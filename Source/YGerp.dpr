program YGerp;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uFrmBase in '..\Padrao\uFrmBase.pas' {FrmBase},
  uFrmBaseCadastros in '..\Padrao\uFrmBaseCadastros.pas' {FrmBaseCadastros},
  uFrmBaseCadastrosLojas in 'uFrmBaseCadastrosLojas.pas' {FrmBaseCadastrosLojas},
  uDM in 'uDM.pas' {DM: TDataModule},
  uLibraryBasic in '..\Librarys\uLibraryBasic.pas',
  uFrmBaseCadastrosClientes in 'uFrmBaseCadastrosClientes.pas' {FrmBaseCadastrosClientes},
  uFrmBaseCadastrosProdutos in 'uFrmBaseCadastrosProdutos.pas' {FrmBaseCadastrosProdutos},
  uFrmBasePreVenda in '..\Padrao\uFrmBasePreVenda.pas' {FrmBasePreVenda},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uDMFrmBaseCadastros in 'uDMFrmBaseCadastros.pas' {DMFrmBaseCadastros: TDataModule},
  uDMFrmBaseCadastrosClientes in 'uDMFrmBaseCadastrosClientes.pas' {DMFrmBaseCadastrosClientes: TDataModule},
  uFrmBaseCadastrosTiposEntidades in 'uFrmBaseCadastrosTiposEntidades.pas' {FrmBaseCadastrosTiposEntidades},
  uDMFrmBaseCadastrosTiposEntidades in 'uDMFrmBaseCadastrosTiposEntidades.pas' {DMFrmBaseCadastrosTiposEntidades: TDataModule},
  uFrmBaseCadastrosConfiguracao in 'uFrmBaseCadastrosConfiguracao.pas' {FrmBaseCadastrosConfiguracao},
  uFrmBaseCadastrosConfiguracaoClientes in 'uFrmBaseCadastrosConfiguracaoClientes.pas' {FrmBaseCadastrosConfiguracaoClientes},
  uDMFrmBaseCadastrosLojas in 'uDMFrmBaseCadastrosLojas.pas' {DMFrmBaseCadastrosLojas: TDataModule},
  uYG_Dialogs in 'uYG_Dialogs.pas',
  uFrmDlgPergunta in 'uFrmDlgPergunta.pas' {FrmDlgPergunta},
  uYG_Constants in 'uYG_Constants.pas',
  uFrmRelatoriosTexto in 'uFrmRelatoriosTexto.pas' {FrmRelatoriosTexto},
  uFrmBaseCadastrosConfiguracaoLojas in 'uFrmBaseCadastrosConfiguracaoLojas.pas' {FrmBaseCadastrosConfiguracaoLojas},
  uFrmBaseCadastrosConfiguracaoTiposEntidades in 'uFrmBaseCadastrosConfiguracaoTiposEntidades.pas' {FrmBaseCadastrosConfiguracaoTiposEntidades},
  uFrmBaseRelatorios in 'uFrmBaseRelatorios.pas' {FrmBaseRelatorios},
  uFrmBaseRelatoriosTexto in 'uFrmBaseRelatoriosTexto.pas' {FrmBaseRelatoriosTexto},
  uFrmBaseCadastrosFuncionarios in 'uFrmBaseCadastrosFuncionarios.pas' {FrmBaseCadastrosFuncionarios},
  uDMFrmBaseCadastrosFuncionarios in 'uDMFrmBaseCadastrosFuncionarios.pas' {DMFrmBaseCadastrosFuncionarios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmRelatoriosTexto, FrmRelatoriosTexto);
  Application.CreateForm(TFrmBaseRelatorios, FrmBaseRelatorios);
  Application.CreateForm(TFrmBaseRelatoriosTexto, FrmBaseRelatoriosTexto);
  FrmLogin.ShowModal;
  if FrmLogin._SistemaLogado = true then
  begin
    FrmLogin.Visible:= False;
    FrmLogin.FreeOnRelease;
    FrmLogin:= nil;

    {Declaração de Data Modules}
    Application.CreateForm(TDMFrmBaseCadastros, DMFrmBaseCadastros);
    Application.CreateForm(TDMFrmBaseCadastrosLojas, DMFrmBaseCadastrosLojas);
    Application.CreateForm(TDMFrmBaseCadastrosClientes, DMFrmBaseCadastrosClientes);
    Application.CreateForm(TDMFrmBaseCadastrosTiposEntidades, DMFrmBaseCadastrosTiposEntidades);
    Application.CreateForm(TDMFrmBaseCadastrosFuncionarios, DMFrmBaseCadastrosFuncionarios);

    {Declaração de Formulários}
    Application.CreateForm(TFrmBase, FrmBase);
    Application.CreateForm(TFrmBaseCadastros, FrmBaseCadastros);
    FrmBaseCadastros.Visible:= False;
    Application.CreateForm(TFrmBasePreVenda, FrmBasePreVenda);
    Application.CreateForm(TFrmMain, FrmMain);
    FrmMain.ShowModal;
    Application.Run;
  end
  else
  begin
    FrmLogin.Close;
    DM.Destroy;
    Application.FreeOnRelease;
  end;
end.
