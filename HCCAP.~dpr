program HCCAP;

uses
  Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UDataModuleControlDelSistema in 'UDataModuleControlDelSistema.pas' {DataModuleControlDelSistema: TDataModule},
  UfrmAcercaDe in 'UfrmAcercaDe.pas' {frmAcercaDe},
  UDptoCapacitacion in 'UDptoCapacitacion.pas',
  UPlanillaProvincial in 'UPlanillaProvincial.pas',
  UfrmPresentacion in 'UfrmPresentacion.pas' {frmPresentacion},
  UfrmConectarse in 'UfrmConectarse.pas' {frmConectarse},
  UPuestoDeTrabajo in 'UPuestoDeTrabajo.pas',
  UfrmNuevoPuestoDeTrabajo in 'UfrmNuevoPuestoDeTrabajo.pas' {frmNuevoPuestoDeTrabajo},
  UfrmModificarPuestoDeTrabajo in 'UfrmModificarPuestoDeTrabajo.pas' {frmModificarPuestoDeTrabajo},
  UCapaSeguridad in 'UCapaSeguridad.pas',
  UfrmResumenPlanillasProvinciales in 'UfrmResumenPlanillasProvinciales.pas' {frmResumenPlanillasProvinciales},
  UfrmValidacionPuestoDeTrabajo in 'UfrmValidacionPuestoDeTrabajo.pas' {frmValidacionPuestoDeTrabajo},
  UfrmNuevaPlanillaDeExcelencia in 'UfrmNuevaPlanillaDeExcelencia.pas' {frmNuevaPlanillaDeExcelencia},
  UfrmModificarPlanillaDeExcelencia in 'UfrmModificarPlanillaDeExcelencia.pas' {frmModificarPlanillaDeExcelencia},
  UDataModuleHospitalesDeExcelencia in 'UDataModuleHospitalesDeExcelencia.pas' {DataModuleHospitalesDeExcelencia: TDataModule},
  UDataModulePlanillasProvinciales in 'UDataModulePlanillasProvinciales.pas' {DataModulePlanillasProvinciales: TDataModule},
  UDataModuleConexionGeneral in 'UDataModuleConexionGeneral.pas' {DataModuleConexionGeneral: TDataModule},
  UfrmNuevoHospitalDeExcelenciaYCapacitador in 'UfrmNuevoHospitalDeExcelenciaYCapacitador.pas' {frmNuevoHospitalDeExcelenciaYCapacitador},
  UfrmModificarHospitalDeExcelenciaYCapacitador in 'UfrmModificarHospitalDeExcelenciaYCapacitador.pas' {frmModificarHospitalDeExcelenciaYCapacitador},
  UHospital in 'UHospital.pas',
  UCapacitador in 'UCapacitador.pas',
  UfrmNuevoTipoDeCurso in 'UfrmNuevoTipoDeCurso.pas' {frmNuevoTipoDeCurso},
  UfrmModificarTipoDeCurso in 'UfrmModificarTipoDeCurso.pas' {frmModificarTipoDeCurso},
  UModuloControlDelSistema in 'UModuloControlDelSistema.pas',
  UModuloPlanillasProvinciales in 'UModuloPlanillasProvinciales.pas',
  UModuloHospitalesDeExcelencia in 'UModuloHospitalesDeExcelencia.pas',
  UCurso in 'UCurso.pas',
  UDataModuleReportesPlanillasProvinciales in 'UDataModuleReportesPlanillasProvinciales.pas' {DataModuleReportesPlanillasProvinciales: TDataModule},
  UfrmDetallesDeTrazaDelSistema in 'UfrmDetallesDeTrazaDelSistema.pas' {frmDetallesDeTrazasDelSistema},
  UfrmNotificacionDeAlguienLoggeado in 'UfrmNotificacionDeAlguienLoggeado.pas' {frmNotificacionDeAlguienLoggeado},
  UfrmContactoMasivo in 'UfrmContactoMasivo.pas' {frmContactoMasivo},
  UfrmResumenPlanillasDeExcelencia in 'UfrmResumenPlanillasDeExcelencia.pas' {frmResumenPlanillasDeExcelencia},
  UDataModulePlanillasDeExcelencia in 'UDataModulePlanillasDeExcelencia.pas' {DataModulePlanillasDeExcelencia: TDataModule},
  UTipoDeCurso in 'UTipoDeCurso.pas',
  UPantalla in 'UPantalla.pas',
  UDataModuleReportesPlanillasDeExcelencia in 'UDataModuleReportesPlanillasDeExcelencia.pas' {DataModuleReportesPlanillasDeExcelencia: TDataModule},
  UfrmQRResumenPlanillasDeExcelencia in 'UfrmQRResumenPlanillasDeExcelencia.pas' {QuickReportResumenPlanillasDeExcelencia: TQuickRep},
  UfrmQRResumenPlanillasProvinciales in 'UfrmQRResumenPlanillasProvinciales.pas' {QuickReportResumenPlanillasProvinciales: TQuickRep},
  UfrmQRCursosRealizados in 'UfrmQRCursosRealizados.pas' {QuickReportCursosRealizados: TQuickRep},
  UfrmPreviewResumenPlanillasDeExcelencia in 'UfrmPreviewResumenPlanillasDeExcelencia.pas' {frmPreviewResumenPlanillasDeExcelencia},
  UfrmPreviewResumenPlanillasProvinciales in 'UfrmPreviewResumenPlanillasProvinciales.pas' {frmPreviewResumenPlanillasProvinciales},
  UfrmQRCursosProgramados in 'UfrmQRCursosProgramados.pas' {QuickReportCursosProgramados: TQuickRep},
  UfrmQRPlanillaDeExcelenciaCompuesto in 'UfrmQRPlanillaDeExcelenciaCompuesto.pas' {QuickReportPlanillaDeExcelenciaCompuesto: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'HC-CAP 2008';
  Application.HelpFile := 'HC-CAP_2008.hlp';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModuleControlDelSistema, DataModuleControlDelSistema);
  Application.CreateForm(TfrmAcercaDe, frmAcercaDe);
  Application.CreateForm(TfrmPresentacion, frmPresentacion);
  Application.CreateForm(TfrmConectarse, frmConectarse);
  Application.CreateForm(TfrmNuevoPuestoDeTrabajo, frmNuevoPuestoDeTrabajo);
  Application.CreateForm(TfrmModificarPuestoDeTrabajo, frmModificarPuestoDeTrabajo);
  Application.CreateForm(TfrmResumenPlanillasProvinciales, frmResumenPlanillasProvinciales);
  Application.CreateForm(TfrmValidacionPuestoDeTrabajo, frmValidacionPuestoDeTrabajo);
  Application.CreateForm(TfrmNuevaPlanillaDeExcelencia, frmNuevaPlanillaDeExcelencia);
  Application.CreateForm(TfrmModificarPlanillaDeExcelencia, frmModificarPlanillaDeExcelencia);
  Application.CreateForm(TDataModuleHospitalesDeExcelencia, DataModuleHospitalesDeExcelencia);
  Application.CreateForm(TDataModulePlanillasProvinciales, DataModulePlanillasProvinciales);
  Application.CreateForm(TDataModuleConexionGeneral, DataModuleConexionGeneral);
  Application.CreateForm(TfrmNuevoHospitalDeExcelenciaYCapacitador, frmNuevoHospitalDeExcelenciaYCapacitador);
  Application.CreateForm(TfrmModificarHospitalDeExcelenciaYCapacitador, frmModificarHospitalDeExcelenciaYCapacitador);
  Application.CreateForm(TfrmNuevoTipoDeCurso, frmNuevoTipoDeCurso);
  Application.CreateForm(TfrmModificarTipoDeCurso, frmModificarTipoDeCurso);
  Application.CreateForm(TDataModuleReportesPlanillasProvinciales, DataModuleReportesPlanillasProvinciales);
  Application.CreateForm(TfrmDetallesDeTrazasDelSistema, frmDetallesDeTrazasDelSistema);
  Application.CreateForm(TfrmNotificacionDeAlguienLoggeado, frmNotificacionDeAlguienLoggeado);
  Application.CreateForm(TfrmContactoMasivo, frmContactoMasivo);
  Application.CreateForm(TfrmResumenPlanillasDeExcelencia, frmResumenPlanillasDeExcelencia);
  Application.CreateForm(TDataModulePlanillasDeExcelencia, DataModulePlanillasDeExcelencia);
  Application.CreateForm(TDataModuleReportesPlanillasDeExcelencia, DataModuleReportesPlanillasDeExcelencia);
  Application.CreateForm(TQuickReportResumenPlanillasDeExcelencia, QuickReportResumenPlanillasDeExcelencia);
  Application.CreateForm(TQuickReportResumenPlanillasProvinciales, QuickReportResumenPlanillasProvinciales);
  Application.CreateForm(TQuickReportCursosRealizados, QuickReportCursosRealizados);
  Application.CreateForm(TfrmPreviewResumenPlanillasDeExcelencia, frmPreviewResumenPlanillasDeExcelencia);
  Application.CreateForm(TfrmPreviewResumenPlanillasProvinciales, frmPreviewResumenPlanillasProvinciales);
  Application.CreateForm(TQuickReportCursosProgramados, QuickReportCursosProgramados);
  Application.CreateForm(TQuickReportPlanillaDeExcelenciaCompuesto, QuickReportPlanillaDeExcelenciaCompuesto);
  Application.Run;
end.
