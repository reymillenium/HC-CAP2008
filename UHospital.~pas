unit UHospital;

interface

uses
  Classes;

type
  THospital = Class(TObject)
  private
    FID_Hospital: Integer;
    FNombreHospital: AnsiString;
    FProvincia: AnsiString;
    FDireccion: AnsiString;

  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Hospital (4 campos)
	  property ID_Hospital: Integer read FID_Hospital write FID_Hospital;
    property NombreHospital: AnsiString read FNombreHospital write FNombreHospital;
    property Provincia: AnsiString read FProvincia write FProvincia;
   	property Direccion: AnsiString read FDireccion write FDireccion;
end;

implementation

{ THospital }

Constructor THospital.Create;
begin
  inherited Create;
end;

Destructor THospital.Destroy;
begin
   inherited Destroy;
end;

end.
