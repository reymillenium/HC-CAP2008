unit UCurso;

interface

uses
  Classes;

type
  TCurso = Class(TObject)
  private
    FID_Curso: Integer;
    FNombre_TipoDeCurso: AnsiString;
    FLugar: AnsiString;
    FFechaInicio: AnsiString;
    FCantidadParticipantes: Integer;
    FID_Planilla: Integer;

  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Curso (6 campos)
	  property ID_Curso: Integer read FID_Curso write FID_Curso;
    property Nombre_TipoDeCurso: AnsiString read FNombre_TipoDeCurso write FNombre_TipoDeCurso;
    property Lugar: AnsiString read FLugar write FLugar;
   	property FechaInicio: AnsiString read FFechaInicio write FFechaInicio;
    property CantidadParticipantes: Integer read FCantidadParticipantes write FCantidadParticipantes;
   	property ID_Planilla: Integer read FID_Planilla write FID_Planilla;
end;

implementation

{ TCurso }


Constructor TCurso.Create;
begin
  inherited Create;
end;


Destructor TCurso.Destroy;
begin
   inherited Destroy;
end;


end.
