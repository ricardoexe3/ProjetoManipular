unit uManipulaView.Controller.ManipularObjetos;

interface

uses
  uManipulaView.Controller.Interfaces,
  uManipulaView.Model.Interfaces;
 type
 TController_ManipularObjetos = class(TInterfacedObject, iController_ManipularObjetos)
   private
    FModel_Manipular:iModel_ManipularObjetos;
   public
    function Fn_ManipularObjetos:iModel_ManipularObjetos;
    class function New:iController_ManipularObjetos;
    constructor Create;
    destructor Destroy; override;
 end;

implementation

uses
  uManipulaView.Model.ManipularObjetos;

{ TController_ManipularObjetos }
constructor TController_ManipularObjetos.Create;
begin
 FModel_Manipular := TModel_ManipularObjetos.New;
end;

destructor TController_ManipularObjetos.Destroy;
begin

  inherited;
end;

function TController_ManipularObjetos.Fn_ManipularObjetos: iModel_ManipularObjetos;
begin
 Result := FModel_Manipular;
end;

class function TController_ManipularObjetos.New: iController_ManipularObjetos;
begin
 Result := Self.Create;
end;

end.
