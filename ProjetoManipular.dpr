program ProjetoManipular;

uses
  Vcl.Forms,
  uManipulaView.View.Main in 'View\uManipulaView.View.Main.pas' {FrmMain},
  uManipulaView.Controller.ManipularObjetos in 'Controller\uManipulaView.Controller.ManipularObjetos.pas',
  uManipulaView.Controller.Interfaces in 'Controller\uManipulaView.Controller.Interfaces.pas',
  uManipulaView.Model.ManipularObjetos in 'Model\uManipulaView.Model.ManipularObjetos.pas',
  uManipulaView.Model.Interfaces in 'Model\uManipulaView.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
