unit uManipulaView.Model.Interfaces;

interface
 type
  TEventAtualizaPB = procedure(Posicao:integer) of object;
  iModel_ManipularObjetos = interface
    ['{A3A308F7-A962-4749-BA5D-2CD1E58CA98F}']
    function Fn_SetarProgressBar(Pbar : TEventAtualizaPB):iModel_ManipularObjetos;
    procedure Proc_ManipularObjetos;
  end;

implementation

end.
