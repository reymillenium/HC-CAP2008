unit UDataModuleHospitalesDeExcelencia;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleHospitalesDeExcelencia = class(TDataModule)
    ADOStoredProcSelecPlanillasDeExcelenciaPorPeriodoYHospital: TADOStoredProc;
    DataSourceSelecPlanillasDeExcelenciaPorPeriodoYHospital: TDataSource;
    DataSourceSelecHospitalesPorProvincia: TDataSource;
    ADOStoredProcSelecHospitalesPorProvincia: TADOStoredProc;
    ADOStoredProcSelecTodosLosHospitales: TADOStoredProc;
    DataSourceSelecTodosLosHospitales: TDataSource;
    DataSourceExisteCapacitadorEnElHospital: TDataSource;
    ADOStoredProcExisteCapacitadorEnElHospital: TADOStoredProc;
    ADOStoredProcSelecCapacitadorPorHospitalDeExcelencia: TADOStoredProc;
    DataSourceSelecCapacitadorPorHospitalDeExcelencia: TDataSource;
    ADOStoredProcEliminarHospitalDeExcelencia: TADOStoredProc;
    ADOStoredProcEliminarCapacitador: TADOStoredProc;
    ADOStoredProcSelecHospitalDeExcelenciaPorID: TADOStoredProc;
    DataSourceSelecHospitalDeExcelenciaPorID: TDataSource;
    ADOStoredProcSelecCapacPorID_HospitalParaAdmin: TADOStoredProc;
    DataSourceSelecCapacPorID_HospitalParaAdmin: TDataSource;
    ADOStoredProcSelecTodosLosHospitalesParaAdmin: TADOStoredProc;
    DataSourceSelecTodosLosHospitalesParaAdmin: TDataSource;
    ADOStoredProcModificarHospitalDeExcelencia: TADOStoredProc;
    ADOStoredProcModificarCapacitador: TADOStoredProc;
    ADOStoredProcInsertarHospitalDeExcelencia: TADOStoredProc;
    ADOStoredProcInsertarCapacitador: TADOStoredProc;
    ADOStoredProcInsertarTipoDeCurso: TADOStoredProc;
    ADOStoredProcModificarTipoDeCurso: TADOStoredProc;
    ADOStoredProcEliminarTipoDeCurso: TADOStoredProc;
    ADOStoredProcSelecTiposDeCursos: TADOStoredProc;
    DataSourceSelecTiposDeCursos: TDataSource;
    ADOStoredProcSelecTipoDeCursoPorID_TipoDeCurso: TADOStoredProc;
    DataSourceSelecTipoDeCursoPorID_TipoDeCurso: TDataSource;
    ADOStoredProcInsertarEncabezamientoPlanillaDeExcelencia: TADOStoredProc;
    ADOStoredProcInsertarCursoProgramado: TADOStoredProc;
    ADOStoredProcInsertarCursoRealizado: TADOStoredProc;
    ADOStoredProcSelecID_PlanillaDeExcelencia: TADOStoredProc;
    DataSourceSelecID_PlanillaDeExcelencia: TDataSource;
    ADOStoredProcExistePlanillaDeExcelencia: TADOStoredProc;
    DataSourceExistePlanillaDeExcelencia: TDataSource;
    ADOStoredProcSelecCursosProgramadosPorID_Planilla: TADOStoredProc;
    ADOStoredProcSelecCursosRealizadosPorID_Planilla: TADOStoredProc;
    DataSourceSelecCursosProgramadosPorID_Planilla: TDataSource;
    DataSourceSelecCursosRealizadosPorID_Planilla: TDataSource;
    ADOStoredProcEliminarPlanillaDeExcelencia: TADOStoredProc;
    ADOStoredProcEliminarCursosProgramadosPorID_Planilla: TADOStoredProc;
    ADOStoredProcEliminarCursosRealizadosPorID_Planilla: TADOStoredProc;
    ADOStoredProcCopiarCursosProgramadosPorID_Planilla: TADOStoredProc;
    ADOStoredProcCopiarCursosRealizadosPorID_Planilla: TADOStoredProc;
    ADOStoredProcRellenarCursosProgramadosDesdeTemporales: TADOStoredProc;
    ADOStoredProcRellenarCursosRealizadosDesdeTemporales: TADOStoredProc;
    ADOStoredProcEliminarCursoProgramadoTemporalPorID_Curso: TADOStoredProc;
    ADOStoredProcEliminarCursoRealizadoTemporalPorID_Curso: TADOStoredProc;
    ADOStoredProcModificarCursoProgramadoTemporal: TADOStoredProc;
    ADOStoredProcModificarCursoRealizadoTemporal: TADOStoredProc;
    ADOStoredProcSelecCursosProgramadosTemporalesPorID_Planilla: TADOStoredProc;
    ADOStoredProcSelecCursosRealizadosTemporalesPorID_Planilla: TADOStoredProc;
    DataSourceSelecCursosProgramadosTemporalesPorID_Planilla: TDataSource;
    DataSourceSelecCursosRealizadosTemporalesPorID_Planilla: TDataSource;
    ADOStoredProcInsertarCursoProgramadoTemporal: TADOStoredProc;
    ADOStoredProcInsertarCursoRealizadoTemporal: TADOStoredProc;
    ADOStoredProcEliminarCursosProgramadosTemporalesPorID_Planilla: TADOStoredProc;
    ADOStoredProcEliminarCursosRealizadosTemporalesPorID_Planilla: TADOStoredProc;
    ADOStoredProcModificarID_PlanillaEnCursosProgramadosTemporales: TADOStoredProc;
    ADOStoredProcModificarID_PlanillaEnCursosRealizadosTemporales: TADOStoredProc;
    ADOStoredProcSelecMinYMaxID: TADOStoredProc;
    DataSourceSelecMinYMaxID: TDataSource;
    ADOStoredProcBuscarCorreosDeCapacitadorPorID_Hospital: TADOStoredProc;
    DataSourceBuscarCorreosDeCapacitadorPorID_Hospital: TDataSource;
    ADOStoredProcInsertarGrupoDeCorreos: TADOStoredProc;
    ADOStoredProcEliminarGruposDeCorreos: TADOStoredProc;
    ADOStoredProcSelecGruposDeCorreos: TADOStoredProc;
    DataSourceSelecGruposDeCorreos: TDataSource;
    ADOStoredProcSelecTiposDeCursosHabilitados: TADOStoredProc;
    DataSourceSelecTiposDeCursosHabilitados: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleHospitalesDeExcelencia: TDataModuleHospitalesDeExcelencia;

implementation

{$R *.dfm}

end.
