unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBase, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, dxGDIPlusClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Buttons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit;

type
  TFrmLogin = class(TFrmBase)
    Panel1: TPanel;
    Image3: TImage;
    ImgPassOK: TImage;
    Image5: TImage;
    ImgUserOK: TImage;
    ImgUserCancel: TImage;
    ImgPassCancel: TImage;
    Shape1: TShape;
    Edit1: TEdit;
    Shape2: TShape;
    Image2: TImage;
    BtnConfirmar: TSpeedButton;
    cxListaLojas: TcxImageComboBox;
    Edit2: TEdit;
    Panel2: TPanel;
    Image1: TImage;
    Image4: TImage;
    Panel5: TPanel;
    Panel3: TPanel;
    Timer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Image4Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure cxListaLojasKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    procedure DrawControl(Control: TWinControl);
    function ValidaUsername(p_Username: string): boolean;
    function ValidaPassword(p_Password: string): boolean;
    function ValidaUsernamePassWord(p_Field, p_Value: string): boolean;
  public
    { Public declarations }
    _SistemaLogado: boolean;
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFrmLogin.cxListaLojasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
    BtnConfirmar.Visible:= (ImgUserOK.Visible and ImgPassOK.Visible);
    if BtnConfirmar.Visible = True then
    begin
      _SistemaLogado:= True;
      FrmLogin.Close;
    end
    else
    begin
      _SistemaLogado:= False;
    end;
  end;
end;

procedure TFrmLogin.DrawControl(Control: TWinControl);
var
   R: TRect;
   Rgn: HRGN;
begin
  with Control do  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10) ;
    Perform(EM_GETRECT, 0, lParam(@r)) ;
    InflateRect(r, - 4, - 4) ;
    Perform(EM_SETRECTNP, 0, lParam(@r)) ;
    SetWindowRgn(Handle, rgn, True) ;
    Invalidate;
  end;
end;

procedure TFrmLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if ValidaUsername(Edit1.Text) then
    begin
      StatusBar1.Panels[1].Text:= 'Digite a sua senha!';
      ImgUserOK.Visible:= True;
      ImgUserCancel.Visible:= False;
      Edit2.SetFocus;
      Edit2.SelectAll;
    end
    else
    begin
      StatusBar1.Panels[1].Text:= 'Usuário não cadastrado no sistema!';
      ImgUserOK.Visible:= False;
      ImgUserCancel.Visible:= True;
      Edit1.SetFocus;
      Edit1.SelectAll;
    end;
  end;
end;

procedure TFrmLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if ValidaPassword(Edit2.Text) then
    begin
      StatusBar1.Panels[1].Text:= 'Selecione a Loja para entrar no sistema!';
      ImgPassOK.Visible:= True;
      ImgPassCancel.Visible:= False;
      cxListaLojas.SetFocus;
      cxListaLojas.DroppedDown:= True;
    end
    else
    begin
      StatusBar1.Panels[1].Text:= 'Senha inválida, tente outra vez!!';
      ImgPassOK.Visible:= False;
      ImgPassCancel.Visible:= True;
      Edit2.SetFocus;
      Edit2.SelectAll;
    end;
  end;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  inherited;
  _SistemaLogado:= False;

  Edit1.BorderStyle := bsNone;
  DrawControl(Edit1);

  Edit2.BorderStyle := bsNone;
  DrawControl(Edit2);

  Timer.Enabled:= True;
end;

procedure TFrmLogin.Image4Click(Sender: TObject);
begin
  inherited;
  Timer.Enabled:= False;
  Close;
end;

procedure TFrmLogin.TimerTimer(Sender: TObject);
begin
  inherited;
  StatusBar1.Panels[0].Text:= FormatDateTime('DD/MM/YYYY : hh:nn:ss', Now);
end;

function TFrmLogin.ValidaPassword(p_Password: string): boolean;
begin
  if (p_Password = '') then
  begin
    StatusBar1.Panels[1].Text:= 'É necessário preencher a Senha!';
    Result:= False;
    Abort;
  end
  else
  if (p_Password <> '') then
  begin
    if ValidaUsernamePassWord('PASSWORD', Edit2.Text) then
      Result:= True;
  end;
end;

function TFrmLogin.ValidaUsername(p_Username: string): boolean;
begin
  if (p_Username = '') then
  begin
    StatusBar1.Panels[1].Text:= 'É necessário preencher o Usuário!';
    Result:= False;
    Abort;
  end
  else
  if (p_Username <> '') then
  begin
    if ValidaUsernamePassWord('USUARIO', Edit1.Text) then
      Result:= True;
  end;
end;

function TFrmLogin.ValidaUsernamePassWord(p_Field, p_Value: string): boolean;
begin
  if p_Field = 'USUARIO' then
  begin
    if p_Value = 'ADM' then
      Result:= True
    else
      Result:= False;
  end
  else
  if p_Field = 'PASSWORD' then
  begin
    if p_Value = '123' then
      Result:= True
    else
      Result:= False;
  end;
end;

end.
