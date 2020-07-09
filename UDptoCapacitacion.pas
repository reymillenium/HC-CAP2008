unit UDptoCapacitacion;

interface

uses
  Classes, DB, Dialogs,

  {Units echas por mi}
  UPlanillaProvincial, UPuestodeTrabajo, UHospital, UCapacitador, UCurso, UTipoDeCurso,

  {Módulos del Sistema HCCAP (Units) echos por mi}
  UModuloControlDelSistema, UModuloPlanillasProvinciales, UModuloHospitalesDeExcelencia;

type
  TDptoCapacitacion = Class(TObject)

//------ *** Procedimientos del Módulo de Control del Sistema *** --------------

  //** Procedimientos Imprescindibles **
  procedure EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
  procedure EliminarConexionConLaBD;
  function ExisteConexionConLaBD: Boolean;

  procedure LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
  procedure ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
  procedure DesloggearAlUsuario;
  procedure BorrarFalsoLoggeo;
  procedure BuscarAlLoggeado;
  procedure ActualizarPermanencia;
  function ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
  function HayAlguienLoggeado: Boolean;
  function ElLoggeadoEsAdministrador: Boolean;

  // ** Procedimientos agregados a última hora a esta Unit
  function ObtenerFechaDelSistema: String;


  //** Procedimientos de la pestaña de Puestos de Trabajo **

  procedure MostrarPuestosDeTrabajo;
  Procedure BuscarPuestoDeTrabajo(aID_Usuario: String);
  procedure SelecAdministrador(id_Usuario: String);

  function ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
  function ElTrabajadorEsAdministrador: Boolean;
  function CantidadDePuestosDeTrabajo: Integer;

  procedure InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
  procedure ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
  procedure EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);

  function EncriptarSeudoaleatorio(aFrase: String): String;
  function DesencriptarSeudoaleatorio(aFrase: String): String;


  //** Procedimientos de la pestaña de Trazas del Sistema **
  procedure GuardarTrazaDelSistema(aAccion: AnsiString);
  procedure MostrarTodasLasTrazas;

//------ *** Procedimientos del Módulo de Planillas Provinciales *** -----------

  procedure MostrarPlanillasProvinciales(aProvincia: String);
  procedure MostrarReporteAmpliadoProvincial(aAnno: Integer);

  procedure InsertarPlanilla(aPlanilla: TPlanillaProvincial);
  //procedure ModificarPlanilla(aNuevaPlanilla: TPlanillaProvincial);
  procedure EliminarPlanilla(aAnno: Integer; aProvincia: String);
  procedure GenerarReporte(aPlanilla: TPlanillaProvincial);
  

  function ExisteLaPlanilla(aAnno: Integer; aProvincia: String): Boolean;
  function ExisteAlMenosUnaPlanillaProvincial: Boolean;
  function ExisteAlMenosUnResumenProvincial: Boolean;

  procedure MostrarResumen(aAnno: String);
  function CantidadDePlanillas: Integer;

  procedure GenerarReportePlanillaProvincialPorAnnoYProvincia(aPlanilla: TPlanillaProvincial);



//------ *** Procedimientos del Módulo de Hospitales de Excelencia *** ---------

  //Procedimientos de la pestaña de Planillas de Excelencia
  procedure MostrarPlanillasDeExcelenciaPorPeriodoYHospital(aPeriodo: Integer; aID_Hospital: Integer);
  procedure MostrarHospitalesPorProvincia(aProvincia: String);
  procedure MostrarCapacitadorPorHospitalDeExcelencia(aID_Hospital: Integer);
  procedure MostrarHospitalDeExcelencia(aID_Hospital: Integer);

  Procedure CopiarCursosProgramadosPorID_Planilla(aID_Planilla: Integer);
  Procedure CopiarCursosRealizadosPorID_Planilla(aID_Planilla: Integer);

  procedure MostrarTipoDeCursoPorID_TipoDeCurso(aID_TipoDeCurso: Integer);
  procedure MostrarCursosProgramadosPorID_Planilla(aID_Planilla: Integer);
  procedure MostrarCursosRealizadosPorID_Planilla(aID_Planilla: Integer);
  procedure MostrarCursosProgramadosTemporalesPorID_Planilla(aID_Planilla: Integer);
  procedure MostrarCursosRealizadosTemporalesPorID_Planilla(aID_Planilla: Integer);
  procedure MostrarGruposDeCorreos;
  procedure MostrarResumenDeExcelencia;

  procedure EliminarPlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer);
  procedure EliminarCursosProgramadosPorID_Planilla(aID_Planilla: Integer);
  procedure EliminarCursosRealizadosPorID_Planilla(aID_Planilla: Integer);
  procedure EliminarCursoProgramadoTemporalPorID_Curso(aID_Curso: Integer);
  procedure EliminarCursoRealizadoTemporalPorID_Curso(aID_Curso: Integer);
  procedure EliminarCursosProgramadosTemporalesPorID_Planilla(aID_Planilla: Integer);
  procedure EliminarCursosRealizadosTemporalesPorID_Planilla(aID_Planilla: Integer);
  procedure EliminarGruposDeCorreos;
  procedure EliminarResumenDeExcelencia;

  function CantidadDeHospitalesPorProvincia: Integer;
  function CantidadDeHospitalesTotales: Integer;
  function CantidadDeCursosProgramados: Integer;
  function CantidadDeCursosRealizados: Integer;
  function CantidadDeCursosProgramadosTemporales: Integer;
  function CantidadDeCursosRealizadosTemporales: Integer;

  function ExisteCapacitadorEnElHospital(aID_Hospital: Integer): Boolean;
  function ExisteAlMenosUnaPlanillaDeExcelencia: Boolean;
  function ExistePlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer): Boolean;
  function ExisteGruposDeCorreos: Boolean;
  function ExisteAlMenosUnResumenDeExcelencia: Boolean;

  procedure ModificarCursoProgramadoTemporal(aID_Curso: Integer; aNuevoCurso: TCurso);
  procedure ModificarCursoRealizadoTemporal(aID_Curso: Integer; aNuevoCurso: TCurso);
  procedure ModificarID_PlanillaEnCursosProgramadosTemporales(aViejoID_Planilla, aNuevoID_Planilla: Integer);
  procedure ModificarID_PlanillaEnCursosRealizadosTemporales(aViejoID_Planilla, aNuevoID_Planilla: Integer);

  procedure ModificarNulosEnBalancesDeExcelencia;

  procedure RellenarCursosProgramadosDesdeTemporales;
  procedure RellenarCursosRealizadosDesdeTemporales;
  procedure RellenarBalancesDeExcelenciaParte1(aAnno: String; aPeriodo: String);
  procedure RellenarBalancesDeExcelenciaParte2(aAnno: String; aPeriodo: String);

  procedure InsertarEncabezamientoPlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer);
  procedure InsertarCursoProgramado(aCurso: TCurso);
  procedure InsertarCursoRealizado(aCurso: TCurso);
  procedure InsertarCursoProgramadoTemporal(aCurso: TCurso);
  procedure InsertarCursoRealizadoTemporal(aCurso: TCurso);
  procedure InsertarGrupoDeCorreos(aNombreGrupo: AnsiString; aCorreos: AnsiString);

  Procedure BuscarID_PlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer);


  //Procedimientos de la pestaña de Admin. de Hospitales de Excelencia y su Capacitador
  procedure MostrarTodosLosHospitalesDeExcelenciaParaAdmin;
  procedure MostrarCapacPorID_HospitalParaAdmin(aID_Hospital: Integer);

  procedure EliminarHospitalDeExcelencia(aID_Hospital: Integer);
  procedure EliminarCapacitador(aID_Hospital: Integer);

  procedure InsertarHospitalDeExcelencia(aHospital: THospital);
  procedure InsertarCapacitador(aCapacitador: TCapacitador);

  procedure ModificarHospitalDeExcelencia(aID_Hospital: Integer; aNuevoHospital: THospital);
  procedure ModificarCapacitador(aID_Hospital: Integer; aNuevoCapacitador: TCapacitador);

  procedure CalcularMinYMaxID;
  procedure BuscarCorreosDeCapacitadorPorID_Hospital(aID_Hospital: Integer);

  //Procedimientos de la pestaña de Admin. de Tipos de Cursos
  procedure MostrarTiposDeCursos;
  procedure MostrarTiposDeCursosHabilitados;
  function CantidadDeTiposDeCursos: Integer;
  
  procedure EliminarTipoDeCurso(aID_TipoDeCurso: Integer);
  procedure ModificarTipoDeCurso(aID_TipoDeCurso: Integer; aNuevoTipoDeCurso: TTipoDeCurso);
  procedure InsertarTipoDeCurso(aTipoDeCurso: TTipoDeCurso);
  
  private
    { Private declarations }

  public
    { Public declarations }

    

end;

implementation

uses SysUtils, ConvUtils;

var
 ModuloControlDelSistema: TModuloControlDelSistema;
 ModuloPlanillasProvinciales: TModuloPlanillasProvinciales;
 ModuloHospitalesDeExcelencia: TModuloHospitalesDeExcelencia;



//---------------- *** Módulo de Control del Sistema *** ------------------------


  //** Procedimientos Imprescindibles **

procedure TDptoCapacitacion.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet);
end;


procedure TDptoCapacitacion.EliminarConexionConLaBD;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EliminarConexionConLaBD;
end;



function TDptoCapacitacion.ExisteConexionConLaBD: Boolean;
begin
  //Se invoca a la función del del Módulo correspondiente
  Result:= ModuloControlDelSistema.ExisteConexionConLaBD;
end;



function TDptoCapacitacion.EncriptarSeudoaleatorio(aFrase: String): String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.EncriptarSeudoaleatorio(aFrase)
end;



function TDptoCapacitacion.DesencriptarSeudoaleatorio(aFrase: String): String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.DesencriptarSeudoaleatorio(aFrase)
end;



procedure TDptoCapacitacion.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido);
end;



procedure TDptoCapacitacion.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido);
end;



procedure TDptoCapacitacion.DesloggearAlUsuario;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.DesloggearAlUsuario;
end;


procedure TDptoCapacitacion.BorrarFalsoLoggeo;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.BorrarFalsoLoggeo;
end;


function TDptoCapacitacion.ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElUsuarioEstaLoggeado(aID_Usuario)
end;


function TDptoCapacitacion.HayAlguienLoggeado: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.HayAlguienLoggeado;
end;



function TDptoCapacitacion.ElLoggeadoEsAdministrador: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElLoggeadoEsAdministrador;
end;


Procedure TDptoCapacitacion.BuscarAlLoggeado;
begin
  //Se invoca a la función del Módulo correspondiente
  ModuloControlDelSistema.BuscarAlLoggeado;
end;



procedure TDptoCapacitacion.ActualizarPermanencia;
begin
  //Se invoca a la función del Módulo correspondiente
  ModuloControlDelSistema.ActualizarPermanencia;
end;



  // ** Procedimientos agregados a última hora a esta Unit
function TDptoCapacitacion.ObtenerFechaDelSistema;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ObtenerFechaDelSistema;
end;

  //** Procedimientos de la pestaña de Puestos de Trabajo **

procedure TDptoCapacitacion.MostrarPuestosDeTrabajo;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.MostrarPuestosDeTrabajo;
end;


Procedure TDptoCapacitacion.BuscarPuestoDeTrabajo(aID_Usuario: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.BuscarPuestoDeTrabajo(aID_Usuario);
end;


function TDptoCapacitacion.ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ExisteElPuestoDeTrabajoConUsuario(id_Usuario);
end;


procedure TDptoCapacitacion.SelecAdministrador(id_Usuario: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.SelecAdministrador(id_Usuario);
end;


function TDptoCapacitacion.ElTrabajadorEsAdministrador: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElTrabajadorEsAdministrador;
end;


procedure TDptoCapacitacion.InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.InsertarPuestoDeTrabajo(aPuestoDeTrabajo);
end;


procedure TDptoCapacitacion.ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.ModificarPuestoDeTrabajo(aViejoID_Usuario, aNuevoPuestoDeTrabajo);
end;


procedure TDptoCapacitacion.EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EliminarPuestoDeTrabajo(aID_Usuario);
end;



function TDptoCapacitacion.CantidadDePuestosDeTrabajo: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.CantidadDePuestosDeTrabajo;
end;

  //** Procedimientos de la pestaña de Trazas del Sistema **

procedure TDptoCapacitacion.GuardarTrazaDelSistema(aAccion: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.GuardarTrazaDelSistema(aAccion);
end;

procedure TDptoCapacitacion.MostrarTodasLasTrazas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.MostrarTodasLasTrazas;
end;


//--------- *** Procedimientos del módulo de Planillas Provinciales *** --------


procedure TDptoCapacitacion.InsertarPlanilla(aPlanilla: TPlanillaProvincial);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloPlanillasProvinciales.InsertarPlanilla(aPlanilla);
end;


procedure TDptoCapacitacion.EliminarPlanilla(aAnno: Integer; aProvincia: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloPlanillasProvinciales.EliminarPlanilla(aAnno, aProvincia);
end;


procedure TDptoCapacitacion.GenerarReporte(aplanilla: TPlanillaProvincial);
begin
  //Se invoca al procedimiento del Módulo correspondiente (aun por programar)
end;


procedure TDptoCapacitacion.MostrarPlanillasProvinciales(aProvincia: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloPlanillasProvinciales.MostrarPlanillasProvinciales(aProvincia);
end;


procedure TDptoCapacitacion.MostrarReporteAmpliadoProvincial(aAnno: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloPlanillasProvinciales.MostrarReporteAmpliadoProvincial(aAnno);
end;


function TDptoCapacitacion.ExisteLaPlanilla(aAnno: Integer; aProvincia: String): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloPlanillasProvinciales.ExisteLaPlanilla(aAnno, aProvincia);
end;                          



function TDptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloPlanillasProvinciales.ExisteAlMenosUnaPlanillaProvincial;
end;


function TDptoCapacitacion.ExisteAlMenosUnResumenProvincial: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloPlanillasProvinciales.ExisteAlMenosUnResumenProvincial;
end;



procedure TDptoCapacitacion.MostrarResumen(aAnno: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloPlanillasProvinciales.MostrarResumen(aAnno);
end;


function TDptoCapacitacion.CantidadDePlanillas: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloPlanillasProvinciales.CantidadDePlanillas;
end;


procedure TDptoCapacitacion.GenerarReportePlanillaProvincialPorAnnoYProvincia(aPlanilla: TPlanillaProvincial);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloPlanillasProvinciales.GenerarReporte(aPlanilla);
end;




// ------ *** Procedimientos del Módulo de Hospitales de Excelencia *** --------



procedure TDptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(aPeriodo: Integer; aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(aPeriodo, aID_Hospital);
end;



procedure TDptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;
end;


procedure TDptoCapacitacion.MostrarHospitalesPorProvincia(aProvincia: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarHospitalesPorProvincia(aProvincia);
end;


function TDptoCapacitacion.CantidadDeHospitalesPorProvincia: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeHospitalesPorProvincia;
end;



function TDptoCapacitacion.CantidadDeHospitalesTotales: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeHospitalesTotales;
end;



function TDptoCapacitacion.CantidadDeCursosProgramados: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeCursosProgramados;
end;



function TDptoCapacitacion.CantidadDeCursosRealizados: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeCursosRealizados;
end;



function TDptoCapacitacion.CantidadDeCursosProgramadosTemporales: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeCursosProgramadosTemporales;
end;



function TDptoCapacitacion.CantidadDeCursosRealizadosTemporales: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeCursosRealizadosTemporales;
end;


function TDptoCapacitacion.ExisteCapacitadorEnElHospital(aID_Hospital: Integer): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.ExisteCapacitadorEnElHospital(aID_Hospital);
end;



function TDptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.ExisteAlMenosUnaPlanillaDeExcelencia;
end;



procedure TDptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarCapacitadorPorHospitalDeExcelencia(aID_Hospital);
end;



procedure TDptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarCapacPorID_HospitalParaAdmin(aID_Hospital);
end;


procedure TDptoCapacitacion.EliminarHospitalDeExcelencia(aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarHospitalDeExcelencia(aID_Hospital);
end;



procedure TDptoCapacitacion.EliminarCapacitador(aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCapacitador(aID_Hospital);
end;


procedure TDptoCapacitacion.MostrarHospitalDeExcelencia(aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarHospitalDeExcelencia(aID_Hospital);
end;


procedure TDptoCapacitacion.ModificarHospitalDeExcelencia(aID_Hospital: Integer; aNuevoHospital: THospital);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarHospitalDeExcelencia(aID_Hospital, aNuevoHospital);
end;



procedure TDptoCapacitacion.ModificarCapacitador(aID_Hospital: Integer; aNuevoCapacitador: TCapacitador);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarCapacitador(aID_Hospital, aNuevoCapacitador);
end;



procedure TDptoCapacitacion.CalcularMinYMaxID;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.CalcularMinYMaxID;
end;


procedure TDptoCapacitacion.BuscarCorreosDeCapacitadorPorID_Hospital(aID_Hospital: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.BuscarCorreosDeCapacitadorPorID_Hospital(aID_Hospital);
end;


procedure TDptoCapacitacion.InsertarHospitalDeExcelencia(aHospital: THospital);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarHospitalDeExcelencia(aHospital);
end;



procedure TDptoCapacitacion.InsertarCapacitador(aCapacitador: TCapacitador);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarCapacitador(aCapacitador);
end;


procedure TDptoCapacitacion.MostrarTiposDeCursos;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarTiposDeCursos;
end;


procedure TDptoCapacitacion.MostrarTiposDeCursosHabilitados;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarTiposDeCursosHabilitados;
end;



procedure TDptoCapacitacion.EliminarTipoDeCurso(aID_TipoDeCurso: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarTipoDeCurso(aID_TipoDeCurso);
end;



procedure TDptoCapacitacion.ModificarTipoDeCurso(aID_TipoDeCurso: Integer; aNuevoTipoDeCurso: TTipoDeCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarTipoDeCurso(aID_TipoDeCurso, aNuevoTipoDeCurso);
end;



procedure TDptoCapacitacion.InsertarTipoDeCurso(aTipoDeCurso: TTipoDeCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarTipoDeCurso(aTipoDeCurso);
end;



function TDptoCapacitacion.CantidadDeTiposDeCursos: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.CantidadDeTiposDeCursos;
end;



procedure TDptoCapacitacion.MostrarTipoDeCursoPorID_TipoDeCurso(aID_TipoDeCurso: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarTipoDeCursoPorID_TipoDeCurso(aID_TipoDeCurso);
end;



procedure TDptoCapacitacion.InsertarEncabezamientoPlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarEncabezamientoPlanillaDeExcelencia(aID_Hospital, aAnno, aPeriodo);
end;



procedure TDptoCapacitacion.InsertarCursoProgramado(aCurso: TCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarCursoProgramado(aCurso);
end;



procedure TDptoCapacitacion.InsertarCursoRealizado(aCurso: TCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarCursoRealizado(aCurso);
end;



Procedure TDptoCapacitacion.BuscarID_PlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer);
begin
  //Se invoca al procedimiento del Módulo Correspondiente
  ModuloHospitalesDeExcelencia.BuscarID_PlanillaDeExcelencia(aID_Hospital, aAnno, aPeriodo);
end;



function TDptoCapacitacion.ExistePlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.ExistePlanillaDeExcelencia(aID_Hospital, aAnno, aPeriodo);
end;



function TDptoCapacitacion.ExisteGruposDeCorreos: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.ExisteGruposDeCorreos;
end;


function TDptoCapacitacion.ExisteAlMenosUnResumenDeExcelencia: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospitalesDeExcelencia.ExisteAlMenosUnResumenDeExcelencia;
end;



procedure TDptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarCursosProgramadosPorID_Planilla(aID_Planilla);
end;



procedure TDptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarCursosRealizadosPorID_Planilla(aID_Planilla);
end;



procedure TDptoCapacitacion.MostrarCursosProgramadosTemporalesPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarCursosProgramadosTemporalesPorID_Planilla(aID_Planilla);
end;



procedure TDptoCapacitacion.MostrarCursosRealizadosTemporalesPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarCursosRealizadosTemporalesPorID_Planilla(aID_Planilla);
end;


procedure TDptoCapacitacion.MostrarGruposDeCorreos;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarGruposDeCorreos;
end;



procedure TDptoCapacitacion.MostrarResumenDeExcelencia;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.MostrarResumenDeExcelencia;
end;



procedure TDptoCapacitacion.EliminarPlanillaDeExcelencia(aID_Hospital: Integer; aAnno: Integer; aPeriodo: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarPlanillaDeExcelencia(aID_Hospital, aAnno, aPeriodo);
end;



procedure TDptoCapacitacion.EliminarCursosProgramadosPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCursosProgramadosPorID_Planilla(aID_Planilla);
end;



procedure TDptoCapacitacion.EliminarCursosRealizadosPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCursosRealizadosPorID_Planilla(aID_Planilla);
end;



Procedure TDptoCapacitacion.CopiarCursosProgramadosPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.CopiarCursosProgramadosPorID_Planilla(aID_Planilla);
end;



Procedure TDptoCapacitacion.CopiarCursosRealizadosPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.CopiarCursosRealizadosPorID_Planilla(aID_Planilla);
end;



procedure TDptoCapacitacion.RellenarCursosProgramadosDesdeTemporales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.RellenarCursosProgramadosDesdeTemporales;
end;



procedure TDptoCapacitacion.RellenarCursosRealizadosDesdeTemporales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.RellenarCursosRealizadosDesdeTemporales;
end;



procedure TDptoCapacitacion.RellenarBalancesDeExcelenciaParte1(aAnno: String; aPeriodo: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.RellenarBalancesDeExcelenciaParte1(aAnno, aPeriodo);
end;



procedure TDptoCapacitacion.RellenarBalancesDeExcelenciaParte2(aAnno: String; aPeriodo: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.RellenarBalancesDeExcelenciaParte2(aAnno, aPeriodo);
end;



procedure TDptoCapacitacion.ModificarCursoProgramadoTemporal(aID_Curso: Integer; aNuevoCurso: TCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarCursoProgramadoTemporal(aID_Curso, aNuevoCurso);
end;



procedure TDptoCapacitacion.ModificarCursoRealizadoTemporal(aID_Curso: Integer; aNuevoCurso: TCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarCursoRealizadoTemporal(aID_Curso, aNuevoCurso);
end;



procedure TDptoCapacitacion.ModificarID_PlanillaEnCursosProgramadosTemporales(aViejoID_Planilla, aNuevoID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarID_PlanillaEnCursosProgramadosTemporales(aViejoID_Planilla, aNuevoID_Planilla);
end;



procedure TDptoCapacitacion.ModificarID_PlanillaEnCursosRealizadosTemporales(aViejoID_Planilla, aNuevoID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarID_PlanillaEnCursosRealizadosTemporales(aViejoID_Planilla, aNuevoID_Planilla);
end;


procedure TDptoCapacitacion.ModificarNulosEnBalancesDeExcelencia;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.ModificarNulosEnBalancesDeExcelencia;
end;


procedure TDptoCapacitacion.InsertarCursoProgramadoTemporal(aCurso: TCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarCursoProgramadoTemporal(aCurso);
end;



procedure TDptoCapacitacion.InsertarCursoRealizadoTemporal(aCurso: TCurso);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarCursoRealizadoTemporal(aCurso);
end;


procedure TDptoCapacitacion.InsertarGrupoDeCorreos(aNombreGrupo: AnsiString; aCorreos: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.InsertarGrupoDeCorreos(aNombreGrupo, aCorreos);
end;


procedure TDptoCapacitacion.EliminarCursoProgramadoTemporalPorID_Curso(aID_Curso: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCursoProgramadoTemporalPorID_Curso(aID_Curso);
end;



procedure TDptoCapacitacion.EliminarCursoRealizadoTemporalPorID_Curso(aID_Curso: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCursoRealizadoTemporalPorID_Curso(aID_Curso);
end;



procedure TDptoCapacitacion.EliminarCursosProgramadosTemporalesPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCursosProgramadosTemporalesPorID_Planilla(aID_Planilla);
end;



procedure TDptoCapacitacion.EliminarCursosRealizadosTemporalesPorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarCursosRealizadosTemporalesPorID_Planilla(aID_Planilla);
end;


procedure TDptoCapacitacion.EliminarGruposDeCorreos;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarGruposDeCorreos;
end;



procedure TDptoCapacitacion.EliminarResumenDeExcelencia;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospitalesDeExcelencia.EliminarResumenDeExcelencia;
end;



end.
