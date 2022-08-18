unit uManipulaView.Model.ManipularObjetos;

interface

uses
  uManipulaView.Model.Interfaces;
 type
   TModel_ManipularObjetos = class(TInterfacedObject,iModel_ManipularObjetos)
  private
   FProgressBar:TEventAtualizaPB;
   procedure Proc_AtualizaProgressBar;
  public
    function Fn_SetarProgressBar(Pbar : TEventAtualizaPB):iModel_ManipularObjetos;
    procedure Proc_ManipularObjetos;
    class function New:iModel_ManipularObjetos;
    constructor Create;
    destructor Destroy; override;
  end;
implementation

uses
  System.Classes;

{ TModel_ManipularObjetos }

constructor TModel_ManipularObjetos.Create;
begin

end;

destructor TModel_ManipularObjetos.Destroy;
begin

  inherited;
end;

function TModel_ManipularObjetos.Fn_SetarProgressBar(
  Pbar: TEventAtualizaPB): iModel_ManipularObjetos;
begin
 Result        := Self;
 FProgressBar  := Pbar;
 FProgressBar  := Pbar;
end;

class function TModel_ManipularObjetos.New: iModel_ManipularObjetos;
begin
 Result := Self.Create;
 end;

procedure TModel_ManipularObjetos.Proc_AtualizaProgressBar;
var
 Progresso:integer;
begin
  Progresso             := 0;
  repeat
   Inc(Progresso);
   FProgressBar(Progresso);
  until Progresso = 1000;
end;

procedure TModel_ManipularObjetos.Proc_ManipularObjetos;
begin
 Proc_AtualizaProgressBar;
end;

end.
