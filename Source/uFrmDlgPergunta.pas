unit uFrmDlgPergunta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMemo, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TFrmDlgPergunta = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    mTexto: TcxMemo;
    BtnConfirmar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    pp_Result: Boolean;
  end;

var
  FrmDlgPergunta: TFrmDlgPergunta;

implementation

{$R *.dfm}

procedure TFrmDlgPergunta.BtnCancelarClick(Sender: TObject);
begin
  pp_Result:= False;
  Close;
end;

procedure TFrmDlgPergunta.BtnConfirmarClick(Sender: TObject);
begin
  pp_Result:= True;
  Close;
end;

procedure TFrmDlgPergunta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action := Cafree;
  //FrmDlgPergunta:=nil;
end;

procedure TFrmDlgPergunta.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
