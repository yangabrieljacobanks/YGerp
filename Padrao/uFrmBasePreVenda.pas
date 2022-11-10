unit uFrmBasePreVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBase, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFrmBasePreVenda = class(TFrmBase)
    PnlPreVenda: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Image1: TImage;
    Shape3: TShape;
    DBText1: TDBText;
    Shape4: TShape;
    DBImage1: TDBImage;
    Shape5: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape7: TShape;
    Label4: TLabel;
    Shape8: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Label6: TLabel;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Shape13: TShape;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label8: TLabel;
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ArredondarComponente(componente: TWinControl; Y:String);
  end;

var
  FrmBasePreVenda: TFrmBasePreVenda;

implementation

{$R *.dfm}

{ TFrmBasePreVenda }

procedure TFrmBasePreVenda.ArredondarComponente(componente: TWinControl; Y:String);
var
   BX: TRect;
   mdo: HRGN;
begin
  with componente do
begin
 BX := ClientRect;
 mdo := CreateRoundRectRgn(BX.Left, BX.Top, BX.Right, BX.Bottom,
StrToInt(Y), StrToInt(Y)) ;
 Perform(EM_GETRECT, 0, lParam(@BX)) ;
 InflateRect(BX, - 4, - 4) ;
Perform(EM_SETRECTNP, 0, lParam(@BX)) ;
SetWindowRgn(Handle, mdo, True) ;
Invalidate;
end;
end;

procedure TFrmBasePreVenda.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
