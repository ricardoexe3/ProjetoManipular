unit uManipulaView.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges,
  Vcl.Buttons;

type
  TFrmMain = class(TForm)
    GbProgresso: TGroupBox;
    PbMain: TGauge;
    BtnIniciar: TBitBtn;
    procedure BtnIniciarClick(Sender: TObject);
  private
    { Private declarations }
   procedure Proc_AtualizaPB(Progresso:Integer);
  public
    { Public declarations }

  end;

var
  FrmMain: TFrmMain;

implementation

uses
  uManipulaView.Controller.ManipularObjetos;

{$R *.dfm}

procedure TFrmMain.BtnIniciarClick(Sender: TObject);
begin
 TController_ManipularObjetos.New
                             .Fn_ManipularObjetos
                             .Fn_SetarProgressBar(Proc_AtualizaPB)
                             .Proc_ManipularObjetos;
end;

procedure TFrmMain.Proc_AtualizaPB(Progresso: Integer);
begin
 PbMain.Progress := Progresso;
 PbMain.Refresh;
end;

end.
