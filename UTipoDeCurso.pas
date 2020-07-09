unit UTipoDeCurso;

interface

uses
  Classes;
  
type
  TTipoDeCurso = Class(TObject)
  private
    FNombreTipoDeCurso: AnsiString;
    FEstado: AnsiString;


  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Puesto de Trabajo (5 campos)
	  property NombreTipoDeCurso: AnsiString read FNombreTipoDeCurso write FNombreTipoDeCurso;
    property Estado: AnsiString read FEstado write FEstado;


end;

implementation

{ TPuestoDeTrabajo }

Constructor TTipoDeCurso.Create;
begin
  inherited Create;
end;

Destructor TTipoDeCurso.Destroy;
begin
   inherited Destroy;
end;

end.
