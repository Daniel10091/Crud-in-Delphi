program Test;

uses
  Vcl.Forms,
  UntFormulario in 'UntFormulario.pas' {Form1},
  UntPessoa in 'UntPessoa.pas',
  Unit1 in 'Unit1.pas' {DMSistema: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMSistema, DMSistema);
  Application.Run;
end.
