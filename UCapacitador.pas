unit UCapacitador;

interface

uses
  Classes;

type
  TCapacitador = Class(TObject)
  private
    FID_Hospital: Integer;
    FNombreCapacitador: AnsiString;
    FPrimerApellidoCapacitador: AnsiString;
    FSegundoApellidoCapacitador: AnsiString;
    FNumeroCarneCapacitador: AnsiString;
    FTelefonosCapacitador: AnsiString;
    FCorreosCapacitador: AnsiString;

  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Capacitador (7 campos)
	  property ID_Hospital: Integer read FID_Hospital write FID_Hospital;
    property NombreCapacitador: AnsiString read FNombreCapacitador write FNombreCapacitador;
    property PrimerApellidoCapacitador: AnsiString read FPrimerApellidoCapacitador write FPrimerApellidoCapacitador;
   	property SegundoApellidoCapacitador: AnsiString read FSegundoApellidoCapacitador write FSegundoApellidoCapacitador;
    property NumeroCarneCapacitador: AnsiString read FNumeroCarneCapacitador write FNumeroCarneCapacitador;
    property TelefonosCapacitador: AnsiString read FTelefonosCapacitador write FTelefonosCapacitador;
    property CorreosCapacitador: AnsiString read FCorreosCapacitador write FCorreosCapacitador;

end;
implementation

{ THospital }

Constructor TCapacitador.Create;
begin
  inherited Create;
end;

Destructor TCapacitador.Destroy;
begin
   inherited Destroy;
end;

end.

