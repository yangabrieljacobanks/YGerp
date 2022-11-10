unit uFrmBaseRelatoriosTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseRelatorios, Vcl.ComCtrls,
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
  Vcl.ExtCtrls;

type
  TFrmBaseRelatoriosTexto = class(TFrmBaseRelatorios)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    cxMemo: TcxMemo;
    Panel4: TPanel;
    Image1: TImage;
    Image2: TImage;
    pnlHeader: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure Inicializa(p_NomeArquivo: string; p_Titulo: string);
  end;

var
  FrmBaseRelatoriosTexto: TFrmBaseRelatoriosTexto;

implementation

{$R *.dfm}

{ TFrmBaseRelatoriosTexto }

{ TFrmBaseRelatoriosTexto }

{ TFrmBaseRelatoriosTexto }

procedure TFrmBaseRelatoriosTexto.Image2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

class procedure TFrmBaseRelatoriosTexto.Inicializa(p_NomeArquivo,
  p_Titulo: string);
begin
  with TFrmBaseRelatoriosTexto.Create(Application) do
  begin
    pnlHeader.Caption:= p_Titulo;
    cxMemo.Lines.LoadFromFile(p_NomeArquivo);
    WindowState:= wsMaximized;
    Show;
  end;
end;

procedure TFrmBaseRelatoriosTexto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  cxMemo.Style.Font.Height:= cxMemo.Style.Font.Height - 1;
end;

procedure TFrmBaseRelatoriosTexto.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  cxMemo.Style.Font.Height:= cxMemo.Style.Font.Height + 1;
end;

end.
