unit uYG_Dialogs;

interface

Uses Vcl.Forms, uFrmDlgPergunta;

function Pergunta(p_Mensagem: string): boolean;

implementation

function Pergunta(p_Mensagem: string): boolean;
var
  l_Result: boolean;
begin
  Application.CreateForm(TFrmDlgPergunta, FrmDlgPergunta);
  FrmDlgPergunta.mTexto.Lines.Text:= p_Mensagem;
  FrmDlgPergunta.ShowModal;
  l_Result:= FrmDlgPergunta.pp_Result;
  FrmDlgPergunta.Free;
  FrmDlgPergunta:= nil;
  Result:= l_Result;
end;

end.
