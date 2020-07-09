{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit UfrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, Grids, DBGrids,
  ImgList, DBCtrls, ExtCtrls, Mask, ToolWin, CheckLst, AppEvnts, StrUtils,
  XPMan, ActnMan, ActnCtrls, XPStyleActnCtrls, ActnList, Math, MMSystem,
  ShellApi, DB, Winsock, OleCtrls, Crystal_TLB, Sockets, RpRender,
  RpRenderPDF, RpBase, RpSystem, RpDefine,
   
  {Units confeccionadas por mi.}
  UPlanillaProvincial, UPuestoDeTrabajo, UDptoCapacitacion, UPantalla,

  {DataModules confeccionados por mi.}
  UDataModuleConexionGeneral, UDataModuleControlDelSistema,
  UDataModulePlanillasProvinciales, UDataModuleHospitalesDeExcelencia,
  UDataModuleReportesPlanillasProvinciales,
  UDataModuleReportesPlanillasDeExcelencia,
                                                 
  {Formas confeccionadas por mi.}
  UfrmAcercaDe,  UfrmConectarse, UfrmValidacionPuestoDeTrabajo,
  UfrmNuevoPuestoDeTrabajo, UfrmModificarPuestoDeTrabajo,
  UfrmNuevaPlanillaDeExcelencia, UfrmModificarPlanillaDeExcelencia,
  UfrmNuevoHospitalDeExcelenciaYCapacitador, UfrmModificarHospitalDeExcelenciaYCapacitador,
  UfrmNuevoTipoDeCurso, UfrmModificarTipoDeCurso, UfrmDetallesDeTrazaDelSistema,
  UfrmContactoMasivo, UfrmResumenPlanillasProvinciales, UfrmResumenPlanillasDeExcelencia,

  {Reportes confeccionados por mi en QuickReport.}
  UfrmQRPlanillaDeExcelenciaCompuesto, UfrmQRCursosRealizados,
  UfrmQRCursosProgramados, UfrmPreviewResumenPlanillasDeExcelencia;

type
  TfrmPrincipal = class(TForm)
    PageControlTodo: TPageControl;
    TabSheetPlanillas: TTabSheet;
    TabSheetHospitalesDeExcelencia: TTabSheet;
    PageControlPlanillasProvinciales: TPageControl;
    TabSheetParte1PlanillasProvinciales: TTabSheet;
    TabSheetParte2PlanillasProvinciales: TTabSheet;
    TabSheetParte3PlanillasProvinciales: TTabSheet;
    TabSheetParte4PlanillasProvinciales: TTabSheet;
    TabSheetParte5_1PlanillasProvinciales: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    btnInsertarParte1PlanillasProvinciales: TButton;
    lblAnnoParte1PlanillasProvinciales: TLabel;
    MainMenu1: TMainMenu;
    MenuArchivo: TMenuItem;
    MenuVer: TMenuItem;
    MenuOpcionVerPlanillasProvinciales: TMenuItem;
    MenuAyuda: TMenuItem;
    Salir1: TMenuItem;
    HCCAPv111: TMenuItem;
    N1: TMenuItem;
    Ayuda1: TMenuItem;
    Camaguey1: TMenuItem;
    Ciegodevila1: TMenuItem;
    Cienfuegos1: TMenuItem;
    CiudaddelaHabana1: TMenuItem;
    Granma1: TMenuItem;
    Guantnamo1: TMenuItem;
    Holgun1: TMenuItem;
    IsladelaJuventud1: TMenuItem;
    N9LaHabana1: TMenuItem;
    N10LasTunas1: TMenuItem;
    N111: TMenuItem;
    N12Pinardelrio1: TMenuItem;
    N13SanctiSpritus1: TMenuItem;
    N14SantiagodeCuba1: TMenuItem;
    N15VillaClara1: TMenuItem;
    btnInsertarParte2PlanillasProvinciales: TButton;
    btnInsertarParte3PlanillasProvinciales: TButton;
    ApplicationEvents1: TApplicationEvents;
    DateTimeAnnoParte1PlanillasProvinciales: TDateTimePicker;
    TabSheetControlDelSistema: TTabSheet;
    DBGridAnnoParte1PlanillasProvinciales: TDBGrid;
    btnModificarValoresParte1PlanillasProvinciales: TButton;
    btnEliminarValoresParte1PlanillasProvinciales: TButton;
    DBedtTotalEntOrgCMG: TDBEdit;
    DBedtEntOrgConPlanAnualCapCMG: TDBEdit;
    DBedtTotalTrabOrgCMG: TDBEdit;
    DBedtTotalGradAccCapCMG: TDBEdit;
    btnGuardarValoresParte1PlanillasProvinciales: TButton;
    btnNuevosValoresParte1PlanillasProvinciales: TButton;
    ImageList: TImageList;
    DBedtRelacionGradXTotalCMG: TDBEdit;
    DBPanelParte4PlanillasProvinciales: TPanel;
    DBedtMaestriasXMatricCMG: TDBEdit;
    DBedtDiplomadosXMatricCMG: TDBEdit;
    DBedtCurPostgradosXMatricCMG: TDBEdit;
    DBedtCurIdiomasXMatricCMG: TDBEdit;
    DBedtCurCompXMatricCMG: TDBEdit;
    DBedtHabilitacionXMatricCMG: TDBEdit;
    DBedtPerfecXMatricCMG: TDBEdit;
    DBedtTallSemConfXMatricCMG: TDBEdit;
    DBedtTotalXMatricCMG: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    DBedtMaestriasXGradCMG: TDBEdit;
    DBedtDiplomadosXGradCMG: TDBEdit;
    DBedtCurPostgradosXGradCMG: TDBEdit;
    DBedtCurIdiomasXGradCMG: TDBEdit;
    DBedtCurCompXGradCMG: TDBEdit;
    DBedtHabilitacionXGradCMG: TDBEdit;
    DBedtPerfecXGradCMG: TDBEdit;
    DBedtTallSemConfXGradCMG: TDBEdit;
    DBedtTotalXGradCMG: TDBEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    TabSheetParte6PlanillasProvinciales: TTabSheet;
    DBedtInstTotalUtilEnCapacCMG: TDBEdit;
    DBedtInstEventUtilEnCapacCMG: TDBEdit;
    DBedtInstPermUtilEnCapacCMG: TDBEdit;
    DBMemoValTrabDesPorEscRamalesCMG: TDBMemo;
    DBMemoValoracionCualitativaDelProcesoCapacCMG: TDBMemo;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    btnNuevosValoresParte2PlanillasProvinciales: TButton;
    DBGridAnnoParte2PlanillasProvinciales: TDBGrid;
    btnGuardarValoresParte2PlanillasProvinciales: TButton;
    btnModificarValoresParte2PlanillasProvinciales: TButton;
    btnEliminarValoresParte2PlanillasProvinciales: TButton;
    btnNuevosValoresParte3PlanillasProvinciales: TButton;
    btnModificarValoresParte3PlanillasProvinciales: TButton;
    btnGuardarValoresParte3PlanillasProvinciales: TButton;
    btnEliminarValoresParte3PlanillasProvinciales: TButton;
    DBGridAnnoParte3PlanillasProvinciales: TDBGrid;
    DBGridAnnoParte4PlanillasProvinciales: TDBGrid;
    btnGuardarValoresParte4PlanillasProvinciales: TButton;
    btnModificarValoresParte4PlanillasProvinciales: TButton;
    btnNuevosValoresParte4PlanillasProvinciales: TButton;
    btnNuevosValoresParte5PlanillasProvinciales: TButton;
    btnInsertarParte4PlanillasProvinciales: TButton;
    btnInsertarParte5PlanillasProvinciales: TButton;
    btnEliminarValoresParte4PlanillasProvinciales: TButton;
    DBGridAnnoParte5PlanillasProvinciales: TDBGrid;
    btnGuardarValoresParte5PlanillasProvinciales: TButton;
    btnModificarValoresParte5PlanillasProvinciales: TButton;
    btnEliminarValoresParte5PlanillasProvinciales: TButton;
    DBGridAnnoParte6PlanillasProvinciales: TDBGrid;
    btnGuardarValoresParte6PlanillasProvinciales: TButton;
    btnModificarValoresParte6PlanillasProvinciales: TButton;
    btnNuevosValoresParte6PlanillasProvinciales: TButton;
    btnInsertarParte6PlanillasProvinciales: TButton;
    btnEliminarValoresParte6PlanillasProvinciales: TButton;
    btnCancelarParte1PlanillasProvinciales: TButton;
    btnCancelarParte3PlanillasProvinciales: TButton;
    btnCancelarParte4PlanillasProvinciales: TButton;
    btnCancelarParte2PlanillasProvinciales: TButton;
    btnCancelarParte5PlanillasProvinciales: TButton;
    btnCancelarParte6PlanillasProvinciales: TButton;
    edtTotalEntOrgCMG: TEdit;
    edtEntOrgConPlanAnualCapCMG: TEdit;
    edtTotalGradAccCapCMG: TEdit;
    edtRelacionGradXTotalCMG: TEdit;
    edtTotalTrabOrgCMG: TEdit;
    edtInstTotalUtilEnCapacCMG: TEdit;
    edtInstEventUtilEnCapacCMG: TEdit;
    edtInstPermUtilEnCapacCMG: TEdit;
    PanelParte4PlanillasProvinciales: TPanel;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    Edit92: TEdit;
    edtMaestriasXMatricCMG: TEdit;
    edtDiplomadosXMatricCMG: TEdit;
    edtCurPostgradosXMatricCMG: TEdit;
    edtCurIdiomasXMatricCMG: TEdit;
    edtCurCompXMatricCMG: TEdit;
    edtHabilitacionXMatricCMG: TEdit;
    edtPerfecXMatricCMG: TEdit;
    edtTallSemConfXMatricCMG: TEdit;
    edtTotalXMatricCMG: TEdit;
    edtMaestriasXGradCMG: TEdit;
    edtDiplomadosXGradCMG: TEdit;
    edtCurPostgradosXGradCMG: TEdit;
    edtCurIdiomasXGradCMG: TEdit;
    edtCurCompXGradCMG: TEdit;
    edtHabilitacionXGradCMG: TEdit;
    edtPerfecXGradCMG: TEdit;
    edtTallSemConfXGradCMG: TEdit;
    edtTotalXGradCMG: TEdit;
    MemoValTrabDesPorEscRamalesCMG: TMemo;
    MemoValoracionCualitativaDelProcesoCapacCMG: TMemo;
    N2: TMenuItem;
    MenuEdicion: TMenuItem;
    MenuOpcionAgregarPlanillaProvincial: TMenuItem;
    btnGenerarReporteParte1PlanillasProvinciales: TButton;
    btnGenerarReporteParte2PlanillasProvinciales: TButton;
    btnGenerarReporteParte3PlanillasProvinciales: TButton;
    btnGenerarReporteParte4PlanillasProvinciales: TButton;
    btnGenerarReporteParte5PlanillasProvinciales: TButton;
    btnGenerarReporteParte6PlanillasProvinciales: TButton;
    MenuOpcionModificarPlanillaProvincial: TMenuItem;
    MenuOpcionEliminarPlanillaProvincial: TMenuItem;
    MenuOpcionGenerarReportePlanillaProvincial: TMenuItem;
    Desconectarse1: TMenuItem;
    ToolBarPlanillasProvinciales: TToolBar;
    SpeedButtonDesconectarsePlanillas: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButtonNuevaPlanilla: TSpeedButton;
    SpeedButtonModificarPlanilla: TSpeedButton;
    SpeedButtonEliminarPlanilla: TSpeedButton;
    SpeedButtonGenerarReportePlanilla: TSpeedButton;
    SpeedButtonTemasDeAyudaPlanillas: TSpeedButton;
    ToolButton2: TToolButton;
    DateTimeAnnoParte2PlanillasProvinciales: TDateTimePicker;
    lblAnnoParte2PlanillasProvinciales: TLabel;
    DateTimeAnnoParte3PlanillasProvinciales: TDateTimePicker;
    lblAnnoParte3PlanillasProvinciales: TLabel;
    DateTimeAnnoParte4PlanillasProvinciales: TDateTimePicker;
    DateTimeAnnoParte5PlanillasProvinciales: TDateTimePicker;
    lblAnnoParte4PlanillasProvinciales: TLabel;
    lblAnnoParte5PlanillasProvinciales: TLabel;
    DateTimeAnnoParte6PlanillasProvinciales: TDateTimePicker;
    lblAnnoParte6PlanillasProvinciales: TLabel;
    ComboBoxProvinciasParte1PlanillasProvinciales: TComboBox;
    MenuOpcionVerPlanillasDeExcelencia: TMenuItem;
    N1Camaguey1: TMenuItem;
    N3Cienfuegos1: TMenuItem;
    N4CiudaddelaHabana1: TMenuItem;
    N5Granma1: TMenuItem;
    N6Guantnamo1: TMenuItem;
    N7Holgun1: TMenuItem;
    N8IsladelaJuventud1: TMenuItem;
    N9LaHabana2: TMenuItem;
    N10LasTunas2: TMenuItem;
    N11Matanzas1: TMenuItem;
    N12Pinardelrio2: TMenuItem;
    N13SanctiSpritus2: TMenuItem;
    N14SantiagodeCuba2: TMenuItem;
    N15VillaClara2: TMenuItem;
    ComboBoxProvinciasParte2PlanillasProvinciales: TComboBox;
    ComboBoxProvinciasParte3PlanillasProvinciales: TComboBox;
    ComboBoxProvinciasParte4PlanillasProvinciales: TComboBox;
    ComboBoxProvinciasParte5PlanillasProvinciales: TComboBox;
    ComboBoxProvinciasParte6PlanillasProvinciales: TComboBox;
    ToolBarControlDelSistema: TToolBar;
    SpeedButtonDesconectarsePuestosDeTrabajo: TSpeedButton;
    ToolButton3: TToolButton;
    SpeedButtonNuevoPuestosDeTrabajo: TSpeedButton;
    SpeedButtonModificarPuestosDeTrabajo: TSpeedButton;
    SpeedButtonEliminarPuestosDeTrabajo: TSpeedButton;
    ToolButton4: TToolButton;
    SpeedButtonTemasDeAyudaPuestosDeTrabajo: TSpeedButton;
    MenuOpcionAgregarPuestoDeTrabajo: TMenuItem;
    SubMenuAgregar: TMenuItem;
    SubMenuModificar: TMenuItem;
    MenuOpcionModificarPuestoDeTrabajo: TMenuItem;
    SubMenuEliminar: TMenuItem;
    MenuOpcionEliminarPuestoDeTrabajo: TMenuItem;
    ColorDialog1: TColorDialog;
    ImageListProvincias: TImageList;
    N2Ciegodevila1: TMenuItem;
    btnResumenesParte1PlanillasProvinciales: TButton;
    btnResumenesParte2PlanillasProvinciales: TButton;
    btnResumenesParte3PlanillasProvinciales: TButton;
    btnResumenesParte4PlanillasProvinciales: TButton;
    btnResumenesParte5PlanillasProvinciales: TButton;
    btnResumenesParte6PlanillasProvinciales: TButton;
    ToolBarHospitalesDeExcelencia: TToolBar;
    SpeedButtonDesconectarseHospitalesDeExcelencia: TSpeedButton;
    ToolButton5: TToolButton;
    SpeedButtonNuevaHospitalesDeExcelencia: TSpeedButton;
    SpeedButtonModificarHospitalesDeExcelencia: TSpeedButton;
    SpeedButtonEliminarHospitalesDeExcelencia: TSpeedButton;
    SpeedButtonGenerarReporteHospitalesDeExcelencia: TSpeedButton;
    ToolButton6: TToolButton;
    SpeedButtonTemasDeAyudaHospitalesDeExcelencia: TSpeedButton;
    PageControlHospitalesDeExcelencia: TPageControl;
    TabSheetDatosDelHospital: TTabSheet;
    btnNuevoRegistroHospitalesDeExcelencia: TButton;
    btnModificarRegistroHospitalesDeExcelencia: TButton;
    btnEliminarRegistroHospitalesDeExcelencia: TButton;
    btnGenerarReporteRegistroHospitalesDeExcelencia: TButton;
    btnResumenesRegistroHospitalesDeExcelencia: TButton;
    ComboBoxProvinciasHospitalesDeExcelencia: TComboBox;
    Label64: TLabel;
    Label66: TLabel;
    Label68: TLabel;
    Label71: TLabel;
    DBedtProvincia: TDBEdit;
    GroupBoxCapacitadorYSuPlan: TGroupBox;
    DBMemoDireccion: TDBMemo;
    DBGridHospitalesDeExcelencia: TDBGrid;
    PageControlCapacitadorYSuPlanDeCapacitacion: TPageControl;
    TabSheetDatosCapacitador: TTabSheet;
    TabSheetPlanDeCapacitacion: TTabSheet;
    lblNombreHospitalesDeExcelencia: TLabel;
    DBedtNombreCapac: TDBEdit;
    Label55: TLabel;
    DBedtPrimerApellidoCapac: TDBEdit;
    Label62: TLabel;
    DBedtSegundoApellidoCapac: TDBEdit;
    Label63: TLabel;
    DBedtCICapac: TDBEdit;
    Label65: TLabel;
    Label67: TLabel;
    Label69: TLabel;
    ComboBoxSemestreHospitalesDeExcelencia: TComboBox;
    DBLookupComboBoxHospitalesDeExcelencia: TDBLookupComboBox;
    lblCantidadDeHospitales: TLabel;
    lblNoTieneCapacitador: TLabel;
    DBMemoCorreosElectronicosCapac: TDBMemo;
    DBMemoTelefonosCapac: TDBMemo;
    GroupBoxCursosProgramados: TGroupBox;
    GroupBoxCursosRealizados: TGroupBox;
    TabSheetHospitalesDeExcelenciaYCapacitadores: TTabSheet;
    GroupBoxListadoDeHospitalesDeExcelencia: TGroupBox;
    DBGridListadoDeHospitales: TDBGrid;
    TabSheetTiposDeCursos: TTabSheet;
    DBGridCursosRealizados: TDBGrid;
    DBGridCursosProgramados: TDBGrid;
    lblCantidadParticipantesCursosProgramados: TLabel;
    lblFechaCursosProgramados: TLabel;
    lblLugarCursosProgramados: TLabel;
    DBedtCantidadParticipantesCursosProgramados: TDBEdit;
    DBedtLugarCursosProgramados: TDBEdit;
    lblLugarCursosRealizados: TLabel;
    DBedtLugarCursosRealizados: TDBEdit;
    lblFechaCursosRealizados: TLabel;
    lblCantidadParticipantesCursosRealizados: TLabel;
    DBedtCantidadParticipantesCursosRealizados: TDBEdit;
    GroupBoxTiposDeCursos: TGroupBox;
    DBGridTiposDeCursos: TDBGrid;
    DBedtFechaInicioCursosProgramados: TDBEdit;
    DBedtFechaInicioCursosRealizados: TDBEdit;
    DBTextID_Planilla: TDBText;
    Label43: TLabel;
    Label77: TLabel;
    Edit28: TEdit;
    DBedtNivSupXMatric: TDBEdit;
    DBedtTecMedioXMatric: TDBEdit;
    DBedtGrado12XMatric: TDBEdit;
    DBedtGrado9XMatric: TDBEdit;
    DBedtGrado6XMatric: TDBEdit;
    Edit32: TEdit;
    Edit35: TEdit;
    DBedtGrado6XNoMatric: TDBEdit;
    DBedtGrado9XNoMatric: TDBEdit;
    DBedtGrado12XNoMatric: TDBEdit;
    DBedtTecMedioXNoMatric: TDBEdit;
    DBedtNivSupXNoMatric: TDBEdit;
    Edit23: TEdit;
    DBedtGrado6XTotalNoIdoneos: TDBEdit;
    DBedtGrado9XTotalNoIdoneos: TDBEdit;
    DBedtGrado12XTotalNoIdoneos: TDBEdit;
    DBedtTecMedioXTotalNoIdoneos: TDBEdit;
    DBedtNivSupXTotalNoIdoneos: TDBEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit116: TEdit;
    Edit118: TEdit;
    Edit119: TEdit;
    Edit120: TEdit;
    Edit121: TEdit;
    Edit122: TEdit;
    Edit123: TEdit;
    Edit124: TEdit;
    Edit125: TEdit;
    edtGrado6XTotalNoIdoneos: TEdit;
    edtGrado9XTotalNoIdoneos: TEdit;
    edtGrado12XTotalNoIdoneos: TEdit;
    edtTecMedioXTotalNoIdoneos: TEdit;
    edtNivSupXTotalNoIdoneos: TEdit;
    edtGrado6XMatric: TEdit;
    edtGrado9XMatric: TEdit;
    edtGrado12XMatric: TEdit;
    edtTecMedioXMatric: TEdit;
    edtNivSupXMatric: TEdit;
    edtGrado6XNoMatric: TEdit;
    edtGrado9XNoMatric: TEdit;
    edtGrado12XNoMatric: TEdit;
    edtTecMedioXNoMatric: TEdit;
    edtNivSupXNoMatric: TEdit;
    Label46: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label48: TLabel;
    Label52: TLabel;
    Edit146: TEdit;
    Edit147: TEdit;
    Edit148: TEdit;
    Edit149: TEdit;
    Edit151: TEdit;
    Edit152: TEdit;
    edtCurHabilXTotalNoIdoneos: TEdit;
    edtEntrenamientoXTotalNoIdoneos: TEdit;
    edtCurHabilXMatric: TEdit;
    edtEntrenamientoXMatric: TEdit;
    edtCurHabilXNoMatric: TEdit;
    edtEntrenamientoXNoMatric: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    DBedtCurHabilXTotalNoIdoneos: TDBEdit;
    DBedtEntrenamientoXTotalNoIdoneos: TDBEdit;
    DBedtEntrenamientoXMatric: TDBEdit;
    DBedtCurHabilXMatric: TDBEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    DBedtCurHabilXNoMatric: TDBEdit;
    DBedtEntrenamientoXNoMatric: TDBEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Label47: TLabel;
    DBMemoExplicNoMatric: TDBMemo;
    MemoExplicNoMatric: TMemo;
    ScrollBoxParte5PlanillasProvinciales: TScrollBox;
    lblProvinciaParte1PlanillasProvinciales: TLabel;
    lblProvinciaParte2PlanillasProvinciales: TLabel;
    lblProvinciaParte3PlanillasProvinciales: TLabel;
    lblProvinciaParte4PlanillasProvinciales: TLabel;
    lblProvinciaParte5PlanillasProvinciales: TLabel;
    lblProvinciaParte6PlanillasProvinciales: TLabel;
    ScrollBox1: TScrollBox;
    Label13: TLabel;
    Label17: TLabel;
    DBedtGradEnCurHabCMG: TDBEdit;
    edtGradEnCurHabCMG: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBedtDirectivosCMG: TDBEdit;
    DBedtTecnicosCMG: TDBEdit;
    DBedtAdministrativosCMG: TDBEdit;
    DBedtTrabServiciosCMG: TDBEdit;
    DBedtOperariosCMG: TDBEdit;
    edtDirectivosCMG: TEdit;
    edtTecnicosCMG: TEdit;
    edtAdministrativosCMG: TEdit;
    edtTrabServiciosCMG: TEdit;
    edtOperariosCMG: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBedtGradEnCurPerfecCMG: TDBEdit;
    DBedtGradenAdiestLabCMG: TDBEdit;
    edtGradEnCurPerfecCMG: TEdit;
    edtGradenAdiestLabCMG: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBedtGradEnDiplomadosCMG: TDBEdit;
    DBedtGradEnCurPostGradoCMG: TDBEdit;
    DBedtGradEnEntPTrabCMG: TDBEdit;
    edtGradEnDiplomadosCMG: TEdit;
    edtGradEnCurPostGradoCMG: TEdit;
    edtGradEnEntPTrabCMG: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBedtGradEnMaestriasCMG: TDBEdit;
    DBedtGradEnDoctoradosCMG: TDBEdit;
    DBedtGradEnCurFormCompMINEDCMG: TDBEdit;
    edtGradEnMaestriasCMG: TEdit;
    edtGradEnDoctoradosCMG: TEdit;
    edtGradEnCurFormCompMINEDCMG: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBedtGradEnCurFormCompMESCMG: TDBEdit;
    DBedtGradEnCurIdiomaExtCMG: TDBEdit;
    DBedtGradEnCurCompCMG: TDBEdit;
    edtGradEnCurFormCompMESCMG: TEdit;
    edtGradEnCurIdiomaExtCMG: TEdit;
    edtGradEnCurCompCMG: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBedtGradEnEntrenEnExtCMG: TDBEdit;
    DBedtGradEnOtrasAccCMG: TDBEdit;
    edtGradEnEntrenEnExtCMG: TEdit;
    edtGradEnOtrasAccCMG: TEdit;
    btnNuevoTipoDeCurso: TButton;
    btnModificarTipoDeCurso: TButton;
    btnEliminarTipoDeCurso: TButton;
    lblCantidadTiposDeCursos: TLabel;
    DBTextID_TipoDeCurso: TDBText;
    DBNavigator2: TDBNavigator;
    GroupBoxDatosDeSuCapacitadorActual: TGroupBox;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBedtNombreCapacActual: TDBEdit;
    DBedtPrimerApellidoCapacActual: TDBEdit;
    DBedtSegundoApellidoCapacActual: TDBEdit;
    DBedtCICapacActual: TDBEdit;
    DBMemoTelefonosCapacActual: TDBMemo;
    DBMemoCorreosElectronicosCapacActual: TDBMemo;
    btnEliminarHospitalDeExcelenciaYCapacitador: TButton;
    btnModificarHospitalDeExcelenciaYCapacitador: TButton;
    btnNuevoHospitalDeExcelenciaYCapacitador: TButton;
    DBTextID_Hospital: TDBText;
    lblCantidadDeHospitalesParaAdmin: TLabel;
    DBNavigator1: TDBNavigator;
    MenuOpcionAgregarPlanillaDeExcelencia: TMenuItem;
    MenuOpcionAgregarHospitalDeExcelenciaYCapacitador: TMenuItem;
    MenuOpcionAgregarTipoDeCurso: TMenuItem;
    MenuOpcionModificarPlanillaDeExcelencia: TMenuItem;
    MenuOpcionModificarHospitalDeExcelenciaYCapacitador: TMenuItem;
    MenuOpcionModificarTipoDeCurso: TMenuItem;
    MenuOpcionEliminarPlanillaDeExcelencia: TMenuItem;
    MenuOpcionEliminarHospitalDeExcelenciaYCapacitador: TMenuItem;
    MenuOpcionEliminarTipoDeCurso: TMenuItem;
    PageControlControlDelSistema: TPageControl;
    TabSheetPuestosDeTrabajo: TTabSheet;
    GroupBoxPuestosDeTrabajo: TGroupBox;
    DBGridPuestosDeTrabajo: TDBGrid;
    lblCantidadPuestosDeTrabajo: TLabel;
    DBNavigatorPuestosDeTrabajo: TDBNavigator;
    btnNuevoPuestosDeTrabajo: TButton;
    btnModificarPuestosDeTrabajo: TButton;
    btnEliminarPuestosDeTrabajo: TButton;
    TabSheetTrazasDelSistema: TTabSheet;
    GroupBoxTrazasDelSistema: TGroupBox;
    DBGridTrazasDelSistema: TDBGrid;
    GroupBox1: TGroupBox;
    Label49: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBedtHoraExacta: TDBEdit;
    DBedtNombrePC: TDBEdit;
    DBedtNumeroIP: TDBEdit;
    DBedtNombreUsuario: TDBEdit;
    DBedtPrimerApellidoUsuario: TDBEdit;
    DBedtSegundoApellidoUsuario: TDBEdit;
    Label85: TLabel;
    DBedtPrivilegios: TDBEdit;
    DBTextNombre: TDBText;
    DBTextPrivilegios: TDBText;
    DBTextPrimerApellido: TDBText;
    DBTextSegundoApellido: TDBText;
    btnDetallesDeTraza: TButton;
    DBTextProvincia: TDBText;
    DBMemoDireccionAdmin: TDBMemo;
    DBNavigator3: TDBNavigator;
    MenuOpcionVerDetalles: TMenuItem;
    MenuOpcionVerResumenesProvinciales: TMenuItem;
    MenuOpcionGenerarReportePlanillaDeExcelencia: TMenuItem;
    MenuOpcionVerResumenesDeExcelencia: TMenuItem;
    SpeedButtonDetallesDeTraza: TSpeedButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    SpeedButtonAcercaDeHCCAPControlDelSistema: TSpeedButton;
    SpeedButtonAcercaDeHCCAPlanillasProvinciales: TSpeedButton;
    SpeedButtonAcercaDeHCCAPHospitalesDeExcelencia: TSpeedButton;
    btnContactarHospitalDeExcelenciaYCapacitador: TButton;
    RvSystemPlanillasProvinciales: TRvSystem;
    RvRenderPDFPlanillasProvinciales: TRvRenderPDF;
    MemoMuelaReportes: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    DBedtGradEnEmpInternasCMG: TDBEdit;
    edtGradEnEmpInternasCMG: TEdit;
    Label9: TLabel;
    Label50: TLabel;
    DBedtGradEnInstExternasCMG: TDBEdit;
    edtGradEnInstExternasCMG: TEdit;
    Label37: TLabel;
    DBedtTotalTrabNoIdoneosCMG: TDBEdit;
    edtTotalTrabNoIdoneosCMG: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBedtNoIdoneosSinCalificFormalCMG: TDBEdit;
    Label40: TLabel;
    DBedtNoIdoneosSinEficienciaCMG: TDBEdit;
    Label41: TLabel;
    DBedtNoIdoneosSinBConductaCMG: TDBEdit;
    edtNoIdoneosSinCalificFormalCMG: TEdit;
    edtNoIdoneosSinEficienciaCMG: TEdit;
    edtNoIdoneosSinBConductaCMG: TEdit;
    GroupBoxReportesParte1PlanillasProvinciales: TGroupBox;
    btnExportarReporteParte1PlanillasProvinciales: TButton;
    SaveDialogPlanillasProvinciales: TSaveDialog;
    GroupBoxReportesParte2PlanillasProvinciales: TGroupBox;
    GroupBoxReportesParte3PlanillasProvinciales: TGroupBox;
    GroupBoxReportesParte4PlanillasProvinciales: TGroupBox;
    GroupBoxReportesParte5PlanillasProvinciales: TGroupBox;
    GroupBoxReportesParte6PlanillasProvinciales: TGroupBox;
    btnExportarReporteParte2PlanillasProvinciales: TButton;
    btnExportarReporteParte3PlanillasProvinciales: TButton;
    btnExportarReporteParte4PlanillasProvinciales: TButton;
    btnExportarReporteParte5PlanillasProvinciales: TButton;
    btnExportarReporteParte6PlanillasProvinciales: TButton;
    GroupBoxReportesPlanillasDeExcelencia: TGroupBox;
    btnExportarPDFPlanillaDeExcelencia: TButton;
    Edit29: TEdit;
    edtTotalNivelXTotalNoIdoneos: TEdit;
    edtTotalNivelXMatric: TEdit;
    edtTotalNivelXNoMatric: TEdit;
    Edit40: TEdit;
    DBedtTotalNivelXTotalNoIdoneos: TDBEdit;
    DBedtTotalNivelXMatric: TDBEdit;
    DBedtTotalNivelXNoMatric: TDBEdit;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label31: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label78: TLabel;
    Label45: TLabel;
    Label79: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Edit36: TEdit;
    DBedtTotalNoIdoneosXTotalNoIdoneos: TDBEdit;
    DBedtTotalNoIdoneosXMatric: TDBEdit;
    DBedtTotalNoIdoneosXNoMatric: TDBEdit;
    Edit41: TEdit;
    edtTotalNoIdoneosXTotalNoIdoneos: TEdit;
    edtTotalNoIdoneosXMatric: TEdit;
    edtTotalNoIdoneosXNoMatric: TEdit;
    Label112: TLabel;
    edtCasilla1XPendiente: TEdit;
    edtCasilla2XPendiente: TEdit;
    edtTotalXPendiente: TEdit;
    DBedtCasilla1XPendiente: TDBEdit;
    DBedtCasilla2XPendiente: TDBEdit;
    DBedtTotalXPendiente: TDBEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    MemoCasilla1XCausas: TMemo;
    MemoCasilla2XCausas: TMemo;
    MemoTotalXCausas: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    DBMemoCasilla1XCausas: TDBMemo;
    DBMemoCasilla2XCausas: TDBMemo;
    DBMemoTotalXCausas: TDBMemo;
    edtNoEficTrabProxEdadJub: TEdit;
    edtNoEficTrabProblemasSalud: TEdit;
    edtNoEficLicEnfermedadYMaternidad: TEdit;
    edtNoEficTrabProblemasFamiliares: TEdit;
    edtNoEficTrabTurnosRotativos: TEdit;
    edtNoEficTrabNieganIncorp: TEdit;
    edtNoEficMovilConstruc: TEdit;
    edtNoEficOtrasCausas: TEdit;
    edtNoFormalTrabProxEdadJub: TEdit;
    edtNoFormalTrabProblemasSalud: TEdit;
    edtNoFormalLicEnfermedadYMaternidad: TEdit;
    edtNoFormalTrabProblemasFamiliares: TEdit;
    edtNoFormalNoDisponibMatricXMINED: TEdit;
    edtNoFormalNoDisponibMatricXMES: TEdit;
    edtNoFormalLimMatricNivSup: TEdit;
    edtNoFormalImposibEntidAbrirAulas: TEdit;
    edtNoFormalOtrasCausas: TEdit;
    edtNoFormalMovilConstruc: TEdit;
    edtNoFormalTrabNieganIncorp: TEdit;
    edtNoFormalTrabTurnosRotativos: TEdit;
    edtNoFormalTrabNoAcredit: TEdit;
    DBedtNoFormalTrabProxEdadJub: TDBEdit;
    DBedtNoFormalTrabProblemasSalud: TDBEdit;
    DBedtNoFormalLicEnfermedadYMaternidad: TDBEdit;
    DBedtNoFormalTrabProblemasFamiliares: TDBEdit;
    DBedtNoFormalNoDisponibMatricXMINED: TDBEdit;
    DBedtNoFormalNoDisponibMatricXMES: TDBEdit;
    DBedtNoFormalLimMatricNivSup: TDBEdit;
    DBedtNoFormalImposibEntidAbrirAulas: TDBEdit;
    DBedtNoFormalTrabNoAcredit: TDBEdit;
    DBedtNoFormalTrabTurnosRotativos: TDBEdit;
    DBedtNoFormalTrabNieganIncorp: TDBEdit;
    DBedtNoFormalMovilConstruc: TDBEdit;
    DBedtNoFormalOtrasCausas: TDBEdit;
    DBedtNoEficTrabProxEdadJub: TDBEdit;
    DBedtNoEficTrabProblemasSalud: TDBEdit;
    DBedtNoEficLicEnfermedadYMaternidad: TDBEdit;
    DBedtNoEficTrabProblemasFamiliares: TDBEdit;
    DBedtNoEficTrabTurnosRotativos: TDBEdit;
    DBedtNoEficTrabNieganIncorp: TDBEdit;
    DBedtNoEficMovilConstruc: TDBEdit;
    DBedtNoEficOtrasCausas: TDBEdit;
    DBPanelParte5_8PlanillasProvinciales: TPanel;
    PanelParte5_8PlanillasProvinciales: TPanel;
    PanelParte5_6PlanillasProvinciales: TPanel;
    DBPanelParte5_6PlanillasProvinciales: TPanel;
    PanelParte5_3PlanillasProvinciales: TPanel;
    DBPanelParte5_3PlanillasProvinciales: TPanel;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    Memo12: TMemo;

    //Acciones del menú principal (MainMenu)
    procedure Salir1Click(Sender: TObject);    
    procedure HCCAPv111Click(Sender: TObject);
    procedure Camaguey1Click(Sender: TObject);
    procedure Ciegodevila1Click(Sender: TObject);
    procedure Cienfuegos1Click(Sender: TObject);
    procedure CiudaddelaHabana1Click(Sender: TObject);
    procedure Granma1Click(Sender: TObject);
    procedure Guantnamo1Click(Sender: TObject);
    procedure Holgun1Click(Sender: TObject);
    procedure IsladelaJuventud1Click(Sender: TObject);
    procedure N9LaHabana1Click(Sender: TObject);
    procedure N10LasTunas1Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N12Pinardelrio1Click(Sender: TObject);
    procedure N13SanctiSpritus1Click(Sender: TObject);
    procedure N14SantiagodeCuba1Click(Sender: TObject);
    procedure N15VillaClara1Click(Sender: TObject);

    //Validaciones programadas para los DBEdits y Edits
    procedure OnKeyPressSoloNumerosEnteros(Sender: TObject; var Key: Char);
    procedure OnKeyPressSoloNumerosReales(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure TabSheetParte1PlanillasProvincialesShow(Sender: TObject);
    procedure TabSheetParte2PlanillasProvincialesShow(Sender: TObject);
    procedure TabSheetParte3PlanillasProvincialesShow(Sender: TObject);
    procedure TabSheetParte4PlanillasProvincialesShow(Sender: TObject);
    procedure TabSheetParte5PlanillasProvincialesShow(Sender: TObject);
    procedure TabSheetParte6PlanillasProvincialesShow(Sender: TObject);

{---------------------------------------------------------------------}

    //*** Activación de los botones de las Planillas Provinciales ***
    
    //* Planilla de las Planillas Provinciales (CMG)
    procedure btnNuevosValoresPlanillasProvincialesClick(Sender: TObject);
    procedure btnInsertarValoresPlanillasProvincialesClick(Sender: TObject);
    procedure btnModificarValoresPlanillasProvincialesClick(Sender: TObject);
    procedure btnGuardarValoresPlanillasProvincialesClick(Sender: TObject);
    procedure btnEliminarValoresPlanillasProvincialesClick(Sender: TObject);
    procedure btnCancelarPlanillasProvincialesClick(Sender: TObject);
    procedure MenuOpcionGenerarReportePlanillaProvincialClick(Sender: TObject);

{---------------------------------------------------------------------}

//*** Operaciones sobre componentes de BD de las Planillas Provinciales ***

    //*** Habilitación de DBEdits y DBMemos de las Planillas Provinciales ***
    procedure HabilitarDBEditsYMemosPlanillasProvinciales;

    //*** Deshabilitación de DBEdits y DBMemos de las Planillas Provinciales ***
    procedure DeshabilitarDBEditsYMemosPlanillasProvinciales;

    //*** Ocultar DBEdits y DBMemos de las Planillas Provinciales ***
    procedure OcultarDBEditsYMemosPlanillasProvinciales;

    //*** Mostrar DBEdits y DBMemos de las Planillas Provinciales ***
    procedure MostrarDBEditsYMemosPlanillasProvinciales;

    //*** Limpieza de DBEdits y DBMemos de las Planillas Provinciales ***
    procedure LimpiarDBEditsYMemosPlanillasProvinciales;

    //*** Verificar si los DBEdits y DBMemos de las Planillas Provinciales están llenos***
    function LosDBEditsYDBMemosEstanLlenosPlanillasProvinciales: Boolean;
    function LosDBEditsEstanLlenosPlanillasProvinciales: Boolean;
    procedure DetallarDBEditsNumerosFaltantesPlanillasProvinciales;

    //*** Pone en focus el primer DBEdit que esté vacío en las Planillas Provinciales ***
    procedure PosicionarEnDBEditVacioPlanillasProvinciales;

    //*** Pone en focus el primer DBEdit que tenga un valor mayor que 10 millones en las Planillas Provinciales ***
    procedure PosicionarEnDBEditSePasaDeSmallIntPlanillasProvinciales;    

    function LosDBEditsSePasanDeSmallIntPlanillasProvinciales: Boolean;
    procedure DetallarDBEditsPasadosDeSmallIntPlanillasProvinciales;

    //*** Poner en "Sin comentarios" los DBMemos que estén vacios en las Planillas Provinciales
    procedure PonerSinComentariosDBMemosPlanillasProvinciales;

    //*** Poner la propiedad ReadOnly en True en los DBEdits y DBMemos de las Planillas Provinciales ***
    procedure PonerLecturaSolamenteDBEditsYDBMemosPlanillasProvinciales;

    //*** Poner la propiedad ReadOnly en False en los DBEdits y DBMemos de las Planillas Provinciales ***
    procedure PonerLecturaYEscrituraDBEditsYDBMemosPlanillasProvinciales;

    //*** Refrescar los DBGrids de las Planillas Provinciales ***
    procedure RefrescarDBGridsPlanillasProvinciales;

    //*** Deshabilitación de los DBGrids de las Planillas Provinciales ***
    procedure DeshabilitarDBGridsPlanillasProvinciales;

    //*** Habilitación de los DBGrids de las Planillas Provinciales ***
    procedure HabilitarDBGridsPlanillasProvinciales;

    //*** Pone el Focus en los DBGrids de las Planillas Provinciales ***
    procedure PonerFocusEnDBGridsPlanillasProvinciales;

{---------------------------------------------------------------------}

//*** Operaciones sobre Edits Y Memos de las Planillas Provinciales ***

    //*** Ocultar Edits y Memos de las Planillas Provinciales ***
    procedure OcultarEditsYMemosPlanillasProvinciales;

    //*** Mostrar Edits y Memos de las Planillas Provinciales ***
    procedure MostrarEditsYMemosPlanillasProvinciales;

    //*** Limpiar Edits y Memos de las Planillas Provinciales ***
    procedure LimpiarEditsYMemosPlanillasProvinciales;

    //*** Verificar si los Edits y Memos de las Planillas Provinciales están llenos***
    function LosEditsYMemosEstanLlenosPlanillasProvinciales: Boolean;
    function LosEditsEstanLlenosPlanillasProvinciales: Boolean;
    procedure DetallarEditsNumerosFaltantesPlanillasProvinciales;

    //*** Pone en focus el primer Edit que esté vacío en las Planillas Provinciales ***
    procedure PosicionarEnEditVacioPlanillasProvinciales;
    
    //*** Pone en focus el primer Edit que tenga un valor mayor que 10 millones en las Planillas Provinciales ***
    procedure PosicionarEnEditSePasaDeSmallIntPlanillasProvinciales;

    //Verificar si los valores en los Edits se pasan de SmallInt en las Planillas Provinciales
    function LosEditsSePasanDeSmallIntPlanillasProvinciales: Boolean;
    procedure DetallarEditsPasadosDeSmallIntPlanillasProvinciales;

{---------------------------------------------------------------------}
//*** Habilitación de botones en las Planillas Provinciales ***
    //Botones de "Nuevos"
    procedure HabilitarBotonesNuevosPlanillasProvinciales;

    //* Botones de "Insertar Valores"
    procedure HabilitarBotonesInsertarValoresPlanillasProvinciales;

    //* Botones de "Modificar Valores"
    procedure HabilitarBotonesModificarValoresPlanillasProvinciales;

    //* Botones de "Guardar"
    procedure HabilitarBotonesGuardarPlanillasProvinciales;

    //* Botones de "Eliminar Valores"
    procedure HabilitarBotonesEliminarValoresPlanillasProvinciales;

    //* Botones de "Cancelar"
    procedure HabilitarBotonesCancelarPlanillasProvinciales;

    //* Botones de "Resúmenes"
    procedure HabilitarBotonesResumenesPlanillasProvinciales;

    //* Botones de "Generar Reporte"
    procedure HabilitarBotonesGenerarReportePlanillasProvinciales;
{---------------------------------------------------------------------}

//*** Deshabilitación de botones en las Planillas Provinciales ***

    //Botones de "Nuevos"
    procedure DeshabilitarBotonesNuevosPlanillasProvinciales;

    //* Botones de "Insertar Valores"
    procedure DeshabilitarBotonesInsertarValoresPlanillasProvinciales;

    //* Botones de "Modificar Valores"
    procedure DeshabilitarBotonesModificarValoresPlanillasProvinciales;

    //* Botones de "Guardar"
    procedure DeshabilitarBotonesGuardarPlanillasProvinciales;

    //* Botones de "Eliminar Valores"
    procedure DeshabilitarBotonesEliminarValoresPlanillasProvinciales;

    //* Botones de "Cancelar"
    procedure DeshabilitarBotonesCancelarPlanillasProvinciales;

    //* Botones de "Resúmenes"
    procedure DeshabilitarBotonesResumenesPlanillasProvinciales;

    //* Botones de "Generar Reporte"
    procedure DeshabilitarBotonesGenerarReportePlanillasProvinciales;

{---------------------------------------------------------------------}

//*** Ocultar botones en las Planillas Provinciales ***

    //Botones de "Nuevos"
    procedure OcultarBotonesNuevosPlanillasProvinciales;

    //* Botones de "Insertar Valores"
    procedure OcultarBotonesInsertarValoresPlanillasProvinciales;

    //* Botones de "Modificar Valores"
    procedure OcultarBotonesModificarValoresPlanillasProvinciales;

    //* Botones de "Guardar"
    procedure OcultarBotonesGuardarPlanillasProvinciales;

    //* Botones de "Eliminar Valores"
    procedure OcultarBotonesEliminarValoresPlanillasProvinciales;

    //* Botones de "Cancelar"
    procedure OcultarBotonesCancelarPlanillasProvinciales;

    //* Botones de "Resúmenes"
    procedure OcultarBotonesResumenesPlanillasProvinciales;

    //* Botones de "Generar Reporte"
    procedure OcultarBotonesGenerarReportePlanillasProvinciales;

{---------------------------------------------------------------------}

//*** Mostrar botones en las Planillas Provinciales ***

    //Botones de "Nuevos"
    procedure MostrarBotonesNuevosPlanillasProvinciales;

    //* Botones de "Insertar Valores"
    procedure MostrarBotonesInsertarValoresPlanillasProvinciales;

    //* Botones de "Modificar Valores"
    procedure MostrarBotonesModificarValoresPlanillasProvinciales;

    //* Botones de "Guardar"
    procedure MostrarBotonesGuardarPlanillasProvinciales;

    //* Botones de "Eliminar Valores"
    procedure MostrarBotonesEliminarValoresPlanillasProvinciales;

    //* Botones de "Cancelar"
    procedure MostrarBotonesCancelarPlanillasProvinciales;

    //* Botones de "Resúmenes"
    procedure MostrarBotonesResumenesPlanillasProvinciales;

    //* Botones de "Generar Reporte"
    procedure MostrarBotonesGenerarReportePlanillasProvinciales;

{---------------------------------------------------------------------}

//*** Cambiar Caption de botones en las Planillas Provinciales ***

    //* Botones de "Cancelar" X "Cancelar Nueva"
    procedure CambiarCaptionCancelarXCancelarNuevaPlanillasProvinciales;

    //* Botones de "Cancelar" X "Cancelar Cambios"
    procedure CambiarCaptionCancelarXCancelarCambiosPlanillasProvinciales;



{---------------------------------------------------------------------}

//*** Cambiar Hint de botones en las Planillas Provinciales ***
    Procedure CambiarHintBotonesCancelarPlanillasProvinciales(aHint: String);





{---------------------------------------------------------------------}
  // ** Trabajo con Labels de las Planillas Provinciales
    procedure OcultarLabelsAnnoPlanillasProvinciales;
    procedure MostrarLabelsAnnoPlanillasProvinciales;

    procedure HabilitarLabelsAnnoPlanillasProvinciales;
    procedure DeshabilitarLabelsAnnoPlanillasProvinciales;


{---------------------------------------------------------------------}
  // ** Trabajo con DateTimes de las Planillas Provinciales
    procedure OcultarDateTimeAnnoPlanillasProvinciales;
    procedure MostrarDateTimeAnnoPlanillasProvinciales;

    procedure HabilitarDateTimeAnnoPlanillasProvinciales;
    procedure DeshabilitarDateTimeAnnoPlanillasProvinciales;

    procedure ActualizarDateTimeAnnoPlanillasProvinciales(aDate: TDate);


{---------------------------------------------------------------------}
  // ** Trabajo con ComboBox de las Planillas Provinciales
    procedure ActualizarComboBoxProvinciasPlanillasProvinciales(aItemIndex: Integer);

    procedure HabilitarComboBoxProvinciasPlanillasProvinciales;
    procedure DeshabilitarComboBoxProvinciasPlanillasProvinciales;


{---------------------------------------------------------------------}
  // ** Trabajo con Planillas temporales en las Planillas Provinciales

    procedure RellenarPlanillaDBTemporalPlanillasProvinciales;
    procedure RellenarPlanillaTemporalPlanillasProvinciales;

    procedure VaciarPlanillaDBTemporalPlanillasProvinciales;
    procedure VaciarPlanillaTemporalPlanillasProvinciales;


{---------------------------------------------------------------------}


    procedure FormShow(Sender: TObject);
    procedure btnGenerarReportePlanillasProvincialesClick(Sender: TObject);
    procedure Desconectarse1Click(Sender: TObject);
    procedure SpeedButtonConectarseTodosClick(Sender: TObject);
    procedure SpeedButtonDesconectarseTodosClick(Sender: TObject);
    procedure TabSheetPlanillasShow(Sender: TObject);
    procedure TabSheetHospitalesDeExcelenciaShow(Sender: TObject);

    procedure SpeedButtonNuevaPlanillaClick(Sender: TObject);
    procedure SpeedButtonModificarPlanillaClick(Sender: TObject);
    procedure SpeedButtonEliminarPlanillaClick(Sender: TObject);
    procedure SpeedButtonGenerarReportePlanillaClick(Sender: TObject);
    procedure SpeedButtonTemasDeAyudaPlanillasClick(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure MenuOpcionAgregarPlanillaProvincialClick(Sender: TObject);
    procedure MenuOpcionModificarPlanillaProvincialClick(Sender: TObject);
    procedure MenuOpcionEliminarPlanillaProvincialClick(Sender: TObject);

    procedure DateTimeAnnoParte1PlanillasProvincialesChange(Sender: TObject);
    procedure DateTimeAnnoParte2PlanillasProvincialesChange(Sender: TObject);
    procedure DateTimeAnnoParte3PlanillasProvincialesChange(Sender: TObject);
    procedure DateTimeAnnoParte4PlanillasProvincialesChange(Sender: TObject);
    procedure DateTimeAnnoParte5PlanillasProvincialesChange(Sender: TObject);
    procedure DateTimeAnnoParte6PlanillasProvincialesChange(Sender: TObject);

    procedure ComboBoxProvinciasParte1PlanillasProvincialesChange(Sender: TObject);
    procedure ComboBoxProvinciasParte2PlanillasProvincialesChange(Sender: TObject);
    procedure ComboBoxProvinciasParte3PlanillasProvincialesChange(Sender: TObject);
    procedure ComboBoxProvinciasParte4PlanillasProvincialesChange(Sender: TObject);
    procedure ComboBoxProvinciasParte5PlanillasProvincialesChange(Sender: TObject);
    procedure ComboBoxProvinciasParte6PlanillasProvincialesChange(Sender: TObject);


//*** Procedimientos del Módulo de Planillas de Excelencia
    procedure btnNuevoPuestosDeTrabajoClick(Sender: TObject);
    procedure DBGridPuestosDeTrabajoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridAnnoPlanillasProvincialesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure TabSheetControlDelSistemaShow(Sender: TObject);
    procedure btnEliminarPuestosDeTrabajoClick(Sender: TObject);
    procedure btnModificarPuestosDeTrabajoClick(Sender: TObject);
    procedure SpeedButtonNuevoPuestosDeTrabajoClick(Sender: TObject);
    procedure SpeedButtonModificarPuestosDeTrabajoClick(Sender: TObject);
    procedure SpeedButtonEliminarPuestosDeTrabajoClick(Sender: TObject);
    procedure PageControlTodoChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxProvinciasPlanillasProvincialesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure btnResumenesPlanillasProvincialesClick(Sender: TObject);
    procedure btnNuevoRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnModificarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnEliminarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnResumenesRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnGenerarReporteRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender: TObject);
    procedure DBGridAnnoHospitalesDeExcelenciaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure DBLookupComboBoxHospitalesDeExcelenciaClick(Sender: TObject);
    procedure ComboBoxSemestreHospitalesDeExcelenciaChange(Sender: TObject);
    procedure DBMemoCorreosElectronicosCapacClick(Sender: TObject);
    procedure btnEliminarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure btnModificarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure btnNuevoHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnNuevoTipoDeCursoClick(Sender: TObject);
    procedure btnModificarTipoDeCursoClick(Sender: TObject);
    procedure btnEliminarTipoDeCursoClick(Sender: TObject);
    procedure DBGridTiposDeCursosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridHospitalesDeExcelenciaCellClick(Column: TColumn);
    procedure DBMemoCorreosElectronicosCapacActualClick(Sender: TObject);
    procedure DBGridListadoDeHospitalesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCursosProgramadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCursosRealizadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure TabSheetDatosDelHospitalShow(Sender: TObject);
    procedure TabSheetHospitalesDeExcelenciaYCapacitadoresShow(Sender: TObject);
    procedure TabSheetTiposDeCursosShow(Sender: TObject);
    procedure MenuOpcionAgregarPuestoDeTrabajoClick(Sender: TObject);
    procedure MenuOpcionModificarPuestoDeTrabajoClick(Sender: TObject);
    procedure MenuOpcionEliminarPuestoDeTrabajoClick(Sender: TObject);
    procedure DBGridListadoDeHospitalesCellClick(Column: TColumn);
    procedure ActualizarRegistrosDExcelencia;
    procedure DBGridListadoDeHospitalesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MenuOpcionModificarTipoDeCursoClick(Sender: TObject);
    procedure MenuOpcionAgregarTipoDeCursoClick(Sender: TObject);
    procedure MenuOpcionEliminarTipoDeCursoClick(Sender: TObject);
    procedure MenuOpcionAgregarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure MenuOpcionModificarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure MenuOpcionEliminarHospitalDeExcelenciaYCapacitadorClick( Sender: TObject);
    procedure MenuOpcionAgregarPlanillaDeExcelenciaClick(Sender: TObject);
    procedure MenuOpcionModificarPlanillaDeExcelenciaClick(Sender: TObject);
    procedure MenuOpcionEliminarPlanillaDeExcelenciaClick(Sender: TObject);

//*** Cambiar Hint de SpeedButtons en los Hospitales de Excelencia ***
    Procedure CambiarHintSpeedButtonsHospitalesDeExcelencia(aHint1, aHint2, aHint3: String);

    //Validación de Componentes
    procedure ValidarComponentesPuestosDeTrabajo;
    procedure ValidarComponentesTrazasDelSistema;
    procedure ValidarComponentesPlanillasDeExcelencia;
    procedure ValidarComponentesHospitalesDeExcelenciaYCapacitadores;
    procedure ValidarComponentesTiposDeCursos;

    procedure SpeedButtonNuevaHospitalesDeExcelenciaClick(Sender: TObject);
    procedure SpeedButtonModificarHospitalesDeExcelenciaClick(
      Sender: TObject);
    procedure SpeedButtonEliminarHospitalesDeExcelenciaClick(
      Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridTrazasDelSistemaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridTrazasDelSistemaDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDetallesDeTrazaClick(Sender: TObject);
    procedure TabSheetPuestosDeTrabajoShow(Sender: TObject);
    procedure TabSheetTrazasDelSistemaShow(Sender: TObject);
    procedure MenuOpcionVerDetallesClick(Sender: TObject);
    procedure SpeedButtonAcercaDeHCCAPClick(
      Sender: TObject);
    procedure N1Camaguey1Click(Sender: TObject);
    procedure N2Ciegodevila1Click(Sender: TObject);
    procedure N3Cienfuegos1Click(Sender: TObject);
    procedure N4CiudaddelaHabana1Click(Sender: TObject);
    procedure N5Granma1Click(Sender: TObject);
    procedure N6Guantnamo1Click(Sender: TObject);
    procedure N7Holgun1Click(Sender: TObject);
    procedure N8IsladelaJuventud1Click(Sender: TObject);
    procedure N9LaHabana2Click(Sender: TObject);
    procedure N10LasTunas2Click(Sender: TObject);
    procedure N11Matanzas1Click(Sender: TObject);
    procedure N12Pinardelrio2Click(Sender: TObject);
    procedure N13SanctiSpritus2Click(Sender: TObject);
    procedure N14SantiagodeCuba2Click(Sender: TObject);
    procedure N15VillaClara2Click(Sender: TObject);
    procedure btnContactarHospitalDeExcelenciaYCapacitadorClick(
      Sender: TObject);
    procedure SpeedButtonDetallesDeTrazaClick(Sender: TObject);
    procedure RvSystemPlanillasProvincialesPrint(Sender: TObject);
    procedure RvSystemPlanillasProvincialesBeforePrint(Sender: TObject);
    procedure MenuOpcionVerResumenesProvincialesClick(Sender: TObject);
    procedure btnExportarReportePlanillasProvincialesClick(
      Sender: TObject);
    procedure btnExportarPDFPlanillaDeExcelenciaClick(Sender: TObject);

  private
    { Private declarations }
    procedure appmessage(var msg:tmsg;var handled:boolean);
    procedure DeterminarResolucionInicial;
    function CambiarResolucion(XRes, YRes: DWord):integer;



  public
    { Public declarations }
    {FNombrePC: String;
    FNumeroIP: String;
    FID_Usuario: String;
    FPrivilegio: String;
    FNombreUsuario: AnsiString;
    FPrimerApellido: AnsiString;
    FSegundoApellido: AnsiString;}
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
 uses UfrmPresentacion;

var
    TempPlanilla: TPlanillaProvincial;
    DptoCapacitacion: TDptoCapacitacion;
    //TrabajadorLoggeado: TTrabajadorLoggeado;
    ModuloActivo: string;
    PestannaActiva: string;
    Ocioso: Boolean;
    VecesEntrando: Integer;

    AnchoOriginalPantalla: Integer;
    AltoOriginalPantalla: Integer;
    Pantalla: TPantalla;


{$R *.dfm}

Procedure TfrmPrincipal.appmessage(var msg:tmsg; var handled:boolean);
begin
  if (   (msg.message = wm_syscommand) and (msg.wParam = sc_screensave)   )
    then handled:= True;
end;


procedure TfrmPrincipal.Salir1Click(Sender: TObject);
begin
  if MessageDlg('¿Desea cerrar el sistema HC-CAP 2008?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      begin
        //Compruebo si existe conexión con la BD
        if (DptoCapacitacion.ExisteConexionConLaBD)
          then
            begin
              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Salió del sistema HC-CAP 2008.');

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;

              //Desloggeo al usuario
              DptoCapacitacion.DesloggearAlUsuario;

              //Me desconecto de la BD
              DptoCapacitacion.EliminarConexionConLaBD;
            end;
            
        //Restituyo la resolución de la pantalla
        CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

        //Termino la aplicación
        Application.Terminate;
      end;
end;



procedure TfrmPrincipal.HCCAPv111Click(Sender: TObject);
begin
  //Muestro la "propaganda" del programa
  frmAcercaDe.Position:= poDesktopCenter;
  frmAcercaDe.ShowModal;
end;

{-------------------------------------------------------------}

//*** Llamadas a los ComboBox de las Planillas Provinciales desde el MainMenu ***

procedure TfrmPrincipal.Camaguey1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 0;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.Ciegodevila1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 1;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.Cienfuegos1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 2;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.CiudaddelaHabana1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 3;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.Granma1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 4;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.Guantnamo1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 5;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.Holgun1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 6;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.IsladelaJuventud1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 7;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N9LaHabana1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 8;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N10LasTunas1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 9;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N111Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 10;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N12Pinardelrio1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 11;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N13SanctiSpritus1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 12;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N14SantiagodeCuba1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 13;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

procedure TfrmPrincipal.N15VillaClara1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 14;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);
end;

{-------------------------------------------------------------}

//*** Validaciones para pulsaciones de teclas en los DBEdits de las Planillas Provinciales

procedure TfrmPrincipal.OnKeyPressSoloNumerosEnteros(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', #8]) then Abort;
end;

procedure TfrmPrincipal.OnKeyPressSoloNumerosReales(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', #8, '.']) then Abort;

  
{if ( StrScan('0123456789.'+chr(7)+chr(8), Key) = nil ) then  Key := #0;

  //cambiar punto decimal por coma
  if key = '.' then key := ',';

  //controlar entrada una sola coma
  for i := 1 to length(EDos.Text) do
    if ( copy(EDos.Text,i,1) = ',' ) and not ( StrScan(',', Key) = nil ) then  Key := #0;
}
end;

{-------------------------------------------------------------}

//*** Para controlar cuando habilitar los DBEdits al insertar nuevos valores
procedure TfrmPrincipal.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin

//* Planillas Provinciales
   //*** Pestaña 1 ***

  //Cálculo de la Relación para DBedtRelacionGradXTotalCMG
  if ( (DBedtTotalTrabOrgCMG.Text <> '') and (DBedtTotalGradAccCapCMG.Text <> '') and (DBedtTotalTrabOrgCMG.Text <> '0')) then
    begin
      DBedtRelacionGradXTotalCMG.Text:= FloatToStr(    SimpleRoundTo(  ( StrToInt(DBedtTotalGradAccCapCMG.Text) / StrToInt(DBedtTotalTrabOrgCMG.Text) ), -3  )    );
    end;
    
  //Aseguro que sea cero la relación (DBedtRelacionGradXTotalCMG), para evitar el error en caso que el denominador sea cero.
  if (DBedtTotalTrabOrgCMG.Text = '0') then
    begin
      DBedtRelacionGradXTotalCMG.Text:= '0';
    end;

  //Cálculo de la Relación para edtRelacionGradXTotalCMG
  if ( (edtTotalTrabOrgCMG.Text <> '') and (edtTotalGradAccCapCMG.Text <> '') and (edtTotalTrabOrgCMG.Text <> '0')) then
    begin
      edtRelacionGradXTotalCMG.Text:= FloatToStr(    SimpleRoundTo(  ( StrToInt(edtTotalGradAccCapCMG.Text) / StrToInt(edtTotalTrabOrgCMG.Text) ), -3)    );
    end;

  //Aseguro que sea cero la relación(edtRelacionGradXTotalCMG), para evitar el error en caso que el denominador sea cero.
  if (edtTotalTrabOrgCMG.Text = '0') then
    begin
      edtRelacionGradXTotalCMG.Text:= '0';
    end;



   //*** Pestaña 4 ***


  //Cálculo del 1er total (Edit) en la tabla de la pestaña 4
  if ( (edtMaestriasXMatricCMG.Text <> '') and (edtDiplomadosXMatricCMG.Text <> '') and (edtCurPostgradosXMatricCMG.Text <> '') and (edtCurIdiomasXMatricCMG.Text <> '') and (edtCurCompXMatricCMG.Text <> '') and (edtHabilitacionXMatricCMG.Text <> '') and (edtPerfecXMatricCMG.Text <> '') and (edtTallSemConfXMatricCMG.Text <> '')) then
    begin
      edtTotalXMatricCMG.Text := IntToStr(   StrToInt(edtMaestriasXMatricCMG.Text) + StrToInt(edtDiplomadosXMatricCMG.Text) + StrToInt(edtCurPostgradosXMatricCMG.Text) + StrToInt(edtCurIdiomasXMatricCMG.Text) + StrToInt(edtCurCompXMatricCMG.Text) + StrToInt(edtHabilitacionXMatricCMG.Text) + StrToInt(edtPerfecXMatricCMG.Text) + StrToInt(edtTallSemConfXMatricCMG.Text)   );
    end;

  //Cálculo del 2do total (Edit) en la tabla de la pestaña 4
  if ( (edtMaestriasXGradCMG.Text <> '') and (edtDiplomadosXGradCMG.Text <> '') and (edtCurPostgradosXGradCMG.Text <> '') and (edtCurIdiomasXGradCMG.Text <> '') and (edtCurCompXGradCMG.Text <> '') and (edtHabilitacionXGradCMG.Text <> '') and (edtPerfecXGradCMG.Text <> '') and (edtTallSemConfXGradCMG.Text <> '')) then
    begin
      edtTotalXGradCMG.Text := IntToStr(   StrToInt(edtMaestriasXGradCMG.Text) + StrToInt(edtDiplomadosXGradCMG.Text) + StrToInt(edtCurPostgradosXGradCMG.Text) + StrToInt(edtCurIdiomasXGradCMG.Text) + StrToInt(edtCurCompXGradCMG.Text) + StrToInt(edtHabilitacionXGradCMG.Text) + StrToInt(edtPerfecXGradCMG.Text) + StrToInt(edtTallSemConfXGradCMG.Text)   );
    end;

  //Cálculo del 1er total (DBEdit) en la tabla de la pestaña 4
  if ( (DBedtMaestriasXMatricCMG.Text <> '') and (DBedtDiplomadosXMatricCMG.Text <> '') and (DBedtCurPostgradosXMatricCMG.Text <> '') and (DBedtCurIdiomasXMatricCMG.Text <> '') and (DBedtCurCompXMatricCMG.Text <> '') and (DBedtHabilitacionXMatricCMG.Text <> '') and (DBedtPerfecXMatricCMG.Text <> '') and (DBedtTallSemConfXMatricCMG.Text <> '')) then
    begin
      DBedtTotalXMatricCMG.Text := IntToStr(   StrToInt(DBedtMaestriasXMatricCMG.Text) + StrToInt(DBedtDiplomadosXMatricCMG.Text) + StrToInt(DBedtCurPostgradosXMatricCMG.Text) + StrToInt(DBedtCurIdiomasXMatricCMG.Text) + StrToInt(DBedtCurCompXMatricCMG.Text) + StrToInt(DBedtHabilitacionXMatricCMG.Text) + StrToInt(DBedtPerfecXMatricCMG.Text) + StrToInt(DBedtTallSemConfXMatricCMG.Text)   );
    end;

  //Cálculo del 2do total (DBEdit) en la tabla de la pestaña 4
  if ( (DBedtMaestriasXGradCMG.Text <> '') and (DBedtDiplomadosXGradCMG.Text <> '') and (DBedtCurPostgradosXGradCMG.Text <> '') and (DBedtCurIdiomasXGradCMG.Text <> '') and (DBedtCurCompXGradCMG.Text <> '') and (DBedtHabilitacionXGradCMG.Text <> '') and (DBedtPerfecXGradCMG.Text <> '') and (DBedtTallSemConfXGradCMG.Text <> '')) then
    begin
      DBedtTotalXGradCMG.Text := IntToStr(   StrToInt(DBedtMaestriasXGradCMG.Text) + StrToInt(DBedtDiplomadosXGradCMG.Text) + StrToInt(DBedtCurPostgradosXGradCMG.Text) + StrToInt(DBedtCurIdiomasXGradCMG.Text) + StrToInt(DBedtCurCompXGradCMG.Text) + StrToInt(DBedtHabilitacionXGradCMG.Text) + StrToInt(DBedtPerfecXGradCMG.Text) + StrToInt(DBedtTallSemConfXGradCMG.Text)   );
    end;



   //*** Pestaña 5 ***


  //Cálculo del 1er total (Edit) en la tabla 5.3
  if (   (edtGrado6XTotalNoIdoneos.Text <> '') and (edtGrado9XTotalNoIdoneos.Text <> '') and (edtGrado12XTotalNoIdoneos.Text <> '') and (edtTecMedioXTotalNoIdoneos.Text <> '') and (edtNivSupXTotalNoIdoneos.Text <> '')   ) then
    begin
      edtTotalNivelXTotalNoIdoneos.Text := IntToStr(   StrToInt(edtGrado6XTotalNoIdoneos.Text) + StrToInt(edtGrado9XTotalNoIdoneos.Text) + StrToInt(edtGrado12XTotalNoIdoneos.Text) + StrToInt(edtTecMedioXTotalNoIdoneos.Text) + StrToInt(edtNivSupXTotalNoIdoneos.Text)   );
    end;

  //Cálculo del 2do total (Edit) en la tabla 5.3
  if (   (edtGrado6XMatric.Text <> '') and (edtGrado9XMatric.Text <> '') and (edtGrado12XMatric.Text <> '') and (edtTecMedioXMatric.Text <> '') and (edtNivSupXMatric.Text <> '')   ) then
    begin
      edtTotalNivelXMatric.Text := IntToStr(   StrToInt(edtGrado6XMatric.Text) + StrToInt(edtGrado9XMatric.Text) + StrToInt(edtGrado12XMatric.Text) + StrToInt(edtTecMedioXMatric.Text) + StrToInt(edtNivSupXMatric.Text)   );
    end;

  //Cálculo del 3er total (Edit) en la tabla 5.3
  if (   (edtGrado6XNoMatric.Text <> '') and (edtGrado9XNoMatric.Text <> '') and (edtGrado12XNoMatric.Text <> '') and (edtTecMedioXNoMatric.Text <> '') and (edtNivSupXNoMatric.Text <> '')   ) then
    begin
      edtTotalNivelXNoMatric.Text := IntToStr(   StrToInt(edtGrado6XNoMatric.Text) + StrToInt(edtGrado9XNoMatric.Text) + StrToInt(edtGrado12XNoMatric.Text) + StrToInt(edtTecMedioXNoMatric.Text) + StrToInt(edtNivSupXNoMatric.Text)   );
    end;

  //Cálculo del 1er total (DBEdit) en la tabla 5.3
  if (   (DBedtGrado6XTotalNoIdoneos.Text <> '') and (DBedtGrado9XTotalNoIdoneos.Text <> '') and (DBedtGrado12XTotalNoIdoneos.Text <> '') and (DBedtTecMedioXTotalNoIdoneos.Text <> '') and (DBedtNivSupXTotalNoIdoneos.Text <> '')   ) then
    begin
      DBedtTotalNivelXTotalNoIdoneos.Text := IntToStr(   StrToInt(DBedtGrado6XTotalNoIdoneos.Text) + StrToInt(DBedtGrado9XTotalNoIdoneos.Text) + StrToInt(DBedtGrado12XTotalNoIdoneos.Text) + StrToInt(DBedtTecMedioXTotalNoIdoneos.Text) + StrToInt(DBedtNivSupXTotalNoIdoneos.Text)   );
    end;

  //Cálculo del 2do total (DBEdit) en la tabla 5.3
  if (   (DBedtGrado6XMatric.Text <> '') and (DBedtGrado9XMatric.Text <> '') and (DBedtGrado12XMatric.Text <> '') and (DBedtTecMedioXMatric.Text <> '') and (DBedtNivSupXMatric.Text <> '')   ) then
    begin
      DBedtTotalNivelXMatric.Text := IntToStr(   StrToInt(DBedtGrado6XMatric.Text) + StrToInt(DBedtGrado9XMatric.Text) + StrToInt(DBedtGrado12XMatric.Text) + StrToInt(DBedtTecMedioXMatric.Text) + StrToInt(DBedtNivSupXMatric.Text)   );
    end;

  //Cálculo del 3er total (DBEdit) en la tabla 5.3
  if (   (DBedtGrado6XNoMatric.Text <> '') and (DBedtGrado9XNoMatric.Text <> '') and (DBedtGrado12XNoMatric.Text <> '') and (DBedtTecMedioXNoMatric.Text <> '') and (DBedtNivSupXNoMatric.Text <> '')   ) then
    begin
      DBedtTotalNivelXNoMatric.Text := IntToStr(   StrToInt(DBedtGrado6XNoMatric.Text) + StrToInt(DBedtGrado9XNoMatric.Text) + StrToInt(DBedtGrado12XNoMatric.Text) + StrToInt(DBedtTecMedioXNoMatric.Text) + StrToInt(DBedtNivSupXNoMatric.Text)   );
    end;




  //Cálculo del 1er total (Edit) en la tabla 5.6
  if (   (edtCurHabilXTotalNoIdoneos.Text <> '') and (edtEntrenamientoXTotalNoIdoneos.Text <> '')   ) then
    begin
      edtTotalNoIdoneosXTotalNoIdoneos.Text := IntToStr(   StrToInt(edtCurHabilXTotalNoIdoneos.Text) + StrToInt(edtEntrenamientoXTotalNoIdoneos.Text)   );
    end;

  //Cálculo del 2do total (Edit) en la tabla 5.6
  if (   (edtCurHabilXMatric.Text <> '') and (edtEntrenamientoXMatric.Text <> '')   ) then
    begin
      edtTotalNoIdoneosXMatric.Text := IntToStr(   StrToInt(edtCurHabilXMatric.Text) + StrToInt(edtEntrenamientoXMatric.Text)   );
    end;

  //Cálculo del 3er total (Edit) en la tabla 5.6
  if (   (edtCurHabilXNoMatric.Text <> '') and (edtEntrenamientoXNoMatric.Text <> '')   ) then
    begin
      edtTotalNoIdoneosXNoMatric.Text := IntToStr(   StrToInt(edtCurHabilXNoMatric.Text) + StrToInt(edtEntrenamientoXNoMatric.Text)   );
    end;

  //Cálculo del 1er total (DBEdit) en la tabla 5.6
  if (   (DBedtCurHabilXTotalNoIdoneos.Text <> '') and (DBedtEntrenamientoXTotalNoIdoneos.Text <> '')   ) then
    begin
      DBedtTotalNoIdoneosXTotalNoIdoneos.Text := IntToStr(   StrToInt(DBedtCurHabilXTotalNoIdoneos.Text) + StrToInt(DBedtEntrenamientoXTotalNoIdoneos.Text)   );
    end;

  //Cálculo del 2do total (DBEdit) en la tabla 5.6
  if (   (DBedtCurHabilXMatric.Text <> '') and (DBedtEntrenamientoXMatric.Text <> '')   ) then
    begin
      DBedtTotalNoIdoneosXMatric.Text := IntToStr(   StrToInt(DBedtCurHabilXMatric.Text) + StrToInt(DBedtEntrenamientoXMatric.Text)   );
    end;

  //Cálculo del 3er total (DBEdit) en la tabla 5.6
  if (   (DBedtCurHabilXNoMatric.Text <> '') and (DBedtEntrenamientoXNoMatric.Text <> '')   ) then
    begin
      DBedtTotalNoIdoneosXNoMatric.Text := IntToStr(   StrToInt(DBedtCurHabilXNoMatric.Text) + StrToInt(DBedtEntrenamientoXNoMatric.Text)   );
    end;




  //Cálculo del único total (Edit) en la tabla 5.8
  if (   (edtCasilla1XPendiente.Text <> '') and (edtCasilla2XPendiente.Text <> '')   ) then
    begin
      edtTotalXPendiente.Text := IntToStr(   StrToInt(edtCasilla1XPendiente.Text) + StrToInt(edtCasilla2XPendiente.Text)   );
    end;
    
  //Cálculo del único total (DBEdit) en la tabla 5.8
  if (   (DBedtCasilla1XPendiente.Text <> '') and (DBedtCasilla2XPendiente.Text <> '')   ) then
    begin
      DBedtTotalXPendiente.Text := IntToStr(   StrToInt(DBedtCasilla1XPendiente.Text) + StrToInt(DBedtCasilla2XPendiente.Text)   );
    end;


    

  //Realizo un adecuado tratamiento del Menú Principal
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        if (PageControlTodo.ActivePageIndex= 0)  //Módulo de Control del Sistema
          then
            begin
              if (PageControlControlDelSistema.ActivePageIndex= 0)
                then
                  begin
                    //Muestro u oculto convenientemente las opciones de edición del Menú Principal
                    MenuEdicion.Enabled:= True;

                    MenuOpcionAgregarPuestoDeTrabajo.Visible:= True;
                    MenuOpcionAgregarPlanillaProvincial.Visible:= False;
                    MenuOpcionAgregarPlanillaDeExcelencia.Visible:= False;
                    MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Visible:= False;
                    MenuOpcionAgregarTipoDeCurso.Visible:= False;

                    MenuOpcionModificarPuestoDeTrabajo.Visible:= True;
                    MenuOpcionModificarPlanillaProvincial.Visible:= False;
                    MenuOpcionModificarPlanillaDeExcelencia.Visible:= False;
                    MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Visible:= False;
                    MenuOpcionModificarTipoDeCurso.Visible:= False;

                    MenuOpcionEliminarPuestoDeTrabajo.Visible:= True;
                    MenuOpcionEliminarPlanillaProvincial.Visible:= False;
                    MenuOpcionEliminarPlanillaDeExcelencia.Visible:= False;
                    MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Visible:= False;
                    MenuOpcionEliminarTipoDeCurso.Visible:= False;

                    MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;

                    //Muestro u oculto convenientemente las opciones de Ver del Menú Principal
                    MenuVer.Enabled:= False;

                    MenuOpcionVerDetalles.Visible:= False;
                    MenuOpcionVerPlanillasProvinciales.Visible:= False;
                    MenuOpcionVerPlanillasDeExcelencia.Visible:= False;
                    MenuOpcionVerResumenesProvinciales.Visible:= False;
                    MenuOpcionVerResumenesDeExcelencia.Visible:= False;
                    MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                    MenuOpcionGenerarReportePlanillaDeExcelencia.Visible:= False;
                  end
                    else
                      begin
                        if (PageControlControlDelSistema.ActivePageIndex= 1)
                          then
                            begin
                              //Muestro u oculto convenientemente las opciones de edición del Menú Principal
                              MenuEdicion.Enabled:= False;

                              MenuOpcionAgregarPuestoDeTrabajo.Visible:= False;
                              MenuOpcionAgregarPlanillaProvincial.Visible:= False;
                              MenuOpcionAgregarPlanillaDeExcelencia.Visible:= False;
                              MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Visible:= False;
                              MenuOpcionAgregarTipoDeCurso.Visible:= False;

                              MenuOpcionModificarPuestoDeTrabajo.Visible:= False;
                              MenuOpcionModificarPlanillaProvincial.Visible:= False;
                              MenuOpcionModificarPlanillaDeExcelencia.Visible:= False;
                              MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Visible:= False;
                              MenuOpcionModificarTipoDeCurso.Visible:= False;

                              MenuOpcionEliminarPuestoDeTrabajo.Visible:= False;
                              MenuOpcionEliminarPlanillaProvincial.Visible:= False;
                              MenuOpcionEliminarPlanillaDeExcelencia.Visible:= False;
                              MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Visible:= False;
                              MenuOpcionEliminarTipoDeCurso.Visible:= False;

                              MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;

                              //Muestro u oculto convenientemente las opciones de Ver del Menú Principal
                              MenuVer.Enabled:= True;

                              MenuOpcionVerDetalles.Visible:= True;
                              MenuOpcionVerPlanillasProvinciales.Visible:= False;
                              MenuOpcionVerPlanillasDeExcelencia.Visible:= False;
                              MenuOpcionVerResumenesProvinciales.Visible:= False;
                              MenuOpcionVerResumenesDeExcelencia.Visible:= False;
                              MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                              MenuOpcionGenerarReportePlanillaDeExcelencia.Visible:= False;
                            end;
                      end;

            end
              else
                begin
                  if (PageControlTodo.ActivePageIndex= 1)   //Módulo de Planillas Provinciales
                    then
                      begin
                        //Muestro u oculto convenientemente las opciones de edición del Menú Principal
                        if (   (btnNuevosValoresParte1PlanillasProvinciales.Enabled= False) or (btnModificarValoresParte1PlanillasProvinciales.Enabled= False) or (btnNuevosValoresParte1PlanillasProvinciales.Visible= False) or (btnModificarValoresParte1PlanillasProvinciales.Visible= False)   )
                          then
                            begin
                              //Edición
                              MenuEdicion.Enabled:= False;
                              MenuOpcionAgregarPlanillaProvincial.Visible:= False;
                              MenuOpcionModificarPlanillaProvincial.Visible:= False;
                              MenuOpcionEliminarPlanillaProvincial.Visible:= False;

                              //Ver
                              MenuVer.Enabled:= False;
                              MenuOpcionVerPlanillasProvinciales.Visible:= False;
                              MenuOpcionVerResumenesProvinciales.Visible:= False;
                              MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                            end;

                        if (   (btnNuevosValoresParte1PlanillasProvinciales.Enabled= True) and (btnModificarValoresParte1PlanillasProvinciales.Enabled= True) and (btnNuevosValoresParte1PlanillasProvinciales.Visible= True) and (btnModificarValoresParte1PlanillasProvinciales.Visible= True)  )
                          then
                            begin
                              //Edición
                              MenuEdicion.Enabled:= True;
                              MenuOpcionAgregarPlanillaProvincial.Visible:= True;
                              MenuOpcionModificarPlanillaProvincial.Visible:= True;
                              MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                              //Ver
                              MenuVer.Enabled:= True;
                              MenuOpcionVerPlanillasProvinciales.Visible:= True;
                              MenuOpcionVerResumenesProvinciales.Visible:= True;
                              MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;
                            end;
                                                        
                        

                        MenuOpcionAgregarPuestoDeTrabajo.Visible:= False;

                        MenuOpcionAgregarPlanillaDeExcelencia.Visible:= False;
                        MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Visible:= False;
                        MenuOpcionAgregarTipoDeCurso.Visible:= False;

                        MenuOpcionModificarPuestoDeTrabajo.Visible:= False;

                        MenuOpcionModificarPlanillaDeExcelencia.Visible:= False;
                        MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Visible:= False;
                        MenuOpcionModificarTipoDeCurso.Visible:= False;

                        MenuOpcionEliminarPuestoDeTrabajo.Visible:= False;

                        MenuOpcionEliminarPlanillaDeExcelencia.Visible:= False;
                        MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Visible:= False;
                        MenuOpcionEliminarTipoDeCurso.Visible:= False;

                        MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

                        //Muestro u oculto convenientemente las opciones de Ver del Menú Principal

                        
                        MenuOpcionVerDetalles.Visible:= False;

                        MenuOpcionVerPlanillasDeExcelencia.Visible:= False;

                        MenuOpcionVerResumenesDeExcelencia.Visible:= False;

                        MenuOpcionGenerarReportePlanillaDeExcelencia.Visible:= False;
                      end
                        else
                          begin
                            if (PageControlTodo.ActivePageIndex= 2)   //Módulo de Hospitales de Excelencia
                              then
                                begin
                                  //Muestro u oculto convenientemente las opciones de edición de edición del Menú Principal
                                  MenuEdicion.Enabled:= True;

                                  MenuOpcionAgregarPuestoDeTrabajo.Visible:= False;
                                  MenuOpcionAgregarPlanillaProvincial.Visible:= False;

                                  MenuOpcionModificarPuestoDeTrabajo.Visible:= False;
                                  MenuOpcionModificarPlanillaProvincial.Visible:= False;

                                  MenuOpcionEliminarPuestoDeTrabajo.Visible:= False;
                                  MenuOpcionEliminarPlanillaProvincial.Visible:= False;


                                  if (PageControlHospitalesDeExcelencia.ActivePageIndex= 0) //Pestaña de Planillas de Excelencia
                                    then
                                      begin
                                        MenuEdicion.Visible:= True;

                                        MenuOpcionAgregarPlanillaDeExcelencia.Visible:= True;
                                        MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Visible:= False;
                                        MenuOpcionAgregarTipoDeCurso.Visible:= False;

                                        MenuOpcionModificarPlanillaDeExcelencia.Visible:= True;
                                        MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Visible:= False;
                                        MenuOpcionModificarTipoDeCurso.Visible:= False;

                                        MenuOpcionEliminarPlanillaDeExcelencia.Visible:= True;
                                        MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Visible:= False;
                                        MenuOpcionEliminarTipoDeCurso.Visible:= False;

                                        //Muestro u oculto convenientemente las opciones de Ver del Menú Principal
                                        MenuVer.Enabled:= True;

                                        MenuOpcionVerDetalles.Visible:= False;
                                        MenuOpcionVerPlanillasProvinciales.Visible:= False;
                                        MenuOpcionVerPlanillasDeExcelencia.Visible:= True;
                                        MenuOpcionVerResumenesProvinciales.Visible:= False;
                                        MenuOpcionVerResumenesDeExcelencia.Visible:= True;
                                        MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                                        MenuOpcionGenerarReportePlanillaDeExcelencia.Visible:= True;

                                        //Le cambio convenientemente el Hint a los SpeedButton
                                        CambiarHintSpeedButtonsHospitalesDeExcelencia('Crear una nueva Planilla de Excelencia', 'Modificar una Planilla de Excelencia', 'Eliminar una Planilla de Excelencia');
                                      end
                                        else
                                          begin
                                            if (PageControlHospitalesDeExcelencia.ActivePageIndex= 1)  //Pestaña de Admin. de Hosp. de Excelencia y Capacitador
                                              then
                                                begin
                                                  MenuEdicion.Enabled:= True;

                                                  MenuOpcionAgregarPlanillaDeExcelencia.Visible:= False;
                                                  MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Visible:= True;
                                                  MenuOpcionAgregarTipoDeCurso.Visible:= False;

                                                  MenuOpcionModificarPlanillaDeExcelencia.Visible:= False;
                                                  MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Visible:= True;
                                                  MenuOpcionModificarTipoDeCurso.Visible:= False;

                                                  MenuOpcionEliminarPlanillaDeExcelencia.Visible:= False;
                                                  MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Visible:= True;
                                                  MenuOpcionEliminarTipoDeCurso.Visible:= False;

                                                  //Muestro u oculto convenientemente las opciones de Ver del Menú Principal
                                                  MenuVer.Enabled:= False;

                                                  MenuOpcionVerDetalles.Visible:= False;
                                                  MenuOpcionVerPlanillasProvinciales.Visible:= False;
                                                  MenuOpcionVerPlanillasDeExcelencia.Visible:= False;
                                                  MenuOpcionVerResumenesProvinciales.Visible:= False;
                                                  MenuOpcionVerResumenesDeExcelencia.Visible:= False;
                                                  MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                                                  MenuOpcionGenerarReportePlanillaDeExcelencia.Visible:= False;

                                                  //Le cambio convenientemente el Hint a los SpeedButton
                                                  CambiarHintSpeedButtonsHospitalesDeExcelencia('Crear un nuevo Hospital de Excelencia con su Capacitador', 'Modificar un Hospital de Excelencia y/o su Capacitador', 'Eliminar un Hospital de Excelencia y su Capacitador');
                                                end
                                                  else
                                                    begin
                                                      if (PageControlHospitalesDeExcelencia.ActivePageIndex= 2)  //Pestaña de Tipos de Cursos
                                                        then
                                                          begin
                                                            MenuEdicion.Enabled:= True;
                                                            
                                                            MenuOpcionAgregarPlanillaDeExcelencia.Visible:= False;
                                                            MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Visible:= False;
                                                            MenuOpcionAgregarTipoDeCurso.Visible:= True;

                                                            MenuOpcionModificarPlanillaDeExcelencia.Visible:= False;
                                                            MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Visible:= False;
                                                            MenuOpcionModificarTipoDeCurso.Visible:= True;

                                                            MenuOpcionEliminarPlanillaDeExcelencia.Visible:= False;
                                                            MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Visible:= False;
                                                            MenuOpcionEliminarTipoDeCurso.Visible:= True;

                                                            //Muestro u oculto convenientemente las opciones de Ver del Menú Principal
                                                            MenuVer.Enabled:= False;
                                                            
                                                            MenuOpcionVerDetalles.Visible:= False;
                                                            MenuOpcionVerPlanillasProvinciales.Visible:= False;
                                                            MenuOpcionVerPlanillasDeExcelencia.Visible:= False;
                                                            MenuOpcionVerResumenesProvinciales.Visible:= False;
                                                            MenuOpcionVerResumenesDeExcelencia.Visible:= False;
                                                            MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                                                            MenuOpcionGenerarReportePlanillaDeExcelencia.Visible:= False;

                                                            //Le cambio convenientemente el Hint a los SpeedButton
                                                            CambiarHintSpeedButtonsHospitalesDeExcelencia('Crear un nuevo Tipo de Curso', 'Modificar un Tipo de Curso', 'Eliminar un Tipo de Curso');
                                                          end;
                                                    end;
                                          end;

                                  //MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;
                                end;
                          end;
                end;
      end;//Fin de comprobación de conexión
end; //Fin del procedimiento





{---------------------------------------------------------}
    //*** Habilitación de DBEdits y DBMemos de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.HabilitarDBEditsYMemosPlanillasProvinciales;
begin
{ *** Habilito los DBEdits y los DBMemos de las Planillas Provinciales,
      para que puedan ser modificados los valores. ***}

//Planillas Provinciales, parte 1:
	DBedtTotalEntOrgCMG.Enabled:= True;
	DBedtEntOrgConPlanAnualCapCMG.Enabled:= True;
	DBedtTotalTrabOrgCMG.Enabled:= True;
	DBedtTotalGradAccCapCMG.Enabled:= True;
	//DBedtRelacionGradXTotalCMG.Enabled:= True;{Menos este que se llena solo}


//Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.Enabled:= True;
	DBedtGradEnInstExternasCMG.Enabled:= True;
	DBedtDirectivosCMG.Enabled:= True;
	DBedtTecnicosCMG.Enabled:= True;
	DBedtAdministrativosCMG.Enabled:= True;
	DBedtTrabServiciosCMG.Enabled:= True;
	DBedtOperariosCMG.Enabled:= True;
	DBedtGradEnCurHabCMG.Enabled:= True;
	DBedtGradEnCurPerfecCMG.Enabled:= True;
	DBedtGradenAdiestLabCMG.Enabled:= True;
	DBedtGradEnEntPTrabCMG.Enabled:= True;
	DBedtGradEnCurPostGradoCMG.Enabled:= True;
	DBedtGradEnDiplomadosCMG.Enabled:= True;
	DBedtGradEnMaestriasCMG.Enabled:= True;
	DBedtGradEnDoctoradosCMG.Enabled:= True;
	DBedtGradEnCurFormCompMINEDCMG.Enabled:= True;
	DBedtGradEnCurFormCompMESCMG.Enabled:= True;
	DBedtGradEnCurIdiomaExtCMG.Enabled:= True;
	DBedtGradEnCurCompCMG.Enabled:= True;
	DBedtGradEnEntrenEnExtCMG.Enabled:= True;
	DBedtGradEnOtrasAccCMG.Enabled:= True;


//Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.Enabled:= True;
	DBedtInstEventUtilEnCapacCMG.Enabled:= True;
	DBedtInstPermUtilEnCapacCMG.Enabled:= True;


//Planillas Provinciales, parte 4:
	DBedtMaestriasXMatricCMG.Enabled:= True;
	DBedtDiplomadosXMatricCMG.Enabled:= True;
	DBedtCurPostgradosXMatricCMG.Enabled:= True;
	DBedtCurIdiomasXMatricCMG.Enabled:= True;
	DBedtCurCompXMatricCMG.Enabled:= True;
	DBedtHabilitacionXMatricCMG.Enabled:= True;
	DBedtPerfecXMatricCMG.Enabled:= True;
	DBedtTallSemConfXMatricCMG.Enabled:= True;
	//DBedtTotalXMatricCMG.Enabled:= True;{Menos este que se llena solo}
	DBedtMaestriasXGradCMG.Enabled:= True;
	DBedtDiplomadosXGradCMG.Enabled:= True;
  DBedtCurPostgradosXGradCMG.Enabled:= True;
	DBedtCurIdiomasXGradCMG.Enabled:= True;
	DBedtCurCompXGradCMG.Enabled:= True;
	DBedtHabilitacionXGradCMG.Enabled:= True;
	DBedtPerfecXGradCMG.Enabled:= True;
	DBedtTallSemConfXGradCMG.Enabled:= True;
	//DBedtTotalXGradCMG.Enabled:= True;{Menos este que se llena solo}
	DBMemoValTrabDesPorEscRamalesCMG.Enabled:= True;


//Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.Enabled:= True;
	DBedtNoIdoneosSinCalificFormalCMG.Enabled:= True;
	DBedtNoIdoneosSinEficienciaCMG.Enabled:= True;
	DBedtNoIdoneosSinBConductaCMG.Enabled:= True;

   	DBedtGrado6XTotalNoIdoneos.Enabled:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.Enabled:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.Enabled:= True;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.Enabled:= True;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneos.Enabled:= True;            //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    //DBedtTotalNivelXTotalNoIdoneos.Enabled:= True;         //Menos este, que se llena solo, Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.Enabled:= True;
   	DBedtGrado9XMatric.Enabled:= True;
   	DBedtGrado12XMatric.Enabled:= True;
   	DBedtTecMedioXMatric.Enabled:= True;
   	DBedtNivSupXMatric.Enabled:= True;
    //DBedtTotalNivelXMatric.Enabled:= True;                   //Menos este, que se llena solo, Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.Enabled:= True;
   	DBedtGrado9XNoMatric.Enabled:= True;
   	DBedtGrado12XNoMatric.Enabled:= True;
   	DBedtTecMedioXNoMatric.Enabled:= True;
   	DBedtNivSupXNoMatric.Enabled:= True;
    //DBedtTotalNivelXNoMatric.Enabled:= True;                 //Menos este, que se llena solo, Parte del 5.3 (tabla) Agregado en la versión 2008

    DBedtNoFormalTrabProxEdadJub.Enabled:= True;               //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.Enabled:= True;            //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.Enabled:= True;      //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.Enabled:= True;       //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.Enabled:= True;        //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.Enabled:= True;          //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.Enabled:= True;               //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.Enabled:= True;        //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.Enabled:= True;                 //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.Enabled:= True;           //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.Enabled:= True;              //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.Enabled:= True;                 //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.Enabled:= True;                   //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.Enabled:= True;                //5.5 Agregado en la versión 2008

    DBedtCurHabilXTotalNoIdoneos.Enabled:= True;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.Enabled:= True;    //Parte del 5.6 (tabla) Agregado en la versión 2008
    //DBedtTotalNoIdoneosXTotalNoIdoneos.Enabled:= True; //Menos este, que se llena solo, Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.Enabled:= True;                 //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.Enabled:= True;            //Parte del 5.6 (tabla) Modificado en la versión 2008
    //DBedtTotalNoIdoneosXMatric.Enabled:= True;         //Menos este, que se llena solo, Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.Enabled:= True;               //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.Enabled:= True;          //Parte del 5.6 (tabla) Modificado en la versión 2008
    //DBedtTotalNoIdoneosXNoMatric.Enabled:= True;       //Menos este, que se llena solo, Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtNoEficTrabProxEdadJub.Enabled:= True;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.Enabled:= True;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.Enabled:= True;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.Enabled:= True;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.Enabled:= True;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.Enabled:= True;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.Enabled:= True;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.Enabled:= True;                  //5.7.8 Agregado en la versión 2008

    DBedtCasilla1XPendiente.Enabled:= True;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.Enabled:= True;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    //DBedtTotalXPendiente.Enabled:= True;                           //Menos este, que se llena solo, Parte del 5.8 (tabla) Agregado en la versión 2008

    DBMemoCasilla1XCausas.Enabled:= True;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.Enabled:= True;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.Enabled:= True;                               //Parte del 5.8 (tabla) Agregado en la versión 2008

    
//Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.Enabled:= True;
end;


{---------------------------------------------------------}
//*** Deshabilitación de DBEdits y DBMemos de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.DeshabilitarDBEditsYMemosPlanillasProvinciales;
begin
{ *** Deshabilito los DBEdits y los DBMemos de las Planillas Provinciales,
      para que no puedan ser modificados los valores. ***}

  //Planillas Provinciales, parte 1:
	//DateTimeAnnoCMG.Enabled:= False;

	DBedtTotalEntOrgCMG.Enabled:= False;
	DBedtEntOrgConPlanAnualCapCMG.Enabled:= False;
	DBedtTotalTrabOrgCMG.Enabled:= False;
	DBedtTotalGradAccCapCMG.Enabled:= False;
	DBedtRelacionGradXTotalCMG.Enabled:= False;{De todas formas ya estaba así}


//Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.Enabled:= False;
	DBedtGradEnInstExternasCMG.Enabled:= False;
	DBedtDirectivosCMG.Enabled:= False;
	DBedtTecnicosCMG.Enabled:= False;
	DBedtAdministrativosCMG.Enabled:= False;
	DBedtTrabServiciosCMG.Enabled:= False;
	DBedtOperariosCMG.Enabled:= False;
	DBedtGradEnCurHabCMG.Enabled:= False;
	DBedtGradEnCurPerfecCMG.Enabled:= False;
	DBedtGradenAdiestLabCMG.Enabled:= False;
	DBedtGradEnEntPTrabCMG.Enabled:= False;
	DBedtGradEnCurPostGradoCMG.Enabled:= False;
	DBedtGradEnDiplomadosCMG.Enabled:= False;
	DBedtGradEnMaestriasCMG.Enabled:= False;
	DBedtGradEnDoctoradosCMG.Enabled:= False;
	DBedtGradEnCurFormCompMINEDCMG.Enabled:= False;
	DBedtGradEnCurFormCompMESCMG.Enabled:= False;
	DBedtGradEnCurIdiomaExtCMG.Enabled:= False;
	DBedtGradEnCurCompCMG.Enabled:= False;
	DBedtGradEnEntrenEnExtCMG.Enabled:= False;
	DBedtGradEnOtrasAccCMG.Enabled:= False;


//Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.Enabled:= False;
	DBedtInstEventUtilEnCapacCMG.Enabled:= False;
	DBedtInstPermUtilEnCapacCMG.Enabled:= False;


//Planillas Provinciales, parte 4:
	DBedtMaestriasXMatricCMG.Enabled:= False;
	DBedtDiplomadosXMatricCMG.Enabled:= False;
	DBedtCurPostgradosXMatricCMG.Enabled:= False;
	DBedtCurIdiomasXMatricCMG.Enabled:= False;
	DBedtCurCompXMatricCMG.Enabled:= False;
	DBedtHabilitacionXMatricCMG.Enabled:= False;
	DBedtPerfecXMatricCMG.Enabled:= False;
	DBedtTallSemConfXMatricCMG.Enabled:= False;
	DBedtTotalXMatricCMG.Enabled:= False;
	DBedtMaestriasXGradCMG.Enabled:= False;
	DBedtDiplomadosXGradCMG.Enabled:= False;
	DBedtCurPostgradosXGradCMG.Enabled:= False;
	DBedtCurIdiomasXGradCMG.Enabled:= False;
	DBedtCurCompXGradCMG.Enabled:= False;
	DBedtHabilitacionXGradCMG.Enabled:= False;
	DBedtPerfecXGradCMG.Enabled:= False;
	DBedtTallSemConfXGradCMG.Enabled:= False;
	DBedtTotalXGradCMG.Enabled:= False;
	DBMemoValTrabDesPorEscRamalesCMG.Enabled:= False;


//Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.Enabled:= False;
	DBedtNoIdoneosSinCalificFormalCMG.Enabled:= False;
	DBedtNoIdoneosSinEficienciaCMG.Enabled:= False;
	DBedtNoIdoneosSinBConductaCMG.Enabled:= False;

   	DBedtGrado6XTotalNoIdoneos.Enabled:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.Enabled:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.Enabled:= False;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.Enabled:= False;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneos.Enabled:= False;            //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.Enabled:= False;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.Enabled:= False;
   	DBedtGrado9XMatric.Enabled:= False;
   	DBedtGrado12XMatric.Enabled:= False;
   	DBedtTecMedioXMatric.Enabled:= False;
   	DBedtNivSupXMatric.Enabled:= False;

    DBedtTotalNivelXMatric.Enabled:= False;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.Enabled:= False;
   	DBedtGrado9XNoMatric.Enabled:= False;
   	DBedtGrado12XNoMatric.Enabled:= False;
   	DBedtTecMedioXNoMatric.Enabled:= False;
   	DBedtNivSupXNoMatric.Enabled:= False;

    DBedtTotalNivelXNoMatric.Enabled:= False;                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    DBedtNoFormalTrabProxEdadJub.Enabled:= False;               //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.Enabled:= False;            //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.Enabled:= False;      //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.Enabled:= False;       //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.Enabled:= False;        //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.Enabled:= False;          //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.Enabled:= False;               //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.Enabled:= False;        //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.Enabled:= False;                 //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.Enabled:= False;           //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.Enabled:= False;              //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.Enabled:= False;                 //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.Enabled:= False;                   //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.Enabled:= False;                //5.5 Agregado en la versión 2008

    DBedtCurHabilXTotalNoIdoneos.Enabled:= False;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.Enabled:= False;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.Enabled:= False;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.Enabled:= False;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.Enabled:= False;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.Enabled:= False;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.Enabled:= False;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.Enabled:= False;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.Enabled:= False;        //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtNoEficTrabProxEdadJub.Enabled:= False;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.Enabled:= False;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.Enabled:= False;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.Enabled:= False;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.Enabled:= False;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.Enabled:= False;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.Enabled:= False;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.Enabled:= False;                  //5.7.8 Agregado en la versión 2008

    DBedtCasilla1XPendiente.Enabled:= False;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.Enabled:= False;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.Enabled:= False;                             //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla1XCausas.Enabled:= False;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.Enabled:= False;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.Enabled:= False;                               //Parte del 5.8 (tabla) Agregado en la versión 2008


//Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.Enabled:= False;
end;


{---------------------------------------------------------}
     //*** Ocultar DBEdits y DBMemos de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.OcultarDBEditsYMemosPlanillasProvinciales;
begin
{ *** Oculto los DBEdits y los DBMemos de las Planillas Provinciales,
      para, en lugar de ellos, poder usar los Edits y Memos para la entrada de datos. ***}
      
  //Planillas Provinciales, parte 1:
	DBedtTotalEntOrgCMG.Visible:= False;
	DBedtEntOrgConPlanAnualCapCMG.Visible:= False;
	DBedtTotalTrabOrgCMG.Visible:= False;
	DBedtTotalGradAccCapCMG.Visible:= False;
	DBedtRelacionGradXTotalCMG.Visible:= False;{De todas formas ya estaba así}

  
//Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.Visible:= False;
	DBedtGradEnInstExternasCMG.Visible:= False;
	DBedtDirectivosCMG.Visible:= False;
	DBedtTecnicosCMG.Visible:= False;
	DBedtAdministrativosCMG.Visible:= False;
	DBedtTrabServiciosCMG.Visible:= False;
	DBedtOperariosCMG.Visible:= False;
	DBedtGradEnCurHabCMG.Visible:= False;
	DBedtGradEnCurPerfecCMG.Visible:= False;
	DBedtGradenAdiestLabCMG.Visible:= False;
	DBedtGradEnEntPTrabCMG.Visible:= False;
	DBedtGradEnCurPostGradoCMG.Visible:= False;
	DBedtGradEnDiplomadosCMG.Visible:= False;
	DBedtGradEnMaestriasCMG.Visible:= False;
	DBedtGradEnDoctoradosCMG.Visible:= False;
	DBedtGradEnCurFormCompMINEDCMG.Visible:= False;
	DBedtGradEnCurFormCompMESCMG.Visible:= False;
	DBedtGradEnCurIdiomaExtCMG.Visible:= False;
	DBedtGradEnCurCompCMG.Visible:= False;
	DBedtGradEnEntrenEnExtCMG.Visible:= False;
	DBedtGradEnOtrasAccCMG.Visible:= False;


//Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.Visible:= False;
	DBedtInstEventUtilEnCapacCMG.Visible:= False;
	DBedtInstPermUtilEnCapacCMG.Visible:= False;


//Planillas Provinciales, parte 4:
  {
	DBedtMaestriasXMatricCMG.Visible:= False;
	DBedtDiplomadosXMatricCMG.Visible:= False;
	DBedtCurPostgradosXMatricCMG.Visible:= False;
	DBedtCurIdiomasXMatricCMG.Visible:= False;
	DBedtCurCompXMatricCMG.Visible:= False;
	DBedtHabilitacionXMatricCMG.Visible:= False;
	DBedtPerfecXMatricCMG.Visible:= False;
	DBedtTallSemConfXMatricCMG.Visible:= False;
	DBedtTotalXMatricCMG.Visible:= False;
	DBedtMaestriasXGradCMG.Visible:= False;
	DBedtDiplomadosXGradCMG.Visible:= False;
	DBedtCurPostgradosXGradCMG.Visible:= False;
	DBedtCurIdiomasXGradCMG.Visible:= False;
	DBedtCurCompXGradCMG.Visible:= False;
	DBedtHabilitacionXGradCMG.Visible:= False;
	DBedtPerfecXGradCMG.Visible:= False;
	DBedtTallSemConfXGradCMG.Visible:= False;
	DBedtTotalXGradCMG.Visible:= False;
  }
  DBPanelParte4PlanillasProvinciales.Visible:= False;
	DBMemoValTrabDesPorEscRamalesCMG.Visible:= False;


//Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.Visible:= False;
	DBedtNoIdoneosSinCalificFormalCMG.Visible:= False;
	DBedtNoIdoneosSinEficienciaCMG.Visible:= False;
	DBedtNoIdoneosSinBConductaCMG.Visible:= False;
{
   	DBedtGrado6XTotalNoIdoneos.Visible:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.Visible:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.Visible:= False;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.Visible:= False;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneosCMG.Visible:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.Visible:= False;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.Visible:= False;
   	DBedtGrado9XMatric.Visible:= False;
   	DBedtGrado12XMatric.Visible:= False;
   	DBedtTecMedioXMatric.Visible:= False;
   	DBedtNivSupXMatric.Visible:= False;
    DBedtTotalNivelXMatric.Visible:= False;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.Visible:= False;
   	DBedtGrado9XNoMatric.Visible:= False;
   	DBedtGrado12XNoMatric.Visible:= False;
   	DBedtTecMedioXNoMatric.Visible:= False;
   	DBedtNivSupXNoMatric.Visible:= False;
    DBedtTotalNivelXNoMatric.Visible:= False;                 //Parte del 5.3 (tabla) Agregado en la versión 2008
}
    DBPanelParte5_3PlanillasProvinciales.Visible:= False;

    DBedtNoFormalTrabProxEdadJub.Visible:= False;              //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.Visible:= False;           //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.Visible:= False;     //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.Visible:= False;      //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.Visible:= False;       //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.Visible:= False;         //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.Visible:= False;              //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.Visible:= False;       //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.Visible:= False;                //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.Visible:= False;          //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.Visible:= False;             //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.Visible:= False;                //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.Visible:= False;                  //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.Visible:= False;             //5.5 Agregado en la versión 2008
{
    DBedtCurHabilXTotalNoIdoneos.Visible:= False;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.Visible:= False;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.Visible:= False;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.Visible:= False;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.Visible:= False;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.Visible:= False;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.Visible:= False;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.Visible:= False;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.Visible:= False;       //Parte del 5.6 (tabla) Agregado en la versión 2008
}
    DBPanelParte5_6PlanillasProvinciales.Visible:= False;

    DBedtNoEficTrabProxEdadJub.Visible:= False;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.Visible:= False;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.Visible:= False;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.Visible:= False;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.Visible:= False;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.Visible:= False;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.Visible:= False;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.Visible:= False;                  //5.7.8 Agregado en la versión 2008
{
    DBedtCasilla1XPendiente.Visible:= False;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.Visible:= False;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.Visible:= False;                    //Parte del 5.8 (tabla) Agregado en la versión 2008

    DBMemoCasilla1XCausas.Visible:= False;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.Visible:= False;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.Visible:= False;                      //Parte del 5.8 (tabla) Agregado en la versión 2008
}
    DBPanelParte5_8PlanillasProvinciales.Visible:= False;



  //Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.Visible:= False;
end;


{---------------------------------------------------------}
     //*** Mostrar DBEdits y DBMemos de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.MostrarDBEditsYMemosPlanillasProvinciales;
begin
{ *** Muestro los DBEdits y los DBMemos de las Planillas Provinciales,
      para mostrar la información de la base de datos. ***}

  //Planillas Provinciales, parte 1:
	DBedtTotalEntOrgCMG.Visible:= True;
	DBedtEntOrgConPlanAnualCapCMG.Visible:= True;
	DBedtTotalTrabOrgCMG.Visible:= True;
	DBedtTotalGradAccCapCMG.Visible:= True;
	DBedtRelacionGradXTotalCMG.Visible:= True;{De todas formas ya estaba así}


//Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.Visible:= True;
	DBedtGradEnInstExternasCMG.Visible:= True;
	DBedtDirectivosCMG.Visible:= True;
	DBedtTecnicosCMG.Visible:= True;
	DBedtAdministrativosCMG.Visible:= True;
	DBedtTrabServiciosCMG.Visible:= True;
	DBedtOperariosCMG.Visible:= True;
	DBedtGradEnCurHabCMG.Visible:= True;
	DBedtGradEnCurPerfecCMG.Visible:= True;
	DBedtGradenAdiestLabCMG.Visible:= True;
	DBedtGradEnEntPTrabCMG.Visible:= True;
	DBedtGradEnCurPostGradoCMG.Visible:= True;
	DBedtGradEnDiplomadosCMG.Visible:= True;
	DBedtGradEnMaestriasCMG.Visible:= True;
	DBedtGradEnDoctoradosCMG.Visible:= True;
	DBedtGradEnCurFormCompMINEDCMG.Visible:= True;
	DBedtGradEnCurFormCompMESCMG.Visible:= True;
	DBedtGradEnCurIdiomaExtCMG.Visible:= True;
	DBedtGradEnCurCompCMG.Visible:= True;
	DBedtGradEnEntrenEnExtCMG.Visible:= True;
	DBedtGradEnOtrasAccCMG.Visible:= True;


//Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.Visible:= True;
	DBedtInstEventUtilEnCapacCMG.Visible:= True;
	DBedtInstPermUtilEnCapacCMG.Visible:= True;


//Planillas Provinciales, parte 4:
  {
	DBedtMaestriasXMatricCMG.Visible:= True;
	DBedtDiplomadosXMatricCMG.Visible:= True;
	DBedtCurPostgradosXMatricCMG.Visible:= True;
	DBedtCurIdiomasXMatricCMG.Visible:= True;
	DBedtCurCompXMatricCMG.Visible:= True;
	DBedtHabilitacionXMatricCMG.Visible:= True;
	DBedtPerfecXMatricCMG.Visible:= True;
	DBedtTallSemConfXMatricCMG.Visible:= True;
	DBedtTotalXMatricCMG.Visible:= True;
	DBedtMaestriasXGradCMG.Visible:= True;
	DBedtDiplomadosXGradCMG.Visible:= True;
	DBedtCurPostgradosXGradCMG.Visible:= True;
	DBedtCurIdiomasXGradCMG.Visible:= True;
	DBedtCurCompXGradCMG.Visible:= True;
	DBedtHabilitacionXGradCMG.Visible:= True;
	DBedtPerfecXGradCMG.Visible:= True;
	DBedtTallSemConfXGradCMG.Visible:= True;
	DBedtTotalXGradCMG.Visible:= True;
  }
  DBPanelParte4PlanillasProvinciales.Visible:= True;
	DBMemoValTrabDesPorEscRamalesCMG.Visible:= True;

//Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.Visible:= True;
	DBedtNoIdoneosSinCalificFormalCMG.Visible:= True;
	DBedtNoIdoneosSinEficienciaCMG.Visible:= True;
	DBedtNoIdoneosSinBConductaCMG.Visible:= True;
{
   	DBedtGrado6XTotalNoIdoneos.Visible:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.Visible:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.Visible:= True;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.Visible:= True;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneosCMG.Visible:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.Visible:= True;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.Visible:= True;
   	DBedtGrado9XMatric.Visible:= True;
   	DBedtGrado12XMatric.Visible:= True;
   	DBedtTecMedioXMatric.Visible:= True;
   	DBedtNivSupXMatric.Visible:= True;
    DBedtTotalNivelXMatric.Visible:= True;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.Visible:= True;
   	DBedtGrado9XNoMatric.Visible:= True;
   	DBedtGrado12XNoMatric.Visible:= True;
   	DBedtTecMedioXNoMatric.Visible:= True;
   	DBedtNivSupXNoMatric.Visible:= True;
    DBedtTotalNivelXNoMatric.Visible:= True;                 //Parte del 5.3 (tabla) Agregado en la versión 2008
}
    DBPanelParte5_3PlanillasProvinciales.Visible:= True;

    DBedtNoFormalTrabProxEdadJub.Visible:= True;              //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.Visible:= True;           //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.Visible:= True;     //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.Visible:= True;      //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.Visible:= True;       //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.Visible:= True;         //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.Visible:= True;              //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.Visible:= True;       //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.Visible:= True;                //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.Visible:= True;          //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.Visible:= True;             //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.Visible:= True;                //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.Visible:= True;                  //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.Visible:= True;             //5.5 Agregado en la versión 2008
{
    DBedtCurHabilXTotalNoIdoneos.Visible:= True;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.Visible:= True;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.Visible:= True;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.Visible:= True;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.Visible:= True;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.Visible:= True;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.Visible:= True;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.Visible:= True;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.Visible:= True;        //Parte del 5.6 (tabla) Agregado en la versión 2008
}
    DBPanelParte5_6PlanillasProvinciales.Visible:= True;

    DBedtNoEficTrabProxEdadJub.Visible:= True;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.Visible:= True;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.Visible:= True;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.Visible:= True;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.Visible:= True;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.Visible:= True;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.Visible:= True;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.Visible:= True;                  //5.7.8 Agregado en la versión 2008
{
    DBedtCasilla1XPendiente.Visible:= True;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.Visible:= True;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.Visible:= True;                             //Parte del 5.8 (tabla) Agregado en la versión 2008

    DBMemoCasilla1XCausas.Visible:= True;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.Visible:= True;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.Visible:= True;                               //Parte del 5.8 (tabla) Agregado en la versión 2008
}
    DBPanelParte5_8PlanillasProvinciales.Visible:= True;

//Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.Visible:= True;
end;


{---------------------------------------------------------}
    //*** Limpieza de DBEdits y DBMemos de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.LimpiarDBEditsYMemosPlanillasProvinciales;
begin
{ *** Limpio los DBEdits y los DBMemos de las Planillas Provinciales,
       (CMG) para usarlos nuevamente en la entrada de datos. ***}

  //Planillas Provinciales, parte1:
	//DateTimeAnnoCMG.Clear;
	DBedtTotalEntOrgCMG.Clear;
	DBedtEntOrgConPlanAnualCapCMG.Clear;
	DBedtTotalTrabOrgCMG.Clear;
	DBedtTotalGradAccCapCMG.Clear;
	DBedtRelacionGradXTotalCMG.Clear;{De todas formas ya estaba así}


  //Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.Clear;
	DBedtGradEnInstExternasCMG.Clear;
	DBedtDirectivosCMG.Clear;
	DBedtTecnicosCMG.Clear;
	DBedtAdministrativosCMG.Clear;
	DBedtTrabServiciosCMG.Clear;
	DBedtOperariosCMG.Clear;
	DBedtGradEnCurHabCMG.Clear;
	DBedtGradEnCurPerfecCMG.Clear;
	DBedtGradenAdiestLabCMG.Clear;
	DBedtGradEnEntPTrabCMG.Clear;
	DBedtGradEnCurPostGradoCMG.Clear;
	DBedtGradEnDiplomadosCMG.Clear;
	DBedtGradEnMaestriasCMG.Clear;
	DBedtGradEnDoctoradosCMG.Clear;
	DBedtGradEnCurFormCompMINEDCMG.Clear;
	DBedtGradEnCurFormCompMESCMG.Clear;
	DBedtGradEnCurIdiomaExtCMG.Clear;
	DBedtGradEnCurCompCMG.Clear;
	DBedtGradEnEntrenEnExtCMG.Clear;
	DBedtGradEnOtrasAccCMG.Clear;


  //Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.Clear;
	DBedtInstEventUtilEnCapacCMG.Clear;
	DBedtInstPermUtilEnCapacCMG.Clear;


  //Planillas Provinciales, parte 4:
	DBedtMaestriasXMatricCMG.Clear;
	DBedtDiplomadosXMatricCMG.Clear;
	DBedtCurPostgradosXMatricCMG.Clear;
	DBedtCurIdiomasXMatricCMG.Clear;
	DBedtCurCompXMatricCMG.Clear;
	DBedtHabilitacionXMatricCMG.Clear;
	DBedtPerfecXMatricCMG.Clear;
	DBedtTallSemConfXMatricCMG.Clear;
	DBedtTotalXMatricCMG.Clear;
	DBedtMaestriasXGradCMG.Clear;
	DBedtDiplomadosXGradCMG.Clear;
	DBedtCurPostgradosXGradCMG.Clear;
	DBedtCurIdiomasXGradCMG.Clear;
	DBedtCurCompXGradCMG.Clear;
	DBedtHabilitacionXGradCMG.Clear;
	DBedtPerfecXGradCMG.Clear;
	DBedtTallSemConfXGradCMG.Clear;
	DBedtTotalXGradCMG.Clear;
	DBMemoValTrabDesPorEscRamalesCMG.Clear;

  
  //Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.Clear;
	DBedtNoIdoneosSinCalificFormalCMG.Clear;
	DBedtNoIdoneosSinEficienciaCMG.Clear;
	DBedtNoIdoneosSinBConductaCMG.Clear;

   	DBedtGrado6XTotalNoIdoneos.Clear;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.Clear;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.Clear;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.Clear;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneos.Clear;            //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.Clear;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.Clear;
   	DBedtGrado9XMatric.Clear;
   	DBedtGrado12XMatric.Clear;
   	DBedtTecMedioXMatric.Clear;
   	DBedtNivSupXMatric.Clear;
    DBedtTotalNivelXMatric.Clear;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.Clear;
   	DBedtGrado9XNoMatric.Clear;
   	DBedtGrado12XNoMatric.Clear;
   	DBedtTecMedioXNoMatric.Clear;
   	DBedtNivSupXNoMatric.Clear;
    DBedtTotalNivelXNoMatric.Clear;                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    DBedtNoFormalTrabProxEdadJub.Clear;             //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.Clear;          //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.Clear;    //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.Clear;     //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.Clear;      //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.Clear;        //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.Clear;             //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.Clear;      //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.Clear;               //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.Clear;         //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.Clear;            //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.Clear;               //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.Clear;                 //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.Clear;                     //5.5 Agregado en la versión 2008

    DBedtCurHabilXTotalNoIdoneos.Clear;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.Clear;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.Clear;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.Clear;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.Clear;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.Clear;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.Clear;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.Clear;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.Clear;        //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtNoEficTrabProxEdadJub.Clear;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.Clear;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.Clear;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.Clear;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.Clear;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.Clear;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.Clear;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.Clear;                  //5.7.8 Agregado en la versión 2008

    DBedtCasilla1XPendiente.Clear;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.Clear;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.Clear;                    //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla1XCausas.Clear;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.Clear;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.Clear;                      //Parte del 5.8 (tabla) Agregado en la versión 2008

  //Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.Clear;
end;


{---------------------------------------------------------}
    //*** Comprobación de llenado en DBEdits y DBMemos de las Planillas Provinciales ***
{---------------------------------------------------------}

function TfrmPrincipal.LosDBEditsYDBMemosEstanLlenosPlanillasProvinciales: Boolean;
begin
  if  //parte 1 de las Planillas Provinciales
     ((DBedtTotalEntOrgCMG.Text<>'') and (DBedtEntOrgConPlanAnualCapCMG.Text<>'') and (DBedtTotalTrabOrgCMG.Text<>'') and (DBedtTotalGradAccCapCMG.Text<>'') and (DBedtRelacionGradXTotalCMG.Text<>'')
     
      //parte 2 de las Planillas Provinciales
      and (DBedtGradEnEmpInternasCMG.Text<>'') and (DBedtGradEnInstExternasCMG.Text<>'') and (DBedtDirectivosCMG.Text<>'') and (DBedtTecnicosCMG.Text<>'') and (DBedtAdministrativosCMG.Text<>'') and (DBedtTrabServiciosCMG.Text<>'') and (DBedtOperariosCMG.Text<>'') and (DBedtGradEnCurHabCMG.Text<>'') and (DBedtGradEnCurPerfecCMG.Text<>'') and (DBedtGradenAdiestLabCMG.Text<>'') and (DBedtGradEnEntPTrabCMG.Text<>'') and (DBedtGradEnCurPostGradoCMG.Text<>'') and (DBedtGradEnDiplomadosCMG.Text<>'') and (DBedtGradEnMaestriasCMG.Text<>'') and (DBedtGradEnDoctoradosCMG.Text<>'') and (DBedtGradEnCurFormCompMINEDCMG.Text<>'') and (DBedtGradEnCurFormCompMESCMG.Text<>'') and (DBedtGradEnCurIdiomaExtCMG.Text<>'') and (DBedtGradEnCurCompCMG.Text<>'') and (DBedtGradEnEntrenEnExtCMG.Text<>'') and (DBedtGradEnOtrasAccCMG.Text<>'')

      //parte 3 de las Planillas Provinciales
      and (DBedtInstTotalUtilEnCapacCMG.Text<>'') and (DBedtInstEventUtilEnCapacCMG.Text<>'') and (DBedtInstPermUtilEnCapacCMG.Text<>'')

      //parte 4 de las Planillas Provinciales
      and (DBedtMaestriasXMatricCMG.Text<>'') and (DBedtDiplomadosXMatricCMG.Text<>'') and (DBedtCurPostgradosXMatricCMG.Text<>'') and (DBedtCurIdiomasXMatricCMG.Text<>'') and (DBedtCurCompXMatricCMG.Text<>'') and (DBedtHabilitacionXMatricCMG.Text<>'') and (DBedtPerfecXMatricCMG.Text<>'') and (DBedtTallSemConfXMatricCMG.Text<>'') and (DBedtTotalXMatricCMG.Text<>'') and (DBedtMaestriasXGradCMG.Text<>'') and (DBedtDiplomadosXGradCMG.Text<>'') and (DBedtCurPostgradosXMatricCMG.Text<>'') and (DBedtCurIdiomasXGradCMG.Text<>'') and (DBedtCurCompXGradCMG.Text<>'') and (DBedtHabilitacionXGradCMG.Text<>'') and (DBedtPerfecXGradCMG.Text<>'') and (DBedtTallSemConfXGradCMG.Text<>'') and (DBedtTotalXGradCMG.Text<>'') and (DBMemoValTrabDesPorEscRamalesCMG.Text<>'')
      
      //sección 5_1 de las Planillas Provinciales
      and (DBedtTotalTrabNoIdoneosCMG.Text<>'')
      //sección 5_2 de las Planillas Provinciales
      and (DBedtNoIdoneosSinCalificFormalCMG.Text<>'') and (DBedtNoIdoneosSinEficienciaCMG.Text<>'') and (DBedtNoIdoneosSinBConductaCMG.Text<>'')
      //sección 5_3 de las Planillas Provinciales
      and (DBedtGrado6XTotalNoIdoneos.Text<>'') and (DBedtGrado9XTotalNoIdoneos.Text<>'') and (DBedtGrado12XTotalNoIdoneos.Text<>'') and (DBedtTecMedioXTotalNoIdoneos.Text<>'') and (DBedtNivSupXTotalNoIdoneos.Text<>'') and (DBedtTotalNivelXTotalNoIdoneos.Text<>'') and (DBedtGrado6XMatric.Text<>'') and (DBedtGrado9XMatric.Text<>'') and (DBedtGrado12XMatric.Text<>'') and (DBedtTecMedioXMatric.Text<>'') and (DBedtNivSupXMatric.Text<>'') and (DBedtTotalNivelXMatric.Text<>'') and (DBedtGrado6XNoMatric.Text<>'') and (DBedtGrado9XNoMatric.Text<>'') and (DBedtGrado12XNoMatric.Text<>'') and (DBedtTecMedioXNoMatric.Text<>'') and (DBedtNivSupXNoMatric.Text<>'') and (DBedtTotalNivelXNoMatric.Text<>'')
      //sección 5_4 de las Planillas Provinciales
      and (DBedtNoFormalTrabProxEdadJub.Text<>'') and (DBedtNoFormalTrabProblemasSalud.Text<>'') and (DBedtNoFormalLicEnfermedadYMaternidad.Text<>'') and (DBedtNoFormalTrabProblemasFamiliares.Text<>'') and (DBedtNoFormalNoDisponibMatricXMINED.Text<>'') and (DBedtNoFormalNoDisponibMatricXMES.Text<>'') and (DBedtNoFormalLimMatricNivSup.Text<>'') and (DBedtNoFormalImposibEntidAbrirAulas.Text<>'') and (DBedtNoFormalTrabNoAcredit.Text<>'') and (DBedtNoFormalTrabTurnosRotativos.Text<>'') and (DBedtNoFormalTrabNieganIncorp.Text<>'') and (DBedtNoFormalMovilConstruc.Text<>'') and (DBedtNoFormalOtrasCausas.Text<>'')
      //sección 5_5 de las Planillas Provinciales
      and (DBMemoExplicNoMatric.Text<>'')
      //sección 5_6 de las Planillas Provinciales
      and (DBedtCurHabilXTotalNoIdoneos.Text<>'') and (DBedtEntrenamientoXTotalNoIdoneos.Text<>'') and (DBedtTotalNoIdoneosXTotalNoIdoneos.Text<>'') and (DBedtCurHabilXMatric.Text<>'') and (DBedtEntrenamientoXMatric.Text<>'') and (DBedtTotalNoIdoneosXMatric.Text<>'') and (DBedtCurHabilXNoMatric.Text<>'') and (DBedtEntrenamientoXNoMatric.Text<>'') and (DBedtTotalNoIdoneosXNoMatric.Text<>'')
      //sección 5_7 de las Planillas Provinciales
      and (DBedtNoEficTrabProxEdadJub.Text<>'') and (DBedtNoEficTrabProblemasSalud.Text<>'') and (DBedtNoEficLicEnfermedadYMaternidad.Text<>'') and (DBedtNoEficTrabProblemasFamiliares.Text<>'') and (DBedtNoEficTrabTurnosRotativos.Text<>'') and (DBedtNoEficTrabNieganIncorp.Text<>'') and (DBedtNoEficMovilConstruc.Text<>'') and (DBedtNoEficOtrasCausas.Text<>'')
      //sección 5_8 de las Planillas Provinciales
      and (DBedtCasilla1XPendiente.Text<>'') and (DBedtCasilla2XPendiente.Text<>'') and (DBedtTotalXPendiente.Text<>'')  and (DBMemoCasilla1XCausas.Text<>'')  and (DBMemoCasilla2XCausas.Text<>'')  and (DBMemoTotalXCausas.Text<>'')
      
      //parte 6 de las Planillas Provinciales
      and (DBMemoValoracionCualitativaDelProcesoCapacCMG.Text<>'') )
      then
        begin
          Result:= True;
        end
          else
            begin
              Result:= False;
            end;
end;

function TfrmPrincipal.LosDBEditsEstanLlenosPlanillasProvinciales: Boolean;
begin
  if  //parte 1 de las Planillas Provinciales
     (   (DBedtTotalEntOrgCMG.Text<>'') and (DBedtEntOrgConPlanAnualCapCMG.Text<>'') and (DBedtTotalTrabOrgCMG.Text<>'') and (DBedtTotalGradAccCapCMG.Text<>'') and (DBedtRelacionGradXTotalCMG.Text<>'')

      //parte 2 de las Planillas Provinciales
      and (DBedtGradEnEmpInternasCMG.Text<>'') and (DBedtGradEnInstExternasCMG.Text<>'') and (DBedtDirectivosCMG.Text<>'') and (DBedtTecnicosCMG.Text<>'') and (DBedtAdministrativosCMG.Text<>'') and (DBedtTrabServiciosCMG.Text<>'') and (DBedtOperariosCMG.Text<>'') and (DBedtGradEnCurHabCMG.Text<>'') and (DBedtGradEnCurPerfecCMG.Text<>'') and (DBedtGradenAdiestLabCMG.Text<>'') and (DBedtGradEnEntPTrabCMG.Text<>'') and (DBedtGradEnCurPostGradoCMG.Text<>'') and (DBedtGradEnDiplomadosCMG.Text<>'') and (DBedtGradEnMaestriasCMG.Text<>'') and (DBedtGradEnDoctoradosCMG.Text<>'') and (DBedtGradEnCurFormCompMINEDCMG.Text<>'') and (DBedtGradEnCurFormCompMESCMG.Text<>'') and (DBedtGradEnCurIdiomaExtCMG.Text<>'') and (DBedtGradEnCurCompCMG.Text<>'') and (DBedtGradEnEntrenEnExtCMG.Text<>'') and (DBedtGradEnOtrasAccCMG.Text<>'')

      //parte 3 de las Planillas Provinciales
      and (DBedtInstTotalUtilEnCapacCMG.Text<>'') and (DBedtInstEventUtilEnCapacCMG.Text<>'') and (DBedtInstPermUtilEnCapacCMG.Text<>'')

      //parte 4 de las Planillas Provinciales
      and (DBedtMaestriasXMatricCMG.Text<>'') and (DBedtDiplomadosXMatricCMG.Text<>'') and (DBedtCurPostgradosXMatricCMG.Text<>'') and (DBedtCurIdiomasXMatricCMG.Text<>'') and (DBedtCurCompXMatricCMG.Text<>'') and (DBedtHabilitacionXMatricCMG.Text<>'') and (DBedtPerfecXMatricCMG.Text<>'') and (DBedtTallSemConfXMatricCMG.Text<>'') and (DBedtTotalXMatricCMG.Text<>'') and (DBedtMaestriasXGradCMG.Text<>'') and (DBedtDiplomadosXGradCMG.Text<>'') and (DBedtCurPostgradosXMatricCMG.Text<>'') and (DBedtCurIdiomasXGradCMG.Text<>'') and (DBedtCurCompXGradCMG.Text<>'') and (DBedtHabilitacionXGradCMG.Text<>'') and (DBedtPerfecXGradCMG.Text<>'') and (DBedtTallSemConfXGradCMG.Text<>'') and (DBedtTotalXGradCMG.Text<>'')

      //sección 5_1 de las Planillas Provinciales
      and (DBedtTotalTrabNoIdoneosCMG.Text<>'')
      //sección 5_2 de las Planillas Provinciales
      and (DBedtNoIdoneosSinCalificFormalCMG.Text<>'') and (DBedtNoIdoneosSinEficienciaCMG.Text<>'') and (DBedtNoIdoneosSinBConductaCMG.Text<>'')
      //sección 5_3 de las Planillas Provinciales
      and (DBedtGrado6XTotalNoIdoneos.Text<>'') and (DBedtGrado9XTotalNoIdoneos.Text<>'') and (DBedtGrado12XTotalNoIdoneos.Text<>'') and (DBedtTecMedioXTotalNoIdoneos.Text<>'') and (DBedtNivSupXTotalNoIdoneos.Text<>'') and (DBedtTotalNivelXTotalNoIdoneos.Text<>'') and (DBedtGrado6XMatric.Text<>'') and (DBedtGrado9XMatric.Text<>'') and (DBedtGrado12XMatric.Text<>'') and (DBedtTecMedioXMatric.Text<>'') and (DBedtNivSupXMatric.Text<>'') and (DBedtTotalNivelXMatric.Text<>'') and (DBedtGrado6XNoMatric.Text<>'') and (DBedtGrado9XNoMatric.Text<>'') and (DBedtGrado12XNoMatric.Text<>'') and (DBedtTecMedioXNoMatric.Text<>'') and (DBedtNivSupXNoMatric.Text<>'') and (DBedtTotalNivelXNoMatric.Text<>'')
      //sección 5_4 de las Planillas Provinciales
      and (DBedtNoFormalTrabProxEdadJub.Text<>'') and (DBedtNoFormalTrabProblemasSalud.Text<>'') and (DBedtNoFormalLicEnfermedadYMaternidad.Text<>'') and (DBedtNoFormalTrabProblemasFamiliares.Text<>'') and (DBedtNoFormalNoDisponibMatricXMINED.Text<>'') and (DBedtNoFormalNoDisponibMatricXMES.Text<>'') and (DBedtNoFormalLimMatricNivSup.Text<>'') and (DBedtNoFormalImposibEntidAbrirAulas.Text<>'') and (DBedtNoFormalTrabNoAcredit.Text<>'') and (DBedtNoFormalTrabTurnosRotativos.Text<>'') and (DBedtNoFormalTrabNieganIncorp.Text<>'') and (DBedtNoFormalMovilConstruc.Text<>'') and (DBedtNoFormalOtrasCausas.Text<>'')
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      and (DBedtCurHabilXTotalNoIdoneos.Text<>'') and (DBedtEntrenamientoXTotalNoIdoneos.Text<>'') and (DBedtTotalNoIdoneosXTotalNoIdoneos.Text<>'') and (DBedtCurHabilXMatric.Text<>'') and (DBedtEntrenamientoXMatric.Text<>'') and (DBedtTotalNoIdoneosXMatric.Text<>'') and (DBedtCurHabilXNoMatric.Text<>'') and (DBedtEntrenamientoXNoMatric.Text<>'') and (DBedtTotalNoIdoneosXNoMatric.Text<>'')
      //sección 5_7 de las Planillas Provinciales
      and (DBedtNoEficTrabProxEdadJub.Text<>'') and (DBedtNoEficTrabProblemasSalud.Text<>'') and (DBedtNoEficLicEnfermedadYMaternidad.Text<>'') and (DBedtNoEficTrabProblemasFamiliares.Text<>'') and (DBedtNoEficTrabTurnosRotativos.Text<>'') and (DBedtNoEficTrabNieganIncorp.Text<>'') and (DBedtNoEficMovilConstruc.Text<>'') and (DBedtNoEficOtrasCausas.Text<>'')
      //sección 5_8 de las Planillas Provinciales
      and (DBedtCasilla1XPendiente.Text<>'') and (DBedtCasilla2XPendiente.Text<>'') and (DBedtTotalXPendiente.Text<>'')   )

      //parte 6 de las Planillas Provinciales
      //No hay ningún Edit allí
      then
        begin
          Result:= True;
        end
          else
            begin
              Result:= False;
            end;
end;


procedure TfrmPrincipal.DetallarDBEditsNumerosFaltantesPlanillasProvinciales;
var
  Seccion1, Seccion2, Seccion3, Seccion4, Seccion5: string;
begin
  //** Lleno las variables para localizar la procedencia de la ausencia del datos numéricos
  if  //parte 1 de las Planillas Provinciales
     (  (DBedtTotalEntOrgCMG.Text= '') or (DBedtEntOrgConPlanAnualCapCMG.Text= '') or (DBedtTotalTrabOrgCMG.Text= '') or (DBedtTotalGradAccCapCMG.Text= '') or (DBedtRelacionGradXTotalCMG.Text= '')  )
      then Seccion1:= '1,  '
        else Seccion1:= '';

  if  //parte 2 de las Planillas Provinciales
      (  (DBedtGradEnEmpInternasCMG.Text= '') or (DBedtGradEnInstExternasCMG.Text= '') or (DBedtDirectivosCMG.Text= '') or (DBedtTecnicosCMG.Text= '') or (DBedtAdministrativosCMG.Text= '') or (DBedtTrabServiciosCMG.Text= '') or (DBedtOperariosCMG.Text= '') or (DBedtGradEnCurHabCMG.Text= '') or (DBedtGradEnCurPerfecCMG.Text= '') or (DBedtGradenAdiestLabCMG.Text= '') or (DBedtGradEnEntPTrabCMG.Text= '') or (DBedtGradEnCurPostGradoCMG.Text= '') or (DBedtGradEnDiplomadosCMG.Text= '') or (DBedtGradEnMaestriasCMG.Text= '') or (DBedtGradEnDoctoradosCMG.Text= '') or (DBedtGradEnCurFormCompMINEDCMG.Text= '') or (DBedtGradEnCurFormCompMESCMG.Text= '') or (DBedtGradEnCurIdiomaExtCMG.Text= '') or (DBedtGradEnCurCompCMG.Text= '') or (DBedtGradEnEntrenEnExtCMG.Text= '') or (DBedtGradEnOtrasAccCMG.Text= '')  )
      then Seccion2:= '2,  '
        else Seccion2:= '';


  if  //parte 3 de las Planillas Provinciales
      (  (DBedtInstTotalUtilEnCapacCMG.Text= '') or (DBedtInstEventUtilEnCapacCMG.Text= '') or (DBedtInstPermUtilEnCapacCMG.Text= '')  )
      then Seccion3:= '3,  '
        else Seccion3:= '';

  if  //parte 4 de las Planillas Provinciales
      (  (DBedtMaestriasXMatricCMG.Text= '') or (DBedtDiplomadosXMatricCMG.Text= '') or (DBedtCurPostgradosXMatricCMG.Text= '') or (DBedtCurIdiomasXMatricCMG.Text= '') or (DBedtCurCompXMatricCMG.Text= '') or (DBedtHabilitacionXMatricCMG.Text= '') or (DBedtPerfecXMatricCMG.Text= '') or (DBedtTallSemConfXMatricCMG.Text= '') or (DBedtTotalXMatricCMG.Text= '') or (DBedtMaestriasXGradCMG.Text= '') or (DBedtDiplomadosXGradCMG.Text= '') or (DBedtCurPostgradosXMatricCMG.Text= '') or (DBedtCurIdiomasXGradCMG.Text= '') or (DBedtCurCompXGradCMG.Text= '') or (DBedtHabilitacionXGradCMG.Text= '') or (DBedtPerfecXGradCMG.Text= '') or (DBedtTallSemConfXGradCMG.Text= '') or (DBedtTotalXGradCMG.Text= '')  )
      then  Seccion4:= '4,  '
        else Seccion4:= '';

  if  //parte 5 de las Planillas Provinciales
      //sección 5_1 de las Planillas Provinciales
      (   (DBedtTotalTrabNoIdoneosCMG.Text= '')
      //sección 5_2 de las Planillas Provinciales
      or (DBedtNoIdoneosSinCalificFormalCMG.Text= '') or (DBedtNoIdoneosSinEficienciaCMG.Text= '') or (DBedtNoIdoneosSinBConductaCMG.Text= '')
      //sección 5_3 de las Planillas Provinciales
      or (DBedtGrado6XTotalNoIdoneos.Text= '') or (DBedtGrado9XTotalNoIdoneos.Text= '') or (DBedtGrado12XTotalNoIdoneos.Text= '') or (DBedtTecMedioXTotalNoIdoneos.Text= '') or (DBedtNivSupXTotalNoIdoneos.Text= '') or (DBedtTotalNivelXTotalNoIdoneos.Text= '') or (DBedtGrado6XMatric.Text= '') or (DBedtGrado9XMatric.Text= '') or (DBedtGrado12XMatric.Text= '') or (DBedtTecMedioXMatric.Text= '') or (DBedtNivSupXMatric.Text= '') or (DBedtTotalNivelXMatric.Text= '') or (DBedtGrado6XNoMatric.Text= '') or (DBedtGrado9XNoMatric.Text= '') or (DBedtGrado12XNoMatric.Text= '') or (DBedtTecMedioXNoMatric.Text= '') or (DBedtNivSupXNoMatric.Text= '') or (DBedtTotalNivelXNoMatric.Text= '')
      //sección 5_4 de las Planillas Provinciales
      or (DBedtNoFormalTrabProxEdadJub.Text= '') or (DBedtNoFormalTrabProblemasSalud.Text= '') or (DBedtNoFormalLicEnfermedadYMaternidad.Text= '') or (DBedtNoFormalTrabProblemasFamiliares.Text= '') or (DBedtNoFormalNoDisponibMatricXMINED.Text= '') or (DBedtNoFormalNoDisponibMatricXMES.Text= '') or (DBedtNoFormalLimMatricNivSup.Text= '') or (DBedtNoFormalImposibEntidAbrirAulas.Text= '') or (DBedtNoFormalTrabNoAcredit.Text= '') or (DBedtNoFormalTrabTurnosRotativos.Text= '') or (DBedtNoFormalTrabNieganIncorp.Text= '') or (DBedtNoFormalMovilConstruc.Text= '') or (DBedtNoFormalOtrasCausas.Text= '')
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      or (DBedtCurHabilXTotalNoIdoneos.Text= '') or (DBedtEntrenamientoXTotalNoIdoneos.Text= '') or (DBedtTotalNoIdoneosXTotalNoIdoneos.Text= '') or (DBedtCurHabilXMatric.Text= '') or (DBedtEntrenamientoXMatric.Text= '') or (DBedtTotalNoIdoneosXMatric.Text= '') or (DBedtCurHabilXNoMatric.Text= '') or (DBedtEntrenamientoXNoMatric.Text= '') or (DBedtTotalNoIdoneosXNoMatric.Text= '')
      //sección 5_7 de las Planillas Provinciales
      or (DBedtNoEficTrabProxEdadJub.Text= '') or (DBedtNoEficTrabProblemasSalud.Text= '') or (DBedtNoEficLicEnfermedadYMaternidad.Text= '') or (DBedtNoEficTrabProblemasFamiliares.Text= '') or (DBedtNoEficTrabTurnosRotativos.Text= '') or (DBedtNoEficTrabNieganIncorp.Text= '') or (DBedtNoEficMovilConstruc.Text= '') or (DBedtNoEficOtrasCausas.Text= '')
      //sección 5_8 de las Planillas Provinciales
      or (DBedtCasilla1XPendiente.Text= '') or (DBedtCasilla2XPendiente.Text= '') or (DBedtTotalXPendiente.Text= '')   )
      then Seccion5:= '5,  '
        else Seccion5:= '';

  //*** No hay ningún DBEdit en la Seccion 6 de las Planillas Provinciales

  //Muestro la localización de la(s) ausencia(s) de datos numéricos.
  ShowMessage('Luego de la modificación faltan datos numéricos por teclear en la(s) seccion(es): ' + Seccion1 + Seccion2 + Seccion3 + Seccion4 + Seccion5 + 'y deben ser llenados para poder guardar la Planilla Provincial en la base de datos.');
end;


//*** Poner "Sin comentarios" en los DBMemos de las Planillas Provinciales que estén vacios
procedure TfrmPrincipal.PonerSinComentariosDBMemosPlanillasProvinciales;
begin
  //Final de la parte 4 de las Planillas Provinciales (CMG)
  if (DBMemoValTrabDesPorEscRamalesCMG.Text= '')
    then
      DBMemoValTrabDesPorEscRamalesCMG.Text:= 'Sin comentarios.';

  //Sección 5_5 de las Planillas Provinciales
      if (DBMemoExplicNoMatric.Text= '')                        //Añadido en la versión 2008
        then
          DBMemoExplicNoMatric.Text:= 'Sin comentarios.';

  //Primer Memo de la sección 5_8 de las Planillas Provinciales 
      if (DBMemoCasilla1XCausas.Text= '')                       //Añadido en la versión 2008
        then
          DBMemoCasilla1XCausas.Text:= 'Sin comentarios.';

  //Segundo Memo de la sección 5_8 de las Planillas Provinciales 
      if (DBMemoCasilla2XCausas.Text= '')                        //Añadido en la versión 2008
        then
          DBMemoCasilla2XCausas.Text:= 'Sin comentarios.';

  //Tercer Memo de la sección 5_8 de las Planillas Provinciales 
      if (DBMemoTotalXCausas.Text= '')                          //Añadido en la versión 2008
        then
          DBMemoTotalXCausas.Text:= 'Sin comentarios.';          

  //Parte 6 de las Planillas Provinciales(CMG)
  if (DBMemoValoracionCualitativaDelProcesoCapacCMG.Text= '')
    then
      DBMemoValoracionCualitativaDelProcesoCapacCMG.Text:= 'Sin comentarios.';
end;


procedure TfrmPrincipal.PosicionarEnDBEditVacioPlanillasProvinciales;
label Salida;
begin
  //** Pongo en Focus el primer DBEdit de las Planillas Provinciales que esté vacio

//parte 1 de las Planillas Provinciales
  if  (DBedtTotalEntOrgCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtTotalEntOrgCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtEntOrgConPlanAnualCapCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtEntOrgConPlanAnualCapCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalTrabOrgCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtTotalTrabOrgCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalGradAccCapCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtTotalGradAccCapCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtRelacionGradXTotalCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtRelacionGradXTotalCMG.SetFocus;
        goto Salida;
      end;

    //parte 2 de las Planillas Provinciales
  if (DBedtGradEnEmpInternasCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnEmpInternasCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnInstExternasCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnInstExternasCMG.SetFocus;
        goto Salida;
      end;
      
  if (DBedtDirectivosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtDirectivosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTecnicosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtTecnicosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtAdministrativosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtAdministrativosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTrabServiciosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtTrabServiciosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtOperariosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtOperariosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurHabCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurHabCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurPerfecCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurPerfecCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradenAdiestLabCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradenAdiestLabCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnEntPTrabCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnEntPTrabCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurPostGradoCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurPostGradoCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnDiplomadosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnDiplomadosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnMaestriasCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnMaestriasCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnDoctoradosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnDoctoradosCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurFormCompMINEDCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurFormCompMINEDCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurFormCompMESCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurFormCompMESCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurIdiomaExtCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurIdiomaExtCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnCurCompCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurCompCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtGradEnEntrenEnExtCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnEntrenEnExtCMG.SetFocus;;
        goto Salida;
      end;

  if (DBedtGradEnOtrasAccCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnOtrasAccCMG.SetFocus;
        goto Salida;
      end;



  if  //parte 3 de las Planillas Provinciales
      (DBedtInstTotalUtilEnCapacCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        DBedtInstTotalUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtInstEventUtilEnCapacCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        DBedtInstEventUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtInstPermUtilEnCapacCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        DBedtInstPermUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;


  //parte 4 de las Planillas Provinciales
   if (DBedtMaestriasXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtMaestriasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (DBedtDiplomadosXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtDiplomadosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (DBedtCurPostgradosXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
         DBedtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (DBedtCurIdiomasXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurIdiomasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (DBedtCurCompXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurCompXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (DBedtHabilitacionXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtHabilitacionXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtPerfecXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtPerfecXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTallSemConfXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTallSemConfXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTotalXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtMaestriasXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtMaestriasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtDiplomadosXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtDiplomadosXGradCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtCurPostgradosXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtCurIdiomasXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurIdiomasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtCurCompXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurCompXGradCMG.SetFocus;
        goto Salida;
      end;

      if (DBedtHabilitacionXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtHabilitacionXGradCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtPerfecXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtPerfecXGradCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTallSemConfXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTallSemConfXGradCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTotalXGradCMG.SetFocus;
        goto Salida;
      end;


  //parte 5 de las Planillas Provinciales
  //Sección 5_1
  if (DBedtTotalTrabNoIdoneosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalTrabNoIdoneosCMG.SetFocus;
        goto Salida;
      end;


  //Sección 5_2    
  if (DBedtNoIdoneosSinCalificFormalCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoIdoneosSinCalificFormalCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtNoIdoneosSinEficienciaCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoIdoneosSinEficienciaCMG.SetFocus;
        goto Salida;
      end;

  if (DBedtNoIdoneosSinBConductaCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoIdoneosSinBConductaCMG.SetFocus;
        goto Salida;
      end;


  //sección 5_3 de las Planillas Provinciales
  if (DBedtGrado6XTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado6XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado9XTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado9XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado12XTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado12XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtTecMedioXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTecMedioXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtNivSupXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNivSupXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalNivelXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNivelXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado6XMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado6XMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado9XMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado9XMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado12XMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado12XMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtTecMedioXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTecMedioXMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtNivSupXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNivSupXMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalNivelXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNivelXMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado6XNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado6XNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado9XNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado9XNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtGrado12XNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado12XNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtTecMedioXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTecMedioXNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtNivSupXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNivSupXNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalNivelXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNivelXNoMatric.SetFocus;
        goto Salida;
      end;


  //sección 5_4 de las Planillas Provinciales
  if (DBedtNoFormalTrabProxEdadJub.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalTrabProblemasSalud.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalLicEnfermedadYMaternidad.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalTrabProblemasFamiliares.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalNoDisponibMatricXMINED.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalNoDisponibMatricXMINED.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalNoDisponibMatricXMES.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalNoDisponibMatricXMES.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalLimMatricNivSup.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalLimMatricNivSup.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalImposibEntidAbrirAulas.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalImposibEntidAbrirAulas.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalTrabNoAcredit.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabNoAcredit.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalTrabTurnosRotativos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalTrabNieganIncorp.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalMovilConstruc.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (DBedtNoFormalOtrasCausas.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_5 de las Planillas Provinciales
  //No hay ningún Edit allí



  //sección 5_6 de las Planillas Provinciales
  if (DBedtCurHabilXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCurHabilXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtEntrenamientoXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtEntrenamientoXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalNoIdoneosXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNoIdoneosXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (DBedtCurHabilXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCurHabilXMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtEntrenamientoXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtEntrenamientoXMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalNoIdoneosXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNoIdoneosXMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtCurHabilXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCurHabilXNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtEntrenamientoXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtEntrenamientoXNoMatric.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalNoIdoneosXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNoIdoneosXNoMatric.SetFocus;
        goto Salida;
      end;



  //sección 5_7 de las Planillas Provinciales
  if (DBedtNoEficTrabProxEdadJub.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficTrabProblemasSalud.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficLicEnfermedadYMaternidad.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficTrabProblemasFamiliares.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficTrabTurnosRotativos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficTrabNieganIncorp.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficMovilConstruc.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (DBedtNoEficOtrasCausas.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_8 de las Planillas Provinciales
  if (DBedtCasilla1XPendiente.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCasilla1XPendiente.SetFocus;
        goto Salida;
      end;

  if (DBedtCasilla2XPendiente.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCasilla2XPendiente.SetFocus;
        goto Salida;
      end;

  if (DBedtTotalXPendiente.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalXPendiente.SetFocus;
        goto Salida;
      end;




  //parte 6 de las Planillas Provinciales
  //No hay DBEdits en esta parte

Salida:

end;


procedure TfrmPrincipal.PosicionarEnDBEditSePasaDeSmallIntPlanillasProvinciales;
label Salida;
begin
  //** Pongo en Focus el primer DBEdit de las Planillas Provinciales que tenga un valor mayor que SmallInt

//parte 1 de las Planillas Provinciales
  if  (StrToInt(DBedtTotalEntOrgCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtTotalEntOrgCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtEntOrgConPlanAnualCapCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtEntOrgConPlanAnualCapCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalTrabOrgCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtTotalTrabOrgCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalGradAccCapCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        DBedtTotalGradAccCapCMG.SetFocus;
        goto Salida;
      end;

  //El componente "DBedtRelacionGradXTotalCMG" (final de parte 1) recibe datos de tipo Float.


    //parte 2 de las Planillas Provinciales
  if (StrToInt(DBedtGradEnEmpInternasCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnEmpInternasCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnInstExternasCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnInstExternasCMG.SetFocus;
        goto Salida;
      end;
      
  if (StrToInt(DBedtDirectivosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtDirectivosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTecnicosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtTecnicosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtAdministrativosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtAdministrativosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTrabServiciosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtTrabServiciosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtOperariosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtOperariosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurHabCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurHabCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurPerfecCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurPerfecCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradenAdiestLabCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradenAdiestLabCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnEntPTrabCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnEntPTrabCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurPostGradoCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurPostGradoCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnDiplomadosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnDiplomadosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnMaestriasCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnMaestriasCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnDoctoradosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnDoctoradosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurFormCompMINEDCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurFormCompMINEDCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurFormCompMESCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurFormCompMESCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurIdiomaExtCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurIdiomaExtCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnCurCompCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnCurCompCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnEntrenEnExtCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnEntrenEnExtCMG.SetFocus;;
        goto Salida;
      end;

  if (StrToInt(DBedtGradEnOtrasAccCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        DBedtGradEnOtrasAccCMG.SetFocus;
        goto Salida;
      end;



  if  //parte 3 de las Planillas Provinciales
      (StrToInt(DBedtInstTotalUtilEnCapacCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        DBedtInstTotalUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtInstEventUtilEnCapacCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        DBedtInstEventUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtInstPermUtilEnCapacCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        DBedtInstPermUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;


  //parte 4 de las Planillas Provinciales
   if (StrToInt(DBedtMaestriasXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtMaestriasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(DBedtDiplomadosXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtDiplomadosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(DBedtCurPostgradosXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
         DBedtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(DBedtCurIdiomasXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurIdiomasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(DBedtCurCompXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurCompXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(DBedtHabilitacionXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtHabilitacionXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtPerfecXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtPerfecXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTallSemConfXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTallSemConfXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTotalXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtMaestriasXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtMaestriasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtDiplomadosXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtDiplomadosXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtCurPostgradosXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtCurIdiomasXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurIdiomasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtCurCompXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtCurCompXGradCMG.SetFocus;
        goto Salida;
      end;

      if (StrToInt(DBedtHabilitacionXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtHabilitacionXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtPerfecXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtPerfecXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTallSemConfXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTallSemConfXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        DBedtTotalXGradCMG.SetFocus;
        goto Salida;
      end;



  //parte 5 de las Planillas Provinciales
  //Sección 5_1
  if (StrToInt(DBedtTotalTrabNoIdoneosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalTrabNoIdoneosCMG.SetFocus;
        goto Salida;
      end;


  //Sección 5_2    
  if (StrToInt(DBedtNoIdoneosSinCalificFormalCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoIdoneosSinCalificFormalCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoIdoneosSinEficienciaCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoIdoneosSinEficienciaCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoIdoneosSinBConductaCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoIdoneosSinBConductaCMG.SetFocus;
        goto Salida;
      end;


  //sección 5_3 de las Planillas Provinciales
  if (StrToInt(DBedtGrado6XTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado6XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado9XTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado9XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado12XTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado12XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTecMedioXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTecMedioXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNivSupXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNivSupXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalNivelXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNivelXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado6XMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado6XMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado9XMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado9XMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado12XMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado12XMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTecMedioXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTecMedioXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNivSupXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNivSupXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalNivelXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNivelXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado6XNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado6XNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado9XNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado9XNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtGrado12XNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtGrado12XNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTecMedioXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTecMedioXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNivSupXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNivSupXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalNivelXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNivelXNoMatric.SetFocus;
        goto Salida;
      end;


  //sección 5_4 de las Planillas Provinciales
  if (StrToInt(DBedtNoFormalTrabProxEdadJub.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalTrabProblemasSalud.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalLicEnfermedadYMaternidad.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalTrabProblemasFamiliares.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalNoDisponibMatricXMINED.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalNoDisponibMatricXMINED.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalNoDisponibMatricXMES.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalNoDisponibMatricXMES.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalLimMatricNivSup.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalLimMatricNivSup.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalImposibEntidAbrirAulas.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalImposibEntidAbrirAulas.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalTrabNoAcredit.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabNoAcredit.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalTrabTurnosRotativos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalTrabNieganIncorp.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalMovilConstruc.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoFormalOtrasCausas.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoFormalOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_5 de las Planillas Provinciales
  //No hay ningún Edit allí



  //sección 5_6 de las Planillas Provinciales
  if (StrToInt(DBedtCurHabilXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCurHabilXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtEntrenamientoXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtEntrenamientoXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalNoIdoneosXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNoIdoneosXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtCurHabilXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCurHabilXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtEntrenamientoXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtEntrenamientoXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalNoIdoneosXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNoIdoneosXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtCurHabilXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCurHabilXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtEntrenamientoXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtEntrenamientoXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalNoIdoneosXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalNoIdoneosXNoMatric.SetFocus;
        goto Salida;
      end;



  //sección 5_7 de las Planillas Provinciales
  if (StrToInt(DBedtNoEficTrabProxEdadJub.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficTrabProblemasSalud.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficLicEnfermedadYMaternidad.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficTrabProblemasFamiliares.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficTrabTurnosRotativos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficTrabNieganIncorp.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficMovilConstruc.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtNoEficOtrasCausas.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtNoEficOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_8 de las Planillas Provinciales
  if (StrToInt(DBedtCasilla1XPendiente.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCasilla1XPendiente.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtCasilla2XPendiente.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtCasilla2XPendiente.SetFocus;
        goto Salida;
      end;

  if (StrToInt(DBedtTotalXPendiente.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        DBedtTotalXPendiente.SetFocus;
        goto Salida;
      end;

Salida:

end;

//Verificar si los valores en los DBEdits de las Planillas Provinciales se pasan de SmallInt
function TfrmPrincipal.LosDBEditsSePasanDeSmallIntPlanillasProvinciales: Boolean;
begin
  if  //parte 1 de las Planillas Provinciales
     (   (StrToInt(DBedtTotalEntOrgCMG.Text)> 10000000) or (StrToInt(DBedtEntOrgConPlanAnualCapCMG.Text)> 10000000) or (StrToInt(DBedtTotalTrabOrgCMG.Text)> 10000000) or (StrToInt(DBedtTotalGradAccCapCMG.Text)> 10000000)

      //parte 2 de las Planillas Provinciales
      or (StrToInt(DBedtGradEnEmpInternasCMG.Text)> 10000000) or (StrToInt(DBedtGradEnInstExternasCMG.Text)> 10000000) or (StrToInt(DBedtDirectivosCMG.Text)> 10000000) or (StrToInt(DBedtTecnicosCMG.Text)> 10000000) 
      or (StrToInt(DBedtAdministrativosCMG.Text)> 10000000) or (StrToInt(DBedtTrabServiciosCMG.Text)> 10000000) or (StrToInt(DBedtOperariosCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurHabCMG.Text)> 10000000) 
      or (StrToInt(DBedtGradEnCurPerfecCMG.Text)> 10000000)
      or (StrToInt(DBedtGradenAdiestLabCMG.Text)> 10000000) or (StrToInt(DBedtGradEnEntPTrabCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurPostGradoCMG.Text)> 10000000) or (StrToInt(DBedtGradEnDiplomadosCMG.Text)> 10000000) 
      or (StrToInt(DBedtGradEnMaestriasCMG.Text)> 10000000) or (StrToInt(DBedtGradEnDoctoradosCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurFormCompMINEDCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurFormCompMESCMG.Text)> 10000000) 
      or (StrToInt(DBedtGradEnCurIdiomaExtCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurCompCMG.Text)> 10000000) or (StrToInt(DBedtGradEnEntrenEnExtCMG.Text)> 10000000) or (StrToInt(DBedtGradEnOtrasAccCMG.Text)> 10000000)

      //parte 3 de las Planillas Provinciales
      or (StrToInt(DBedtInstTotalUtilEnCapacCMG.Text)> 10000000) or (StrToInt(DBedtInstEventUtilEnCapacCMG.Text)> 10000000) or (StrToInt(DBedtInstPermUtilEnCapacCMG.Text)> 10000000)

      //parte 4 de las Planillas Provinciales
      or (StrToInt(DBedtMaestriasXMatricCMG.Text)> 10000000) or (StrToInt(DBedtDiplomadosXMatricCMG.Text)> 10000000) or (StrToInt(DBedtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(DBedtCurIdiomasXMatricCMG.Text)> 10000000) 
      or (StrToInt(DBedtCurCompXMatricCMG.Text)> 10000000) or (StrToInt(DBedtHabilitacionXMatricCMG.Text)> 10000000) or (StrToInt(DBedtPerfecXMatricCMG.Text)> 10000000) or (StrToInt(DBedtTallSemConfXMatricCMG.Text)> 10000000) 
      or (StrToInt(DBedtTotalXMatricCMG.Text)> 10000000) or (StrToInt(DBedtMaestriasXGradCMG.Text)> 10000000) or (StrToInt(DBedtDiplomadosXGradCMG.Text)> 10000000) or (StrToInt(DBedtCurPostgradosXMatricCMG.Text)> 10000000) 
      or (StrToInt(DBedtCurIdiomasXGradCMG.Text)> 10000000) or (StrToInt(DBedtCurCompXGradCMG.Text)> 10000000) or (StrToInt(DBedtHabilitacionXGradCMG.Text)> 10000000) or (StrToInt(DBedtPerfecXGradCMG.Text)> 10000000) 
      or (StrToInt(DBedtTallSemConfXGradCMG.Text)> 10000000) or (StrToInt(DBedtTotalXGradCMG.Text)> 10000000)

      //parte 5 de las Planillas Provinciales
      //sección 5_1 de las Planillas Provinciales
      or   (StrToInt(DBedtTotalTrabNoIdoneosCMG.Text)> 10000000)
      //sección 5_2 de las Planillas Provinciales
      or (StrToInt(DBedtNoIdoneosSinCalificFormalCMG.Text)> 10000000) or (StrToInt(DBedtNoIdoneosSinEficienciaCMG.Text)> 10000000) or (StrToInt(DBedtNoIdoneosSinBConductaCMG.Text)> 10000000)
      //sección 5_3 de las Planillas Provinciales
      or (StrToInt(DBedtGrado6XTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtGrado9XTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtGrado12XTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtTecMedioXTotalNoIdoneos.Text)> 10000000) 
      or (StrToInt(DBedtNivSupXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtTotalNivelXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtGrado6XMatric.Text)> 10000000) or (StrToInt(DBedtGrado9XMatric.Text)> 10000000) 
      or (StrToInt(DBedtGrado12XMatric.Text)> 10000000) or (StrToInt(DBedtTecMedioXMatric.Text)> 10000000) or (StrToInt(DBedtNivSupXMatric.Text)> 10000000) or (StrToInt(DBedtTotalNivelXMatric.Text)> 10000000) 
      or (StrToInt(DBedtGrado6XNoMatric.Text)> 10000000) or (StrToInt(DBedtGrado9XNoMatric.Text)> 10000000) or (StrToInt(DBedtGrado12XNoMatric.Text)> 10000000) or (StrToInt(DBedtTecMedioXNoMatric.Text)> 10000000) 
      or (StrToInt(DBedtNivSupXNoMatric.Text)> 10000000) or (StrToInt(DBedtTotalNivelXNoMatric.Text)> 10000000)
      //sección 5_4 de las Planillas Provinciales
      or (StrToInt(DBedtNoFormalTrabProxEdadJub.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabProblemasSalud.Text)> 10000000) or (StrToInt(DBedtNoFormalLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabProblemasFamiliares.Text)> 10000000) 
      or (StrToInt(DBedtNoFormalNoDisponibMatricXMINED.Text)> 10000000) or (StrToInt(DBedtNoFormalNoDisponibMatricXMES.Text)> 10000000) or (StrToInt(DBedtNoFormalLimMatricNivSup.Text)> 10000000) or (StrToInt(DBedtNoFormalImposibEntidAbrirAulas.Text)> 10000000) 
      or (StrToInt(DBedtNoFormalTrabNoAcredit.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabTurnosRotativos.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabNieganIncorp.Text)> 10000000) or (StrToInt(DBedtNoFormalMovilConstruc.Text)> 10000000) 
      or (StrToInt(DBedtNoFormalOtrasCausas.Text)> 10000000)
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      or (StrToInt(DBedtCurHabilXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtEntrenamientoXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtTotalNoIdoneosXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtCurHabilXMatric.Text)> 10000000) 
      or (StrToInt(DBedtEntrenamientoXMatric.Text)> 10000000) or (StrToInt(DBedtTotalNoIdoneosXMatric.Text)> 10000000) or (StrToInt(DBedtCurHabilXNoMatric.Text)> 10000000) or (StrToInt(DBedtEntrenamientoXNoMatric.Text)> 10000000) or (StrToInt(DBedtTotalNoIdoneosXNoMatric.Text)> 10000000)
      //sección 5_7 de las Planillas Provinciales
      or (StrToInt(DBedtNoEficTrabProxEdadJub.Text)> 10000000) or (StrToInt(DBedtNoEficTrabProblemasSalud.Text)> 10000000) or (StrToInt(DBedtNoEficLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(DBedtNoEficTrabProblemasFamiliares.Text)> 10000000) 
      or (StrToInt(DBedtNoEficTrabTurnosRotativos.Text)> 10000000) or (StrToInt(DBedtNoEficTrabNieganIncorp.Text)> 10000000) or (StrToInt(DBedtNoEficMovilConstruc.Text)> 10000000) or (StrToInt(DBedtNoEficOtrasCausas.Text)> 10000000)
      //sección 5_8 de las Planillas Provinciales
      or (StrToInt(DBedtCasilla1XPendiente.Text)> 10000000) or (StrToInt(DBedtCasilla2XPendiente.Text)> 10000000) or (StrToInt(DBedtTotalXPendiente.Text)> 10000000)   )
     
      //parte 6 de las Planillas Provinciales
      //No hay ningún DBEdit allí
      then
        begin
          Result:= True;
        end
          else
            begin
              Result:= False;
            end;
end;

// Especifico en cuáles DBEdits de las Planillas Provinciales se pasan de SmallInt
procedure TfrmPrincipal.DetallarDBEditsPasadosDeSmallIntPlanillasProvinciales;
var
  Seccion1, Seccion2, Seccion3, Seccion4, Seccion5: string;
begin
  //** Lleno las variables para localizar la procedencia del exceso de valor en los datos numéricos
  if  //parte 1 de las Planillas Provinciales
     (  (StrToInt(DBedtTotalEntOrgCMG.Text)> 10000000) or (StrToInt(DBedtEntOrgConPlanAnualCapCMG.Text)> 10000000) or (StrToInt(DBedtTotalTrabOrgCMG.Text)> 10000000) or (StrToInt(DBedtTotalGradAccCapCMG.Text)> 10000000) or (StrToInt(DBedtRelacionGradXTotalCMG.Text)> 10000000)  )
      then Seccion1:= '1,  '
        else Seccion1:= '';

  if    //parte 2 de las Planillas Provinciales
      (  (StrToInt(DBedtGradEnEmpInternasCMG.Text)> 10000000) or (StrToInt(DBedtGradEnInstExternasCMG.Text)> 10000000) or (StrToInt(DBedtDirectivosCMG.Text)> 10000000) or (StrToInt(DBedtTecnicosCMG.Text)> 10000000) or (StrToInt(DBedtAdministrativosCMG.Text)> 10000000) 
      or (StrToInt(DBedtTrabServiciosCMG.Text)> 10000000) or (StrToInt(DBedtOperariosCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurHabCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurPerfecCMG.Text)> 10000000)
      or (StrToInt(DBedtGradenAdiestLabCMG.Text)> 10000000) or (StrToInt(DBedtGradEnEntPTrabCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurPostGradoCMG.Text)> 10000000) or (StrToInt(DBedtGradEnDiplomadosCMG.Text)> 10000000) or (StrToInt(DBedtGradEnMaestriasCMG.Text)> 10000000) 
      or (StrToInt(DBedtGradEnDoctoradosCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurFormCompMINEDCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurFormCompMESCMG.Text)> 10000000) 
      or (StrToInt(DBedtGradEnCurIdiomaExtCMG.Text)> 10000000) or (StrToInt(DBedtGradEnCurCompCMG.Text)> 10000000) or (StrToInt(DBedtGradEnEntrenEnExtCMG.Text)> 10000000) or (StrToInt(DBedtGradEnOtrasAccCMG.Text)> 10000000)  )
      then Seccion2:= '2,  '
        else Seccion2:= '';

  if    //parte 3 de las Planillas Provinciales
       ( (StrToInt(DBedtInstTotalUtilEnCapacCMG.Text)> 10000000) or (StrToInt(DBedtInstEventUtilEnCapacCMG.Text)> 10000000) or (StrToInt(DBedtInstPermUtilEnCapacCMG.Text)> 10000000)  )
      then Seccion3:= '3,  '
        else Seccion3:= '';

  if    //parte 4 de las Planillas Provinciales
      (  (StrToInt(DBedtMaestriasXMatricCMG.Text)> 10000000) or (StrToInt(DBedtDiplomadosXMatricCMG.Text)> 10000000) or (StrToInt(DBedtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(DBedtCurIdiomasXMatricCMG.Text)> 10000000) or (StrToInt(DBedtCurCompXMatricCMG.Text)> 10000000) 
      or (StrToInt(DBedtHabilitacionXMatricCMG.Text)> 10000000) or (StrToInt(DBedtPerfecXMatricCMG.Text)> 10000000) or (StrToInt(DBedtTallSemConfXMatricCMG.Text)> 10000000)
      or (StrToInt(DBedtTotalXMatricCMG.Text)> 10000000) or (StrToInt(DBedtMaestriasXGradCMG.Text)> 10000000) or (StrToInt(DBedtDiplomadosXGradCMG.Text)> 10000000) or (StrToInt(DBedtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(DBedtCurIdiomasXGradCMG.Text)> 10000000) 
      or (StrToInt(DBedtCurCompXGradCMG.Text)> 10000000) or (StrToInt(DBedtHabilitacionXGradCMG.Text)> 10000000) or (StrToInt(DBedtPerfecXGradCMG.Text)> 10000000) 
      or (StrToInt(DBedtTallSemConfXGradCMG.Text)> 10000000) or (StrToInt(DBedtTotalXGradCMG.Text)> 10000000)  )
      then  Seccion4:= '4,  '
        else Seccion4:= '';


 if  //parte 5 de las Planillas Provinciales
      //sección 5_1 de las Planillas Provinciales
      (   (StrToInt(DBedtTotalTrabNoIdoneosCMG.Text)> 10000000)
      //sección 5_2 de las Planillas Provinciales
      or (StrToInt(DBedtNoIdoneosSinCalificFormalCMG.Text)> 10000000) or (StrToInt(DBedtNoIdoneosSinEficienciaCMG.Text)> 10000000) or (StrToInt(DBedtNoIdoneosSinBConductaCMG.Text)> 10000000)
      //sección 5_3 de las Planillas Provinciales
      or (StrToInt(DBedtGrado6XTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtGrado9XTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtGrado12XTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtTecMedioXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtNivSupXTotalNoIdoneos.Text)> 10000000) 
      or (StrToInt(DBedtTotalNivelXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtGrado6XMatric.Text)> 10000000) or (StrToInt(DBedtGrado9XMatric.Text)> 10000000) or (StrToInt(DBedtGrado12XMatric.Text)> 10000000) or (StrToInt(DBedtTecMedioXMatric.Text)> 10000000) 
      or (StrToInt(DBedtNivSupXMatric.Text)> 10000000) or (StrToInt(DBedtTotalNivelXMatric.Text)> 10000000) or (StrToInt(DBedtGrado6XNoMatric.Text)> 10000000) or (StrToInt(DBedtGrado9XNoMatric.Text)> 10000000) or (StrToInt(DBedtGrado12XNoMatric.Text)> 10000000) 
      or (StrToInt(DBedtTecMedioXNoMatric.Text)> 10000000) or (StrToInt(DBedtNivSupXNoMatric.Text)> 10000000) or (StrToInt(DBedtTotalNivelXNoMatric.Text)> 10000000)
      //sección 5_4 de las Planillas Provinciales
      or (StrToInt(DBedtNoFormalTrabProxEdadJub.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabProblemasSalud.Text)> 10000000) or (StrToInt(DBedtNoFormalLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabProblemasFamiliares.Text)> 10000000) 
      or (StrToInt(DBedtNoFormalNoDisponibMatricXMINED.Text)> 10000000) or (StrToInt(DBedtNoFormalNoDisponibMatricXMES.Text)> 10000000) or (StrToInt(DBedtNoFormalLimMatricNivSup.Text)> 10000000) or (StrToInt(DBedtNoFormalImposibEntidAbrirAulas.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabNoAcredit.Text)> 10000000) 
      or (StrToInt(DBedtNoFormalTrabTurnosRotativos.Text)> 10000000) or (StrToInt(DBedtNoFormalTrabNieganIncorp.Text)> 10000000) or (StrToInt(DBedtNoFormalMovilConstruc.Text)> 10000000) or (StrToInt(DBedtNoFormalOtrasCausas.Text)> 10000000)
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      or (StrToInt(DBedtCurHabilXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtEntrenamientoXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtTotalNoIdoneosXTotalNoIdoneos.Text)> 10000000) or (StrToInt(DBedtCurHabilXMatric.Text)> 10000000) or (StrToInt(DBedtEntrenamientoXMatric.Text)> 10000000) 
      or (StrToInt(DBedtTotalNoIdoneosXMatric.Text)> 10000000) or (StrToInt(DBedtCurHabilXNoMatric.Text)> 10000000) or (StrToInt(DBedtEntrenamientoXNoMatric.Text)> 10000000) or (StrToInt(DBedtTotalNoIdoneosXNoMatric.Text)> 10000000)
      //sección 5_7 de las Planillas Provinciales
      or (StrToInt(DBedtNoEficTrabProxEdadJub.Text)> 10000000) or (StrToInt(DBedtNoEficTrabProblemasSalud.Text)> 10000000) or (StrToInt(DBedtNoEficLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(DBedtNoEficTrabProblemasFamiliares.Text)> 10000000) or (StrToInt(DBedtNoEficTrabTurnosRotativos.Text)> 10000000) 
      or (StrToInt(DBedtNoEficTrabNieganIncorp.Text)> 10000000) or (StrToInt(DBedtNoEficMovilConstruc.Text)> 10000000) or (StrToInt(DBedtNoEficOtrasCausas.Text)> 10000000)
      //sección 5_8 de las Planillas Provinciales
      or (StrToInt(DBedtCasilla1XPendiente.Text)> 10000000) or (StrToInt(DBedtCasilla2XPendiente.Text)> 10000000) or (StrToInt(DBedtTotalXPendiente.Text)> 10000000)   )
      then Seccion5:= '5,  '
        else Seccion5:= '';

  //*** No hay ningún DBEdit en la Seccion 6 de las Planillas Provinciales
  
  //Muestro la localización de la(s) ausencia(s) de datos numéricos.
  ShowMessage('Luego de la modificación hay datos numéricos que exceden el máximo valor admitido (10 millones) en la(s) seccion(es): ' + Seccion1 + Seccion2 + Seccion3 + Seccion4 + Seccion5 + 'y deben ser corregidos para poder guardar la Planilla Provincial en la base de datos.');
end;


//*** Poner la propiedad ReadOnly en True en los DBEdits y DBMemos de las Planillas Provinciales***
procedure TfrmPrincipal.PonerLecturaSolamenteDBEditsYDBMemosPlanillasProvinciales;
begin
{ *** Pongo la propiedad ReadOnly en True en los DBEdits y los DBMemos de las Planillas Provinciales **}

  //Planillas Provinciales, parte 1:
	DBedtTotalEntOrgCMG.ReadOnly:= True;
	DBedtEntOrgConPlanAnualCapCMG.ReadOnly:= True;
	DBedtTotalTrabOrgCMG.ReadOnly:= True;
	DBedtTotalGradAccCapCMG.ReadOnly:= True;
	DBedtRelacionGradXTotalCMG.ReadOnly:= True;{De todas formas ya estaba así}


  //Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.ReadOnly:= True;
	DBedtGradEnInstExternasCMG.ReadOnly:= True;
	DBedtDirectivosCMG.ReadOnly:= True;
	DBedtTecnicosCMG.ReadOnly:= True;
	DBedtAdministrativosCMG.ReadOnly:= True;
	DBedtTrabServiciosCMG.ReadOnly:= True;
	DBedtOperariosCMG.ReadOnly:= True;
	DBedtGradEnCurHabCMG.ReadOnly:= True;
	DBedtGradEnCurPerfecCMG.ReadOnly:= True;
	DBedtGradenAdiestLabCMG.ReadOnly:= True;
	DBedtGradEnEntPTrabCMG.ReadOnly:= True;
	DBedtGradEnCurPostGradoCMG.ReadOnly:= True;
	DBedtGradEnDiplomadosCMG.ReadOnly:= True;
	DBedtGradEnMaestriasCMG.ReadOnly:= True;
	DBedtGradEnDoctoradosCMG.ReadOnly:= True;
	DBedtGradEnCurFormCompMINEDCMG.ReadOnly:= True;
	DBedtGradEnCurFormCompMESCMG.ReadOnly:= True;
	DBedtGradEnCurIdiomaExtCMG.ReadOnly:= True;
	DBedtGradEnCurCompCMG.ReadOnly:= True;
	DBedtGradEnEntrenEnExtCMG.ReadOnly:= True;
	DBedtGradEnOtrasAccCMG.ReadOnly:= True;


  //Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.ReadOnly:= True;
	DBedtInstEventUtilEnCapacCMG.ReadOnly:= True;
	DBedtInstPermUtilEnCapacCMG.ReadOnly:= True;


  //Planillas Provinciales, parte 4:
	DBedtMaestriasXMatricCMG.ReadOnly:= True;
	DBedtDiplomadosXMatricCMG.ReadOnly:= True;
	DBedtCurPostgradosXMatricCMG.ReadOnly:= True;
	DBedtCurIdiomasXMatricCMG.ReadOnly:= True;
	DBedtCurCompXMatricCMG.ReadOnly:= True;
	DBedtHabilitacionXMatricCMG.ReadOnly:= True;
	DBedtPerfecXMatricCMG.ReadOnly:= True;
	DBedtTallSemConfXMatricCMG.ReadOnly:= True;
	DBedtTotalXMatricCMG.ReadOnly:= True;
	DBedtMaestriasXGradCMG.ReadOnly:= True;
	DBedtDiplomadosXGradCMG.ReadOnly:= True;
	DBedtCurPostgradosXGradCMG.ReadOnly:= True;
	DBedtCurIdiomasXGradCMG.ReadOnly:= True;
	DBedtCurCompXGradCMG.ReadOnly:= True;
	DBedtHabilitacionXGradCMG.ReadOnly:= True;
	DBedtPerfecXGradCMG.ReadOnly:= True;
	DBedtTallSemConfXGradCMG.ReadOnly:= True;
	DBedtTotalXGradCMG.ReadOnly:= True;
	DBMemoValTrabDesPorEscRamalesCMG.ReadOnly:= True;

  //Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.ReadOnly:= True;
	DBedtNoIdoneosSinCalificFormalCMG.ReadOnly:= True;
	DBedtNoIdoneosSinEficienciaCMG.ReadOnly:= True;
	DBedtNoIdoneosSinBConductaCMG.ReadOnly:= True;

   	DBedtGrado6XTotalNoIdoneos.ReadOnly:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.ReadOnly:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.ReadOnly:= True;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.ReadOnly:= True;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneos.ReadOnly:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.ReadOnly:= True;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.ReadOnly:= True;
   	DBedtGrado9XMatric.ReadOnly:= True;
   	DBedtGrado12XMatric.ReadOnly:= True;
   	DBedtTecMedioXMatric.ReadOnly:= True;
   	DBedtNivSupXMatric.ReadOnly:= True;

    DBedtTotalNivelXMatric.ReadOnly:= True;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.ReadOnly:= True;
   	DBedtGrado9XNoMatric.ReadOnly:= True;
   	DBedtGrado12XNoMatric.ReadOnly:= True;
   	DBedtTecMedioXNoMatric.ReadOnly:= True;
   	DBedtNivSupXNoMatric.ReadOnly:= True;

    DBedtTotalNivelXNoMatric.ReadOnly:= True;                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    DBedtNoFormalTrabProxEdadJub.ReadOnly:= True;             //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.ReadOnly:= True;          //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.ReadOnly:= True;    //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.ReadOnly:= True;     //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.ReadOnly:= True;      //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.ReadOnly:= True;        //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.ReadOnly:= True;             //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.ReadOnly:= True;      //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.ReadOnly:= True;               //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.ReadOnly:= True;         //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.ReadOnly:= True;            //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.ReadOnly:= True;               //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.ReadOnly:= True;                 //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.ReadOnly:= True;                     //5.5 Agregado en la versión 2008

    DBedtCurHabilXTotalNoIdoneos.ReadOnly:= True;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.ReadOnly:= True;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.ReadOnly:= True;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.ReadOnly:= True;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.ReadOnly:= True;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.ReadOnly:= True;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.ReadOnly:= True;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.ReadOnly:= True;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.ReadOnly:= True;        //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtNoEficTrabProxEdadJub.ReadOnly:= True;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.ReadOnly:= True;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.ReadOnly:= True;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.ReadOnly:= True;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.ReadOnly:= True;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.ReadOnly:= True;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.ReadOnly:= True;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.ReadOnly:= True;                  //5.7.8 Agregado en la versión 2008

    DBedtCasilla1XPendiente.ReadOnly:= True;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.ReadOnly:= True;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.ReadOnly:= True;                    //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla1XCausas.ReadOnly:= True;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.ReadOnly:= True;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.ReadOnly:= True;                      //Parte del 5.8 (tabla) Agregado en la versión 2008

    
  //Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.ReadOnly:= True;
end;


//*** Poner la propiedad ReadOnly en False en los DBEdits y DBMemos de las Planillas Provinciales ***
procedure TfrmPrincipal.PonerLecturaYEscrituraDBEditsYDBMemosPlanillasProvinciales;
begin
{ *** Pongo la propiedad ReadOnly en False en los DBEdits y los DBMemos de las Planillas Provinciales ***}

  //Planillas Provinciales, parte 1:
	DBedtTotalEntOrgCMG.ReadOnly:= False;
	DBedtEntOrgConPlanAnualCapCMG.ReadOnly:= False;
	DBedtTotalTrabOrgCMG.ReadOnly:= False;
	DBedtTotalGradAccCapCMG.ReadOnly:= False;
	DBedtRelacionGradXTotalCMG.ReadOnly:= False;{De todas formas ya estaba así}


  //Planillas Provinciales, parte 2:
	DBedtGradEnEmpInternasCMG.ReadOnly:= False;
	DBedtGradEnInstExternasCMG.ReadOnly:= False;
	DBedtDirectivosCMG.ReadOnly:= False;
	DBedtTecnicosCMG.ReadOnly:= False;
	DBedtAdministrativosCMG.ReadOnly:= False;
	DBedtTrabServiciosCMG.ReadOnly:= False;
	DBedtOperariosCMG.ReadOnly:= False;
	DBedtGradEnCurHabCMG.ReadOnly:= False;
	DBedtGradEnCurPerfecCMG.ReadOnly:= False;
	DBedtGradenAdiestLabCMG.ReadOnly:= False;
	DBedtGradEnEntPTrabCMG.ReadOnly:= False;
	DBedtGradEnCurPostGradoCMG.ReadOnly:= False;
	DBedtGradEnDiplomadosCMG.ReadOnly:= False;
	DBedtGradEnMaestriasCMG.ReadOnly:= False;
	DBedtGradEnDoctoradosCMG.ReadOnly:= False;
	DBedtGradEnCurFormCompMINEDCMG.ReadOnly:= False;
	DBedtGradEnCurFormCompMESCMG.ReadOnly:= False;
	DBedtGradEnCurIdiomaExtCMG.ReadOnly:= False;
	DBedtGradEnCurCompCMG.ReadOnly:= False;
	DBedtGradEnEntrenEnExtCMG.ReadOnly:= False;
	DBedtGradEnOtrasAccCMG.ReadOnly:= False;


  //Planillas Provinciales, parte 3:
	DBedtInstTotalUtilEnCapacCMG.ReadOnly:= False;
	DBedtInstEventUtilEnCapacCMG.ReadOnly:= False;
	DBedtInstPermUtilEnCapacCMG.ReadOnly:= False;


  //Planillas Provinciales, parte 4:
	DBedtMaestriasXMatricCMG.ReadOnly:= False;
	DBedtDiplomadosXMatricCMG.ReadOnly:= False;
	DBedtCurPostgradosXMatricCMG.ReadOnly:= False;
	DBedtCurIdiomasXMatricCMG.ReadOnly:= False;
	DBedtCurCompXMatricCMG.ReadOnly:= False;
	DBedtHabilitacionXMatricCMG.ReadOnly:= False;
	DBedtPerfecXMatricCMG.ReadOnly:= False;
	DBedtTallSemConfXMatricCMG.ReadOnly:= False;
	DBedtTotalXMatricCMG.ReadOnly:= False;
	DBedtMaestriasXGradCMG.ReadOnly:= False;
	DBedtDiplomadosXGradCMG.ReadOnly:= False;
	DBedtCurPostgradosXGradCMG.ReadOnly:= False;
	DBedtCurIdiomasXGradCMG.ReadOnly:= False;
	DBedtCurCompXGradCMG.ReadOnly:= False;
	DBedtHabilitacionXGradCMG.ReadOnly:= False;
	DBedtPerfecXGradCMG.ReadOnly:= False;
	DBedtTallSemConfXGradCMG.ReadOnly:= False;
	DBedtTotalXGradCMG.ReadOnly:= False;
	DBMemoValTrabDesPorEscRamalesCMG.ReadOnly:= False;


  //Planillas Provinciales, parte 5:
	DBedtTotalTrabNoIdoneosCMG.ReadOnly:= False;
	DBedtNoIdoneosSinCalificFormalCMG.ReadOnly:= False;
	DBedtNoIdoneosSinEficienciaCMG.ReadOnly:= False;
	DBedtNoIdoneosSinBConductaCMG.ReadOnly:= False;

   	DBedtGrado6XTotalNoIdoneos.ReadOnly:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.ReadOnly:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.ReadOnly:= False;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.ReadOnly:= False;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneos.ReadOnly:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.ReadOnly:= False;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.ReadOnly:= False;
   	DBedtGrado9XMatric.ReadOnly:= False;
   	DBedtGrado12XMatric.ReadOnly:= False;
   	DBedtTecMedioXMatric.ReadOnly:= False;
   	DBedtNivSupXMatric.ReadOnly:= False;

    DBedtTotalNivelXMatric.ReadOnly:= False;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.ReadOnly:= False;
   	DBedtGrado9XNoMatric.ReadOnly:= False;
   	DBedtGrado12XNoMatric.ReadOnly:= False;
   	DBedtTecMedioXNoMatric.ReadOnly:= False;
   	DBedtNivSupXNoMatric.ReadOnly:= False;

    DBedtTotalNivelXNoMatric.ReadOnly:= False;                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    DBedtNoFormalTrabProxEdadJub.ReadOnly:= False;             //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.ReadOnly:= False;          //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.ReadOnly:= False;    //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.ReadOnly:= False;     //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.ReadOnly:= False;      //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.ReadOnly:= False;        //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.ReadOnly:= False;             //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.ReadOnly:= False;      //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.ReadOnly:= False;               //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.ReadOnly:= False;         //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.ReadOnly:= False;            //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.ReadOnly:= False;               //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.ReadOnly:= False;                 //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.ReadOnly:= False;                     //5.5 Agregado en la versión 2008

    DBedtCurHabilXTotalNoIdoneos.ReadOnly:= False;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.ReadOnly:= False;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.ReadOnly:= False;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.ReadOnly:= False;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.ReadOnly:= False;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.ReadOnly:= False;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.ReadOnly:= False;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.ReadOnly:= False;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.ReadOnly:= False;        //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtNoEficTrabProxEdadJub.ReadOnly:= False;              //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.ReadOnly:= False;           //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.ReadOnly:= False;     //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.ReadOnly:= False;      //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.ReadOnly:= False;          //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.ReadOnly:= False;             //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.ReadOnly:= False;                //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.ReadOnly:= False;                  //5.7.8 Agregado en la versión 2008

    DBedtCasilla1XPendiente.ReadOnly:= False;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.ReadOnly:= False;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.ReadOnly:= False;                    //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla1XCausas.ReadOnly:= False;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.ReadOnly:= False;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.ReadOnly:= False;                      //Parte del 5.8 (tabla) Agregado en la versión 2008

    
  //Planillas Provinciales, parte 6:
	DBMemoValoracionCualitativaDelProcesoCapacCMG.ReadOnly:= False;
end;


{---------------------------------------------------------}
    //*** Refrescamiento de los DBGrids de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.RefrescarDBGridsPlanillasProvinciales;
begin
  //Refresco los DBGrids de las Planillas Provinciales
  DBGridAnnoParte1PlanillasProvinciales.Refresh;
  DBGridAnnoParte2PlanillasProvinciales.Refresh;
  DBGridAnnoParte3PlanillasProvinciales.Refresh;
  DBGridAnnoParte4PlanillasProvinciales.Refresh;
  DBGridAnnoParte5PlanillasProvinciales.Refresh;
  DBGridAnnoParte6PlanillasProvinciales.Refresh;
end;


{---------------------------------------------------------}
    //*** Deshabilitación de los DBGrids de las Planillas Provinciales ***
{---------------------------------------------------------}

//1.- Camaguey
procedure TfrmPrincipal.DeshabilitarDBGridsPlanillasProvinciales;
begin
  //Deshabilito los DBGrids de las Planillas Provinciales
  DBGridAnnoParte1PlanillasProvinciales.Enabled:= False;
  DBGridAnnoParte2PlanillasProvinciales.Enabled:= False;
  DBGridAnnoParte3PlanillasProvinciales.Enabled:= False;
  DBGridAnnoParte4PlanillasProvinciales.Enabled:= False;
  DBGridAnnoParte5PlanillasProvinciales.Enabled:= False;
  DBGridAnnoParte6PlanillasProvinciales.Enabled:= False;
end;


{---------------------------------------------------------}
    //*** Habilitación de los DBGrids de las Planillas Provinciales ***
{---------------------------------------------------------}

//1.- Camaguey
procedure TfrmPrincipal.HabilitarDBGridsPlanillasProvinciales;
begin
  //Habilito los DBGrids de las Planillas Provinciales
  DBGridAnnoParte1PlanillasProvinciales.Enabled:= True;
  DBGridAnnoParte2PlanillasProvinciales.Enabled:= True;
  DBGridAnnoParte3PlanillasProvinciales.Enabled:= True;
  DBGridAnnoParte4PlanillasProvinciales.Enabled:= True;
  DBGridAnnoParte5PlanillasProvinciales.Enabled:= True;
  DBGridAnnoParte6PlanillasProvinciales.Enabled:= True;
end;

procedure TfrmPrincipal.PonerFocusEnDBGridsPlanillasProvinciales;
begin
  if (DptoCapacitacion.ExisteConexionConLaBD)
    then
      begin
        if (   (PageControlPlanillasProvinciales.ActivePageIndex= 0) and (DBGridAnnoParte1PlanillasProvinciales.Enabled = True)   )
          then DBGridAnnoParte1PlanillasProvinciales.SetFocus;
        if (   (PageControlPlanillasProvinciales.ActivePageIndex= 1) and (DBGridAnnoParte2PlanillasProvinciales.Enabled = True)   )
          then DBGridAnnoParte2PlanillasProvinciales.SetFocus;
        if (   (PageControlPlanillasProvinciales.ActivePageIndex= 2) and (DBGridAnnoParte3PlanillasProvinciales.Enabled = True)   )
          then DBGridAnnoParte3PlanillasProvinciales.SetFocus;
        if (   (PageControlPlanillasProvinciales.ActivePageIndex= 3) and (DBGridAnnoParte4PlanillasProvinciales.Enabled = True)   )
          then DBGridAnnoParte4PlanillasProvinciales.SetFocus;
        if (   (PageControlPlanillasProvinciales.ActivePageIndex= 4) and (DBGridAnnoParte5PlanillasProvinciales.Enabled = True)   )
          then DBGridAnnoParte5PlanillasProvinciales.SetFocus;
        if (   (PageControlPlanillasProvinciales.ActivePageIndex= 5) and (DBGridAnnoParte6PlanillasProvinciales.Enabled = True)   )
          then DBGridAnnoParte6PlanillasProvinciales.SetFocus;
      end;
end;


{---------------------------------------------------------}
     //*** Ocultar Edits y Memos de las Planillas Provinciales ***
{---------------------------------------------------------}

//1.- Camaguey
procedure TfrmPrincipal.OcultarEditsYMemosPlanillasProvinciales;
begin
  //Planillas Provinciales, parte 1:
	//DateTimeAnnoCMG.Visible:= False;
	edtTotalEntOrgCMG.Visible:= False;
	edtEntOrgConPlanAnualCapCMG.Visible:= False;
	edtTotalTrabOrgCMG.Visible:= False;
	edtTotalGradAccCapCMG.Visible:= False;
	edtRelacionGradXTotalCMG.Visible:= False;{De todas se oculta}


  //Planillas Provinciales, parte 2:
	edtGradEnEmpInternasCMG.Visible:= False;
	edtGradEnInstExternasCMG.Visible:= False;
	edtDirectivosCMG.Visible:= False;
	edtTecnicosCMG.Visible:= False;
	edtAdministrativosCMG.Visible:= False;
	edtTrabServiciosCMG.Visible:= False;
	edtOperariosCMG.Visible:= False;
	edtGradEnCurHabCMG.Visible:= False;
	edtGradEnCurPerfecCMG.Visible:= False;
	edtGradenAdiestLabCMG.Visible:= False;
	edtGradEnEntPTrabCMG.Visible:= False;
	edtGradEnCurPostGradoCMG.Visible:= False;
	edtGradEnDiplomadosCMG.Visible:= False;
	edtGradEnMaestriasCMG.Visible:= False;
	edtGradEnDoctoradosCMG.Visible:= False;
	edtGradEnCurFormCompMINEDCMG.Visible:= False;
	edtGradEnCurFormCompMESCMG.Visible:= False;
	edtGradEnCurIdiomaExtCMG.Visible:= False;
	edtGradEnCurCompCMG.Visible:= False;
	edtGradEnEntrenEnExtCMG.Visible:= False;
	edtGradEnOtrasAccCMG.Visible:= False;


  //Planillas Provinciales, parte 3:
	edtInstTotalUtilEnCapacCMG.Visible:= False;
	edtInstEventUtilEnCapacCMG.Visible:= False;
	edtInstPermUtilEnCapacCMG.Visible:= False;


  //Planillas Provinciales, parte 4:
  {
	edtMaestriasXMatricCMG.Visible:= False;
	edtDiplomadosXMatricCMG.Visible:= False;
	edtCurPostgradosXMatricCMG.Visible:= False;
	edtCurIdiomasXMatricCMG.Visible:= False;
	edtCurCompXMatricCMG.Visible:= False;
	edtHabilitacionXMatricCMG.Visible:= False;
	edtPerfecXMatricCMG.Visible:= False;
	edtTallSemConfXMatricCMG.Visible:= False;
	edtTotalXMatricCMG.Visible:= False;
	edtMaestriasXGradCMG.Visible:= False;
	edtDiplomadosXGradCMG.Visible:= False;
	edtCurPostgradosXGradCMG.Visible:= False;
	edtCurIdiomasXGradCMG.Visible:= False;
	edtCurCompXGradCMG.Visible:= False;
	edtHabilitacionXGradCMG.Visible:= False;
	edtPerfecXGradCMG.Visible:= False;
	edtTallSemConfXGradCMG.Visible:= False;
	edtTotalXGradCMG.Visible:= False;}
  PanelParte4PlanillasProvinciales.Visible:= False;
	MemoValTrabDesPorEscRamalesCMG.Visible:= False;


  //Planillas Provinciales, parte 5:
	edtTotalTrabNoIdoneosCMG.Visible:= False;
	edtNoIdoneosSinCalificFormalCMG.Visible:= False;
	edtNoIdoneosSinEficienciaCMG.Visible:= False;
	edtNoIdoneosSinBConductaCMG.Visible:= False;
{
   	edtGrado6XTotalNoIdoneos.Visible:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado9XTotalNoIdoneos.Visible:= False;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado12XTotalNoIdoneos.Visible:= False;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtTecMedioXTotalNoIdoneos.Visible:= False;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtNivSupXTotalNoIdoneosCMG.Visible:= False;            //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    edtTotalNivelXTotalNoIdoneos.Visible:= False;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XMatric.Visible:= False;
   	edtGrado9XMatric.Visible:= False;
   	edtGrado12XMatric.Visible:= False;
   	edtTecMedioXMatric.Visible:= False;
   	edtNivSupXMatric.Visible:= False;
    edtTotalNivelXMatric.Visible:= False;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XNoMatric.Visible:= False;
   	edtGrado9XNoMatric.Visible:= False;
   	edtGrado12XNoMatric.Visible:= False;
   	edtTecMedioXNoMatric.Visible:= False;
   	edtNivSupXNoMatric.Visible:= False;
    edtTotalNivelXNoMatric.Visible:= False;                 //Parte del 5.3 (tabla) Agregado en la versión 2008
}
    PanelParte5_3PlanillasProvinciales.Visible:= False;

    edtNoFormalTrabProxEdadJub.Visible:= False;              //5.4.1 Agregado en la versión 2008
    edtNoFormalTrabProblemasSalud.Visible:= False;           //5.4.2 Agregado en la versión 2008
    edtNoFormalLicEnfermedadYMaternidad.Visible:= False;     //5.4.3 Agregado en la versión 2008
    edtNoFormalTrabProblemasFamiliares.Visible:= False;      //5.4.4 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMINED.Visible:= False;       //5.4.5 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMES.Visible:= False;         //5.4.6 Agregado en la versión 2008
    edtNoFormalLimMatricNivSup.Visible:= False;              //5.4.7 Agregado en la versión 2008
    edtNoFormalImposibEntidAbrirAulas.Visible:= False;       //5.4.8 Agregado en la versión 2008
    edtNoFormalTrabNoAcredit.Visible:= False;                //5.4.9 Agregado en la versión 2008
    edtNoFormalTrabTurnosRotativos.Visible:= False;          //5.4.10 Agregado en la versión 2008
    edtNoFormalTrabNieganIncorp.Visible:= False;             //5.4.11 Agregado en la versión 2008
    edtNoFormalMovilConstruc.Visible:= False;                //5.4.12 Agregado en la versión 2008
    edtNoFormalOtrasCausas.Visible:= False;                  //5.4.13 Agregado en la versión 2008

    MemoExplicNoMatric.Visible:= False;             //5.5 Agregado en la versión 2008
{
    edtCurHabilXTotalNoIdoneos.Visible:= False;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXTotalNoIdoneos.Visible:= False;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    edtTotalNoIdoneosXTotalNoIdoneos.Visible:= False;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXMatric.Visible:= False;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXMatric.Visible:= False;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXMatric.Visible:= False;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXNoMatric.Visible:= False;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXNoMatric.Visible:= False;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXNoMatric.Visible:= False;        //Parte del 5.6 (tabla) Agregado en la versión 2008
}
    PanelParte5_6PlanillasProvinciales.Visible:= False;

    edtNoEficTrabProxEdadJub.Visible:= False;              //5.7.1 Agregado en la versión 2008
    edtNoEficTrabProblemasSalud.Visible:= False;           //5.7.2 Agregado en la versión 2008
    edtNoEficLicEnfermedadYMaternidad.Visible:= False;     //5.7.3 Agregado en la versión 2008
    edtNoEficTrabProblemasFamiliares.Visible:= False;      //5.7.4 Agregado en la versión 2008
    edtNoEficTrabTurnosRotativos.Visible:= False;          //5.7.5 Agregado en la versión 2008
    edtNoEficTrabNieganIncorp.Visible:= False;             //5.7.6 Agregado en la versión 2008
    edtNoEficMovilConstruc.Visible:= False;                //5.7.7 Agregado en la versión 2008
    edtNoEficOtrasCausas.Visible:= False;                  //5.7.8 Agregado en la versión 2008
{
    edtCasilla1XPendiente.Visible:= False;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtCasilla2XPendiente.Visible:= False;                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtTotalXPendiente.Visible:= False;                    //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla1XCausas.Visible:= False;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla2XCausas.Visible:= False;                   //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoTotalXCausas.Visible:= False;                      //Parte del 5.8 (tabla) Agregado en la versión 2008
}
    PanelParte5_8PlanillasProvinciales.Visible:= False;
    
  //Planillas Provinciales, parte 6:
	MemoValoracionCualitativaDelProcesoCapacCMG.Visible:= False;
end;


{---------------------------------------------------------}
     //*** Mostrar Edits y Memos de las Planillas Provinciales ***
{---------------------------------------------------------}

//1.- Camaguey
procedure TfrmPrincipal.MostrarEditsYMemosPlanillasProvinciales;
begin
 //Planillas Provinciales, parte 1:
	//DateTimeAnnoCMG.Visible:= True;
	edtTotalEntOrgCMG.Visible:= True;
	edtEntOrgConPlanAnualCapCMG.Visible:= True;
	edtTotalTrabOrgCMG.Visible:= True;
	edtTotalGradAccCapCMG.Visible:= True;
	edtRelacionGradXTotalCMG.Visible:= True;{De todas formas se muestra}


  //Planillas Provinciales, parte 2:
	edtGradEnEmpInternasCMG.Visible:= True;
	edtGradEnInstExternasCMG.Visible:= True;
	edtDirectivosCMG.Visible:= True;
	edtTecnicosCMG.Visible:= True;
	edtAdministrativosCMG.Visible:= True;
	edtTrabServiciosCMG.Visible:= True;
	edtOperariosCMG.Visible:= True;
	edtGradEnCurHabCMG.Visible:= True;
	edtGradEnCurPerfecCMG.Visible:= True;
	edtGradenAdiestLabCMG.Visible:= True;
	edtGradEnEntPTrabCMG.Visible:= True;
	edtGradEnCurPostGradoCMG.Visible:= True;
	edtGradEnDiplomadosCMG.Visible:= True;
	edtGradEnMaestriasCMG.Visible:= True;
	edtGradEnDoctoradosCMG.Visible:= True;
	edtGradEnCurFormCompMINEDCMG.Visible:= True;
	edtGradEnCurFormCompMESCMG.Visible:= True;
	edtGradEnCurIdiomaExtCMG.Visible:= True;
	edtGradEnCurCompCMG.Visible:= True;
	edtGradEnEntrenEnExtCMG.Visible:= True;
	edtGradEnOtrasAccCMG.Visible:= True;


  //Planillas Provinciales, parte 3:
	edtInstTotalUtilEnCapacCMG.Visible:= True;
	edtInstEventUtilEnCapacCMG.Visible:= True;
	edtInstPermUtilEnCapacCMG.Visible:= True;


  //Planillas Provinciales, parte 4:
  {
	edtMaestriasXMatricCMG.Visible:= True;
	edtDiplomadosXMatricCMG.Visible:= True;
	edtCurPostgradosXMatricCMG.Visible:= True;
	edtCurIdiomasXMatricCMG.Visible:= True;
	edtCurCompXMatricCMG.Visible:= True;
	edtHabilitacionXMatricCMG.Visible:= True;
	edtPerfecXMatricCMG.Visible:= True;
	edtTallSemConfXMatricCMG.Visible:= True;
	edtTotalXMatricCMG.Visible:= True;
	edtMaestriasXGradCMG.Visible:= True;
	edtDiplomadosXGradCMG.Visible:= True;
	edtCurPostgradosXGradCMG.Visible:= True;
	edtCurIdiomasXGradCMG.Visible:= True;
	edtCurCompXGradCMG.Visible:= True;
	edtHabilitacionXGradCMG.Visible:= True;
	edtPerfecXGradCMG.Visible:= True;
	edtTallSemConfXGradCMG.Visible:= True;
	edtTotalXGradCMG.Visible:= True;}
  PanelParte4PlanillasProvinciales.Visible:= True;
	MemoValTrabDesPorEscRamalesCMG.Visible:= True;


  //Planillas Provinciales, parte 5:
	edtTotalTrabNoIdoneosCMG.Visible:= True;
	edtNoIdoneosSinCalificFormalCMG.Visible:= True;
	edtNoIdoneosSinEficienciaCMG.Visible:= True;
	edtNoIdoneosSinBConductaCMG.Visible:= True;
{
   	edtGrado6XTotalNoIdoneos.Visible:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado9XTotalNoIdoneos.Visible:= True;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado12XTotalNoIdoneos.Visible:= True;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtTecMedioXTotalNoIdoneos.Visible:= True;             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtNivSupXTotalNoIdoneosCMG.Visible:= True;            //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    edtTotalNivelXTotalNoIdoneos.Visible:= True;           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XMatric.Visible:= True;
   	edtGrado9XMatric.Visible:= True;
   	edtGrado12XMatric.Visible:= True;
   	edtTecMedioXMatric.Visible:= True;
   	edtNivSupXMatric.Visible:= True;
    edtTotalNivelXMatric.Visible:= True;                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XNoMatric.Visible:= True;
   	edtGrado9XNoMatric.Visible:= True;
   	edtGrado12XNoMatric.Visible:= True;
   	edtTecMedioXNoMatric.Visible:= True;
   	edtNivSupXNoMatric.Visible:= True;
    edtTotalNivelXNoMatric.Visible:= True;                 //Parte del 5.3 (tabla) Agregado en la versión 2008
}
    PanelParte5_3PlanillasProvinciales.Visible:= True;

    edtNoFormalTrabProxEdadJub.Visible:= True;               //5.4.1 Agregado en la versión 2008
    edtNoFormalTrabProblemasSalud.Visible:= True;            //5.4.2 Agregado en la versión 2008
    edtNoFormalLicEnfermedadYMaternidad.Visible:= True;      //5.4.3 Agregado en la versión 2008
    edtNoFormalTrabProblemasFamiliares.Visible:= True;       //5.4.4 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMINED.Visible:= True;        //5.4.5 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMES.Visible:= True;          //5.4.6 Agregado en la versión 2008
    edtNoFormalLimMatricNivSup.Visible:= True;               //5.4.7 Agregado en la versión 2008
    edtNoFormalImposibEntidAbrirAulas.Visible:= True;        //5.4.8 Agregado en la versión 2008
    edtNoFormalTrabNoAcredit.Visible:= True;                 //5.4.9 Agregado en la versión 2008
    edtNoFormalTrabTurnosRotativos.Visible:= True;           //5.4.10 Agregado en la versión 2008
    edtNoFormalTrabNieganIncorp.Visible:= True;              //5.4.11 Agregado en la versión 2008
    edtNoFormalMovilConstruc.Visible:= True;                 //5.4.12 Agregado en la versión 2008
    edtNoFormalOtrasCausas.Visible:= True;                   //5.4.13 Agregado en la versión 2008

    MemoExplicNoMatric.Visible:= True;                //5.5 Agregado en la versión 2008
{
    edtCurHabilXTotalNoIdoneos.Visible:= True;        //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXTotalNoIdoneos.Visible:= True;   //Parte del 5.6 (tabla) Agregado en la versión 2008
    edtTotalNoIdoneosXTotalNoIdoneos.Visible:= True;  //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXMatric.Visible:= True;                //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXMatric.Visible:= True;           //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXMatric.Visible:= True;          //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXNoMatric.Visible:= True;              //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXNoMatric.Visible:= True;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXNoMatric.Visible:= True;        //Parte del 5.6 (tabla) Agregado en la versión 2008
}
    PanelParte5_6PlanillasProvinciales.Visible:= True;

    edtNoEficTrabProxEdadJub.Visible:= True;              //5.7.1 Agregado en la versión 2008
    edtNoEficTrabProblemasSalud.Visible:= True;           //5.7.2 Agregado en la versión 2008
    edtNoEficLicEnfermedadYMaternidad.Visible:= True;     //5.7.3 Agregado en la versión 2008
    edtNoEficTrabProblemasFamiliares.Visible:= True;      //5.7.4 Agregado en la versión 2008
    edtNoEficTrabTurnosRotativos.Visible:= True;          //5.7.5 Agregado en la versión 2008
    edtNoEficTrabNieganIncorp.Visible:= True;             //5.7.6 Agregado en la versión 2008
    edtNoEficMovilConstruc.Visible:= True;                //5.7.7 Agregado en la versión 2008
    edtNoEficOtrasCausas.Visible:= True;                  //5.7.8 Agregado en la versión 2008
{
    edtCasilla1XPendiente.Visible:= True;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtCasilla2XPendiente.Visible:= True;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtTotalXPendiente.Visible:= True;                             //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla1XCausas.Visible:= True;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla2XCausas.Visible:= True;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoTotalXCausas.Visible:= True;                               //Parte del 5.8 (tabla) Agregado en la versión 2008
}
    PanelParte5_8PlanillasProvinciales.Visible:= True;


  //Planillas Provinciales, parte 6:
	MemoValoracionCualitativaDelProcesoCapacCMG.Visible:= True;
end;


{---------------------------------------------------------}
     //*** Limpiar Edits y Memos de las Planillas Provinciales ***
{---------------------------------------------------------}
procedure TfrmPrincipal.LimpiarEditsYMemosPlanillasProvinciales;
begin
 //Planillas Provinciales, parte 1:
	//DateTimeAnnoCMG.Clear;
	edtTotalEntOrgCMG.Clear;
	edtEntOrgConPlanAnualCapCMG.Clear;
	edtTotalTrabOrgCMG.Clear;
	edtTotalGradAccCapCMG.Clear;
	edtRelacionGradXTotalCMG.Clear;{De todas formas debe limpiarse}


  //Planillas Provinciales, parte 2:
	edtGradEnEmpInternasCMG.Clear;
	edtGradEnInstExternasCMG.Clear;
	edtDirectivosCMG.Clear;
	edtTecnicosCMG.Clear;
	edtAdministrativosCMG.Clear;
	edtTrabServiciosCMG.Clear;
	edtOperariosCMG.Clear;
	edtGradEnCurHabCMG.Clear;
	edtGradEnCurPerfecCMG.Clear;
	edtGradenAdiestLabCMG.Clear;
	edtGradEnEntPTrabCMG.Clear;
	edtGradEnCurPostGradoCMG.Clear;
	edtGradEnDiplomadosCMG.Clear;
	edtGradEnMaestriasCMG.Clear;
	edtGradEnDoctoradosCMG.Clear;
	edtGradEnCurFormCompMINEDCMG.Clear;
	edtGradEnCurFormCompMESCMG.Clear;
	edtGradEnCurIdiomaExtCMG.Clear;
	edtGradEnCurCompCMG.Clear;
	edtGradEnEntrenEnExtCMG.Clear;
	edtGradEnOtrasAccCMG.Clear;


  //Planillas Provinciales, parte 3:
	edtInstTotalUtilEnCapacCMG.Clear;
	edtInstEventUtilEnCapacCMG.Clear;
	edtInstPermUtilEnCapacCMG.Clear;


  //Planillas Provinciales, parte 4:
	edtMaestriasXMatricCMG.Clear;
	edtDiplomadosXMatricCMG.Clear;
	edtCurPostgradosXMatricCMG.Clear;
	edtCurIdiomasXMatricCMG.Clear;
	edtCurCompXMatricCMG.Clear;
	edtHabilitacionXMatricCMG.Clear;
	edtPerfecXMatricCMG.Clear;
	edtTallSemConfXMatricCMG.Clear;
	edtTotalXMatricCMG.Clear;
	edtMaestriasXGradCMG.Clear;
	edtDiplomadosXGradCMG.Clear;
	edtCurPostgradosXGradCMG.Clear;
	edtCurIdiomasXGradCMG.Clear;
	edtCurCompXGradCMG.Clear;
	edtHabilitacionXGradCMG.Clear;
	edtPerfecXGradCMG.Clear;
	edtTallSemConfXGradCMG.Clear;
	edtTotalXGradCMG.Clear;
	MemoValTrabDesPorEscRamalesCMG.Clear;

  //Planillas Provinciales, parte 5:
	edtTotalTrabNoIdoneosCMG.Clear;
	edtNoIdoneosSinCalificFormalCMG.Clear;
	edtNoIdoneosSinEficienciaCMG.Clear;
	edtNoIdoneosSinBConductaCMG.Clear;

   	edtGrado6XTotalNoIdoneos.Clear;                //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado9XTotalNoIdoneos.Clear;                //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado12XTotalNoIdoneos.Clear;               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtTecMedioXTotalNoIdoneos.Clear;              //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtNivSupXTotalNoIdoneos.Clear;                //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    edtTotalNivelXTotalNoIdoneos.Clear;            //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XMatric.Clear; 
   	edtGrado9XMatric.Clear;
   	edtGrado12XMatric.Clear;
   	edtTecMedioXMatric.Clear;
    edtNivSupXMatric.Clear;

    edtTotalNivelXMatric.Clear;                    //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XNoMatric.Clear;
   	edtGrado9XNoMatric.Clear;
   	edtGrado12XNoMatric.Clear;
   	edtTecMedioXNoMatric.Clear;
   	edtNivSupXNoMatric.Clear;

    edtTotalNivelXNoMatric.Clear;                  //Parte del 5.3 (tabla) Agregado en la versión 2008

    edtNoFormalTrabProxEdadJub.Clear;                //5.4.1 Agregado en la versión 2008
    edtNoFormalTrabProblemasSalud.Clear;             //5.4.2 Agregado en la versión 2008
    edtNoFormalLicEnfermedadYMaternidad.Clear;       //5.4.3 Agregado en la versión 2008
    edtNoFormalTrabProblemasFamiliares.Clear;        //5.4.4 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMINED.Clear;         //5.4.5 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMES.Clear;           //5.4.6 Agregado en la versión 2008
    edtNoFormalLimMatricNivSup.Clear;                //5.4.7 Agregado en la versión 2008
    edtNoFormalImposibEntidAbrirAulas.Clear;         //5.4.8 Agregado en la versión 2008
    edtNoFormalTrabNoAcredit.Clear;                  //5.4.9 Agregado en la versión 2008
    edtNoFormalTrabTurnosRotativos.Clear;            //5.4.10 Agregado en la versión 2008
    edtNoFormalTrabNieganIncorp.Clear;               //5.4.11 Agregado en la versión 2008
    edtNoFormalMovilConstruc.Clear;                  //5.4.12 Agregado en la versión 2008
    edtNoFormalOtrasCausas.Clear;                    //5.4.13 Agregado en la versión 2008

    MemoExplicNoMatric.Clear;                 //5.5 Agregado en la versión 2008

    edtCurHabilXTotalNoIdoneos.Clear;         //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXTotalNoIdoneos.Clear;    //Parte del 5.6 (tabla) Agregado en la versión 2008
    edtTotalNoIdoneosXTotalNoIdoneos.Clear;   //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXMatric.Clear;                 //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXMatric.Clear;            //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXMatric.Clear;           //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXNoMatric.Clear;               //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXNoMatric.Clear;          //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXNoMatric.Clear;         //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtNoEficTrabProxEdadJub.Clear;               //5.7.1 Agregado en la versión 2008
    edtNoEficTrabProblemasSalud.Clear;            //5.7.2 Agregado en la versión 2008
    edtNoEficLicEnfermedadYMaternidad.Clear;      //5.7.3 Agregado en la versión 2008
    edtNoEficTrabProblemasFamiliares.Clear;       //5.7.4 Agregado en la versión 2008
    edtNoEficTrabTurnosRotativos.Clear;           //5.7.5 Agregado en la versión 2008
    edtNoEficTrabNieganIncorp.Clear;              //5.7.6 Agregado en la versión 2008
    edtNoEficMovilConstruc.Clear;                 //5.7.7 Agregado en la versión 2008
    edtNoEficOtrasCausas.Clear;                   //5.7.8 Agregado en la versión 2008

    edtCasilla1XPendiente.Clear;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtCasilla2XPendiente.Clear;                          //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtTotalXPendiente.Clear;                             //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla1XCausas.Clear;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla2XCausas.Clear;                            //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoTotalXCausas.Clear;                               //Parte del 5.8 (tabla) Agregado en la versión 2008

  //Planillas Provinciales, parte 6:
	MemoValoracionCualitativaDelProcesoCapacCMG.Clear;
end;


{-------------------------------------------------------------------------}
    //*** Comprobación del llenado en Edits y Memos de las Planillas Provinciales ***
{-------------------------------------------------------------------------}

function TfrmPrincipal.LosEditsYMemosEstanLlenosPlanillasProvinciales: Boolean;
begin
  if  //parte 1 de las Planillas Provinciales
     ((edtTotalEntOrgCMG.Text<>'') and (edtEntOrgConPlanAnualCapCMG.Text<>'') and (edtTotalTrabOrgCMG.Text<>'') and (edtTotalGradAccCapCMG.Text<>'') and (edtRelacionGradXTotalCMG.Text<>'')

      //parte 2 de las Planillas Provinciales
      and (edtGradEnEmpInternasCMG.Text<>'') and (edtGradEnInstExternasCMG.Text<>'') and (edtDirectivosCMG.Text<>'') and (edtTecnicosCMG.Text<>'') and (edtAdministrativosCMG.Text<>'') and (edtTrabServiciosCMG.Text<>'') and (edtOperariosCMG.Text<>'') and (edtGradEnCurHabCMG.Text<>'') and (edtGradEnCurPerfecCMG.Text<>'') and (edtGradenAdiestLabCMG.Text<>'') and (edtGradEnEntPTrabCMG.Text<>'') and (edtGradEnCurPostGradoCMG.Text<>'') and (edtGradEnDiplomadosCMG.Text<>'') and (edtGradEnMaestriasCMG.Text<>'') and (edtGradEnDoctoradosCMG.Text<>'') and (edtGradEnCurFormCompMINEDCMG.Text<>'') and (edtGradEnCurFormCompMESCMG.Text<>'') and (edtGradEnCurIdiomaExtCMG.Text<>'') and (edtGradEnCurCompCMG.Text<>'') and (edtGradEnEntrenEnExtCMG.Text<>'') and (edtGradEnOtrasAccCMG.Text<>'')

      //parte 3 de las Planillas Provinciales
      and (edtInstTotalUtilEnCapacCMG.Text<>'') and (edtInstEventUtilEnCapacCMG.Text<>'') and (edtInstPermUtilEnCapacCMG.Text<>'')

      //parte 4 de las Planillas Provinciales
      and (edtMaestriasXMatricCMG.Text<>'') and (edtDiplomadosXMatricCMG.Text<>'') and (edtCurPostgradosXMatricCMG.Text<>'') and (edtCurIdiomasXMatricCMG.Text<>'') and (edtCurCompXMatricCMG.Text<>'') and (edtHabilitacionXMatricCMG.Text<>'') and (edtPerfecXMatricCMG.Text<>'') and (edtTallSemConfXMatricCMG.Text<>'') and (edtTotalXMatricCMG.Text<>'') and (edtMaestriasXGradCMG.Text<>'') and (edtDiplomadosXGradCMG.Text<>'') and (edtCurPostgradosXMatricCMG.Text<>'') and (edtCurIdiomasXGradCMG.Text<>'') and (edtCurCompXGradCMG.Text<>'') and (edtHabilitacionXGradCMG.Text<>'') and (edtPerfecXGradCMG.Text<>'') and (edtTallSemConfXGradCMG.Text<>'') and (edtTotalXGradCMG.Text<>'') and (MemoValTrabDesPorEscRamalesCMG.Text<>'')

      //sección 5_1 de las Planillas Provinciales
      and (edtTotalTrabNoIdoneosCMG.Text<>'')
      //sección 5_2 de las Planillas Provinciales
      and (edtNoIdoneosSinCalificFormalCMG.Text<>'') and (edtNoIdoneosSinEficienciaCMG.Text<>'') and (edtNoIdoneosSinBConductaCMG.Text<>'')
      //sección 5_3 de las Planillas Provinciales
      and (edtGrado6XTotalNoIdoneos.Text<>'') and (edtGrado9XTotalNoIdoneos.Text<>'') and (edtGrado12XTotalNoIdoneos.Text<>'') and (edtTecMedioXTotalNoIdoneos.Text<>'') and (edtNivSupXTotalNoIdoneos.Text<>'') and (edtTotalNivelXTotalNoIdoneos.Text<>'') and (edtGrado6XMatric.Text<>'') and (edtGrado9XMatric.Text<>'') and (edtGrado12XMatric.Text<>'') and (edtTecMedioXMatric.Text<>'') and (edtNivSupXMatric.Text<>'') and (edtTotalNivelXMatric.Text<>'') and (edtGrado6XNoMatric.Text<>'') and (edtGrado9XNoMatric.Text<>'') and (edtGrado12XNoMatric.Text<>'') and (edtTecMedioXNoMatric.Text<>'') and (edtNivSupXNoMatric.Text<>'') and (edtTotalNivelXNoMatric.Text<>'')
      //sección 5_4 de las Planillas Provinciales
      and (edtNoFormalTrabProxEdadJub.Text<>'') and (edtNoFormalTrabProblemasSalud.Text<>'') and (edtNoFormalLicEnfermedadYMaternidad.Text<>'') and (edtNoFormalTrabProblemasFamiliares.Text<>'') and (edtNoFormalNoDisponibMatricXMINED.Text<>'') and (edtNoFormalNoDisponibMatricXMES.Text<>'') and (edtNoFormalLimMatricNivSup.Text<>'') and (edtNoFormalImposibEntidAbrirAulas.Text<>'') and (edtNoFormalTrabNoAcredit.Text<>'') and (edtNoFormalTrabTurnosRotativos.Text<>'') and (edtNoFormalTrabNieganIncorp.Text<>'') and (edtNoFormalMovilConstruc.Text<>'') and (edtNoFormalOtrasCausas.Text<>'')
      //sección 5_5 de las Planillas Provinciales
      and (MemoExplicNoMatric.Text<>'')
      //sección 5_6 de las Planillas Provinciales
      and (edtCurHabilXTotalNoIdoneos.Text<>'') and (edtEntrenamientoXTotalNoIdoneos.Text<>'') and (edtTotalNoIdoneosXTotalNoIdoneos.Text<>'') and (edtCurHabilXMatric.Text<>'') and (edtEntrenamientoXMatric.Text<>'') and (edtTotalNoIdoneosXMatric.Text<>'') and (edtCurHabilXNoMatric.Text<>'') and (edtEntrenamientoXNoMatric.Text<>'') and (edtTotalNoIdoneosXNoMatric.Text<>'')
      //sección 5_7 de las Planillas Provinciales
      and (edtNoEficTrabProxEdadJub.Text<>'') and (edtNoEficTrabProblemasSalud.Text<>'') and (edtNoEficLicEnfermedadYMaternidad.Text<>'') and (edtNoEficTrabProblemasFamiliares.Text<>'') and (edtNoEficTrabTurnosRotativos.Text<>'') and (edtNoEficTrabNieganIncorp.Text<>'') and (edtNoEficMovilConstruc.Text<>'') and (edtNoEficOtrasCausas.Text<>'')
      //sección 5_8 de las Planillas Provinciales
      and (edtCasilla1XPendiente.Text<>'') and (edtCasilla2XPendiente.Text<>'') and (edtTotalXPendiente.Text<>'') and (MemoCasilla1XCausas.Text<>'') and (MemoCasilla2XCausas.Text<>'') and (MemoTotalXCausas.Text<>'')

      //parte 6 de las Planillas Provinciales
      and (MemoValoracionCualitativaDelProcesoCapacCMG.Text<>'') )
      then
        begin
          Result:= True;
        end
          else
            begin
              Result:= False;
            end;
end;

function TfrmPrincipal.LosEditsEstanLlenosPlanillasProvinciales: Boolean;
begin
  if  //parte 1 de las Planillas Provinciales
     ((edtTotalEntOrgCMG.Text<>'') and (edtEntOrgConPlanAnualCapCMG.Text<>'') and (edtTotalTrabOrgCMG.Text<>'') and (edtTotalGradAccCapCMG.Text<>'') and (edtRelacionGradXTotalCMG.Text<>'')

      //parte 2 de las Planillas Provinciales
      and (edtGradEnEmpInternasCMG.Text<>'') and (edtGradEnInstExternasCMG.Text<>'') and (edtDirectivosCMG.Text<>'') and (edtTecnicosCMG.Text<>'') and (edtAdministrativosCMG.Text<>'') and (edtTrabServiciosCMG.Text<>'') and (edtOperariosCMG.Text<>'') and (edtGradEnCurHabCMG.Text<>'') and (edtGradEnCurPerfecCMG.Text<>'') and (edtGradenAdiestLabCMG.Text<>'') and (edtGradEnEntPTrabCMG.Text<>'') and (edtGradEnCurPostGradoCMG.Text<>'') and (edtGradEnDiplomadosCMG.Text<>'') and (edtGradEnMaestriasCMG.Text<>'') and (edtGradEnDoctoradosCMG.Text<>'') and (edtGradEnCurFormCompMINEDCMG.Text<>'') and (edtGradEnCurFormCompMESCMG.Text<>'') and (edtGradEnCurIdiomaExtCMG.Text<>'') and (edtGradEnCurCompCMG.Text<>'') and (edtGradEnEntrenEnExtCMG.Text<>'') and (edtGradEnOtrasAccCMG.Text<>'')

      //parte 3 de las Planillas Provinciales
      and (edtInstTotalUtilEnCapacCMG.Text<>'') and (edtInstEventUtilEnCapacCMG.Text<>'') and (edtInstPermUtilEnCapacCMG.Text<>'')

      //parte 4 de las Planillas Provinciales
      and (edtMaestriasXMatricCMG.Text<>'') and (edtDiplomadosXMatricCMG.Text<>'') and (edtCurPostgradosXMatricCMG.Text<>'') and (edtCurIdiomasXMatricCMG.Text<>'') and (edtCurCompXMatricCMG.Text<>'') and (edtHabilitacionXMatricCMG.Text<>'') and (edtPerfecXMatricCMG.Text<>'') and (edtTallSemConfXMatricCMG.Text<>'') and (edtTotalXMatricCMG.Text<>'') and (edtMaestriasXGradCMG.Text<>'') and (edtDiplomadosXGradCMG.Text<>'') and (edtCurPostgradosXMatricCMG.Text<>'') and (edtCurIdiomasXGradCMG.Text<>'') and (edtCurCompXGradCMG.Text<>'') and (edtHabilitacionXGradCMG.Text<>'') and (edtPerfecXGradCMG.Text<>'') and (edtTallSemConfXGradCMG.Text<>'') and (edtTotalXGradCMG.Text<>'')

      //sección 5_1 de las Planillas Provinciales
      and (edtTotalTrabNoIdoneosCMG.Text<>'')
      //sección 5_2 de las Planillas Provinciales
      and (edtNoIdoneosSinCalificFormalCMG.Text<>'') and (edtNoIdoneosSinEficienciaCMG.Text<>'') and (edtNoIdoneosSinBConductaCMG.Text<>'')
      //sección 5_3 de las Planillas Provinciales
      and (edtGrado6XTotalNoIdoneos.Text<>'') and (edtGrado9XTotalNoIdoneos.Text<>'') and (edtGrado12XTotalNoIdoneos.Text<>'') and (edtTecMedioXTotalNoIdoneos.Text<>'') and (edtNivSupXTotalNoIdoneos.Text<>'') and (edtTotalNivelXTotalNoIdoneos.Text<>'') and (edtGrado6XMatric.Text<>'') and (edtGrado9XMatric.Text<>'') and (edtGrado12XMatric.Text<>'') and (edtTecMedioXMatric.Text<>'') and (edtNivSupXMatric.Text<>'') and (edtTotalNivelXMatric.Text<>'') and (edtGrado6XNoMatric.Text<>'') and (edtGrado9XNoMatric.Text<>'') and (edtGrado12XNoMatric.Text<>'') and (edtTecMedioXNoMatric.Text<>'') and (edtNivSupXNoMatric.Text<>'') and (edtTotalNivelXNoMatric.Text<>'')
      //sección 5_4 de las Planillas Provinciales
      and (edtNoFormalTrabProxEdadJub.Text<>'') and (edtNoFormalTrabProblemasSalud.Text<>'') and (edtNoFormalLicEnfermedadYMaternidad.Text<>'') and (edtNoFormalTrabProblemasFamiliares.Text<>'') and (edtNoFormalNoDisponibMatricXMINED.Text<>'') and (edtNoFormalNoDisponibMatricXMES.Text<>'') and (edtNoFormalLimMatricNivSup.Text<>'') and (edtNoFormalImposibEntidAbrirAulas.Text<>'') and (edtNoFormalTrabNoAcredit.Text<>'') and (edtNoFormalTrabTurnosRotativos.Text<>'') and (edtNoFormalTrabNieganIncorp.Text<>'') and (edtNoFormalMovilConstruc.Text<>'') and (edtNoFormalOtrasCausas.Text<>'')
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      and (edtCurHabilXTotalNoIdoneos.Text<>'') and (edtEntrenamientoXTotalNoIdoneos.Text<>'') and (edtTotalNoIdoneosXTotalNoIdoneos.Text<>'') and (edtCurHabilXMatric.Text<>'') and (edtEntrenamientoXMatric.Text<>'') and (edtTotalNoIdoneosXMatric.Text<>'') and (edtCurHabilXNoMatric.Text<>'') and (edtEntrenamientoXNoMatric.Text<>'') and (edtTotalNoIdoneosXNoMatric.Text<>'')
      //sección 5_7 de las Planillas Provinciales
      and (edtNoEficTrabProxEdadJub.Text<>'') and (edtNoEficTrabProblemasSalud.Text<>'') and (edtNoEficLicEnfermedadYMaternidad.Text<>'') and (edtNoEficTrabProblemasFamiliares.Text<>'') and (edtNoEficTrabTurnosRotativos.Text<>'') and (edtNoEficTrabNieganIncorp.Text<>'') and (edtNoEficMovilConstruc.Text<>'') and (edtNoEficOtrasCausas.Text<>'')
      //sección 5_8 de las Planillas Provinciales
      and (edtCasilla1XPendiente.Text<>'') and (edtCasilla2XPendiente.Text<>'') and (edtTotalXPendiente.Text<>'')   )
     
      //parte 6 de las Planillas Provinciales
      //No hay ningún Edit allí
      then
        begin
          Result:= True;
        end
          else
            begin
              Result:= False;
            end;
end;

//Especifico en cuáles Edits de las Planillas Provinciales faltan valores numéricos
procedure TfrmPrincipal.DetallarEditsNumerosFaltantesPlanillasProvinciales;
var
  Seccion1, Seccion2, Seccion3, Seccion4, Seccion5: string;
begin
  //** Lleno las variables para localizar la procedencia de la ausencia de datos numéricos
  if  //parte 1 de las Planillas Provinciales
     (  (edtTotalEntOrgCMG.Text= '') or (edtEntOrgConPlanAnualCapCMG.Text= '') or (edtTotalTrabOrgCMG.Text= '') or (edtTotalGradAccCapCMG.Text= '') or (edtRelacionGradXTotalCMG.Text= '')  )
      then Seccion1:= '1,  '
        else Seccion1:= '';

  if  //parte 2 de las Planillas Provinciales
      (  (edtGradEnEmpInternasCMG.Text= '') or (edtGradEnInstExternasCMG.Text= '') or (edtDirectivosCMG.Text= '') or (edtTecnicosCMG.Text= '') or (edtAdministrativosCMG.Text= '') or (edtTrabServiciosCMG.Text= '') or (edtOperariosCMG.Text= '') or (edtGradEnCurHabCMG.Text= '') or (edtGradEnCurPerfecCMG.Text= '') or (edtGradenAdiestLabCMG.Text= '') or (edtGradEnEntPTrabCMG.Text= '') or (edtGradEnCurPostGradoCMG.Text= '') or (edtGradEnDiplomadosCMG.Text= '') or (edtGradEnMaestriasCMG.Text= '') or (edtGradEnDoctoradosCMG.Text= '') or (edtGradEnCurFormCompMINEDCMG.Text= '') or (edtGradEnCurFormCompMESCMG.Text= '') or (edtGradEnCurIdiomaExtCMG.Text= '') or (edtGradEnCurCompCMG.Text= '') or (edtGradEnEntrenEnExtCMG.Text= '') or (edtGradEnOtrasAccCMG.Text= '')  )
      then Seccion2:= '2,  '
        else Seccion2:= '';


  if  //parte 3 de las Planillas Provinciales
      (  (edtInstTotalUtilEnCapacCMG.Text= '') or (edtInstEventUtilEnCapacCMG.Text= '') or (edtInstPermUtilEnCapacCMG.Text= '')  )
      then Seccion3:= '3,  '
        else Seccion3:= '';

  if  //parte 4 de las Planillas Provinciales
      (  (edtMaestriasXMatricCMG.Text= '') or (edtDiplomadosXMatricCMG.Text= '') or (edtCurPostgradosXMatricCMG.Text= '') or (edtCurIdiomasXMatricCMG.Text= '') or (edtCurCompXMatricCMG.Text= '') or (edtHabilitacionXMatricCMG.Text= '') or (edtPerfecXMatricCMG.Text= '') or (edtTallSemConfXMatricCMG.Text= '') or (edtTotalXMatricCMG.Text= '') or (edtMaestriasXGradCMG.Text= '') or (edtDiplomadosXGradCMG.Text= '') or (edtCurPostgradosXMatricCMG.Text= '') or (edtCurIdiomasXGradCMG.Text= '') or (edtCurCompXGradCMG.Text= '') or (edtHabilitacionXGradCMG.Text= '') or (edtPerfecXGradCMG.Text= '') or (edtTallSemConfXGradCMG.Text= '') or (edtTotalXGradCMG.Text= '')  )
      then  Seccion4:= '4,  '
        else Seccion4:= '';

  if  //parte 5 de las Planillas Provinciales
      //sección 5_1 de las Planillas Provinciales
      (   (edtTotalTrabNoIdoneosCMG.Text= '')
      //sección 5_2 de las Planillas Provinciales
      or (edtNoIdoneosSinCalificFormalCMG.Text= '') or (edtNoIdoneosSinEficienciaCMG.Text= '') or (edtNoIdoneosSinBConductaCMG.Text= '')
      //sección 5_3 de las Planillas Provinciales
      or (edtGrado6XTotalNoIdoneos.Text= '') or (edtGrado9XTotalNoIdoneos.Text= '') or (edtGrado12XTotalNoIdoneos.Text= '') or (edtTecMedioXTotalNoIdoneos.Text= '') or (edtNivSupXTotalNoIdoneos.Text= '') or (edtTotalNivelXTotalNoIdoneos.Text= '') or (edtGrado6XMatric.Text= '') or (edtGrado9XMatric.Text= '') or (edtGrado12XMatric.Text= '') or (edtTecMedioXMatric.Text= '') or (edtNivSupXMatric.Text= '') or (edtTotalNivelXMatric.Text= '') or (edtGrado6XNoMatric.Text= '') or (edtGrado9XNoMatric.Text= '') or (edtGrado12XNoMatric.Text= '') or (edtTecMedioXNoMatric.Text= '') or (edtNivSupXNoMatric.Text= '') or (edtTotalNivelXNoMatric.Text= '')
      //sección 5_4 de las Planillas Provinciales
      or (edtNoFormalTrabProxEdadJub.Text= '') or (edtNoFormalTrabProblemasSalud.Text= '') or (edtNoFormalLicEnfermedadYMaternidad.Text= '') or (edtNoFormalTrabProblemasFamiliares.Text= '') or (edtNoFormalNoDisponibMatricXMINED.Text= '') or (edtNoFormalNoDisponibMatricXMES.Text= '') or (edtNoFormalLimMatricNivSup.Text= '') or (edtNoFormalImposibEntidAbrirAulas.Text= '') or (edtNoFormalTrabNoAcredit.Text= '') or (edtNoFormalTrabTurnosRotativos.Text= '') or (edtNoFormalTrabNieganIncorp.Text= '') or (edtNoFormalMovilConstruc.Text= '') or (edtNoFormalOtrasCausas.Text= '')
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      or (edtCurHabilXTotalNoIdoneos.Text= '') or (edtEntrenamientoXTotalNoIdoneos.Text= '') or (edtTotalNoIdoneosXTotalNoIdoneos.Text= '') or (edtCurHabilXMatric.Text= '') or (edtEntrenamientoXMatric.Text= '') or (edtTotalNoIdoneosXMatric.Text= '') or (edtCurHabilXNoMatric.Text= '') or (edtEntrenamientoXNoMatric.Text= '') or (edtTotalNoIdoneosXNoMatric.Text= '')
      //sección 5_7 de las Planillas Provinciales
      or (edtNoEficTrabProxEdadJub.Text= '') or (edtNoEficTrabProblemasSalud.Text= '') or (edtNoEficLicEnfermedadYMaternidad.Text= '') or (edtNoEficTrabProblemasFamiliares.Text= '') or (edtNoEficTrabTurnosRotativos.Text= '') or (edtNoEficTrabNieganIncorp.Text= '') or (edtNoEficMovilConstruc.Text= '') or (edtNoEficOtrasCausas.Text= '')
      //sección 5_8 de las Planillas Provinciales
      or (edtCasilla1XPendiente.Text= '') or (edtCasilla2XPendiente.Text= '') or (edtTotalXPendiente.Text= '')   )
      then Seccion5:= '5,  '
        else Seccion5:= '';

  //*** No hay ningún Edit en la Seccion 6 de las Planillas

  //Muestro la localización de la(s) ausencia(s) de datos numéricos.
  ShowMessage('Faltan datos numéricos por teclear en la(s) seccion(es): ' + Seccion1 + Seccion2 + Seccion3 + Seccion4 + Seccion5 + 'y deben ser llenados para poder insertar la Planilla Provincial en la base de datos.');
end;


procedure TfrmPrincipal.PosicionarEnEditVacioPlanillasProvinciales;
label Salida;
begin
  //** Pongo en Focus el primer Edit de de las Planillas Provinciales que esté vacio

//parte 1 de las Planillas Provinciales
  if  (edtTotalEntOrgCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtTotalEntOrgCMG.SetFocus;
        goto Salida;
      end;

  if (edtEntOrgConPlanAnualCapCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtEntOrgConPlanAnualCapCMG.SetFocus;
        goto Salida;
      end;

  if (edtTotalTrabOrgCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtTotalTrabOrgCMG.SetFocus;
        goto Salida;
      end;

  if (edtTotalGradAccCapCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtTotalGradAccCapCMG.SetFocus;
        goto Salida;
      end;

  if (edtRelacionGradXTotalCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtRelacionGradXTotalCMG.SetFocus;
        goto Salida;
      end;

    //parte 2 de las Planillas Provinciales
  if (edtGradEnEmpInternasCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnEmpInternasCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnInstExternasCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnInstExternasCMG.SetFocus;
        goto Salida;
      end;
      
  if (edtDirectivosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtDirectivosCMG.SetFocus;
        goto Salida;
      end;

  if (edtTecnicosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtTecnicosCMG.SetFocus;
        goto Salida;
      end;

  if (edtAdministrativosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtAdministrativosCMG.SetFocus;
        goto Salida;
      end;

  if (edtTrabServiciosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtTrabServiciosCMG.SetFocus;
        goto Salida;
      end;

  if (edtOperariosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtOperariosCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurHabCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurHabCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurPerfecCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurPerfecCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradenAdiestLabCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradenAdiestLabCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnEntPTrabCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnEntPTrabCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurPostGradoCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurPostGradoCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnDiplomadosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnDiplomadosCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnMaestriasCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnMaestriasCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnDoctoradosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnDoctoradosCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurFormCompMINEDCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurFormCompMINEDCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurFormCompMESCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurFormCompMESCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurIdiomaExtCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurIdiomaExtCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnCurCompCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurCompCMG.SetFocus;
        goto Salida;
      end;

  if (edtGradEnEntrenEnExtCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnEntrenEnExtCMG.SetFocus;;
        goto Salida;
      end;

  if (edtGradEnOtrasAccCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnOtrasAccCMG.SetFocus;
        goto Salida;
      end;



  if  //parte 3 de las Planillas Provinciales
      (edtInstTotalUtilEnCapacCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        edtInstTotalUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (edtInstEventUtilEnCapacCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        edtInstEventUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (edtInstPermUtilEnCapacCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        edtInstPermUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;


  //parte 4 de las Planillas Provinciales
   if (edtMaestriasXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtMaestriasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (edtDiplomadosXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtDiplomadosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (edtCurPostgradosXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (edtCurIdiomasXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurIdiomasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (edtCurCompXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurCompXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (edtHabilitacionXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtHabilitacionXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (edtPerfecXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtPerfecXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (edtTallSemConfXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTallSemConfXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (edtTotalXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTotalXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (edtMaestriasXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtMaestriasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (edtDiplomadosXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtDiplomadosXGradCMG.SetFocus;
        goto Salida;
      end;

  if (edtCurPostgradosXMatricCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (edtCurIdiomasXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurIdiomasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (edtCurCompXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurCompXGradCMG.SetFocus;
        goto Salida;
      end;

      if (edtHabilitacionXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtHabilitacionXGradCMG.SetFocus;
        goto Salida;
      end;

  if (edtPerfecXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtPerfecXGradCMG.SetFocus;
        goto Salida;
      end;

  if (edtTallSemConfXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTallSemConfXGradCMG.SetFocus;
        goto Salida;
      end;

  if (edtTotalXGradCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTotalXGradCMG.SetFocus;
        goto Salida;
      end;


  //parte 5 de las Planillas Provinciales
  //Sección 5_1
  if (edtTotalTrabNoIdoneosCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalTrabNoIdoneosCMG.SetFocus;
        goto Salida;
      end;


  //Sección 5_2    
  if (edtNoIdoneosSinCalificFormalCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoIdoneosSinCalificFormalCMG.SetFocus;
        goto Salida;
      end;

  if (edtNoIdoneosSinEficienciaCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoIdoneosSinEficienciaCMG.SetFocus;
        goto Salida;
      end;

  if (edtNoIdoneosSinBConductaCMG.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoIdoneosSinBConductaCMG.SetFocus;
        goto Salida;
      end;


  //sección 5_3 de las Planillas Provinciales
  if (edtGrado6XTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado6XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtGrado9XTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado9XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtGrado12XTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado12XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtTecMedioXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTecMedioXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtNivSupXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNivSupXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtTotalNivelXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNivelXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtGrado6XMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado6XMatric.SetFocus;
        goto Salida;
      end;

  if (edtGrado9XMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado9XMatric.SetFocus;
        goto Salida;
      end;

  if (edtGrado12XMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado12XMatric.SetFocus;
        goto Salida;
      end;

  if (edtTecMedioXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTecMedioXMatric.SetFocus;
        goto Salida;
      end;

  if (edtNivSupXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNivSupXMatric.SetFocus;
        goto Salida;
      end;

  if (edtTotalNivelXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNivelXMatric.SetFocus;
        goto Salida;
      end;

  if (edtGrado6XNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado6XNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtGrado9XNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado9XNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtGrado12XNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado12XNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtTecMedioXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTecMedioXNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtNivSupXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNivSupXNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtTotalNivelXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNivelXNoMatric.SetFocus;
        goto Salida;
      end;


  //sección 5_4 de las Planillas Provinciales
  if (edtNoFormalTrabProxEdadJub.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalTrabProblemasSalud.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalLicEnfermedadYMaternidad.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalTrabProblemasFamiliares.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalNoDisponibMatricXMINED.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalNoDisponibMatricXMINED.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalNoDisponibMatricXMES.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalNoDisponibMatricXMES.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalLimMatricNivSup.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalLimMatricNivSup.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalImposibEntidAbrirAulas.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalImposibEntidAbrirAulas.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalTrabNoAcredit.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabNoAcredit.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalTrabTurnosRotativos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalTrabNieganIncorp.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalMovilConstruc.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (edtNoFormalOtrasCausas.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_5 de las Planillas Provinciales
  //No hay ningún Edit allí



  //sección 5_6 de las Planillas Provinciales
  if (edtCurHabilXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCurHabilXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtEntrenamientoXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtEntrenamientoXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtTotalNoIdoneosXTotalNoIdoneos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNoIdoneosXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (edtCurHabilXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCurHabilXMatric.SetFocus;
        goto Salida;
      end;

  if (edtEntrenamientoXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtEntrenamientoXMatric.SetFocus;
        goto Salida;
      end;

  if (edtTotalNoIdoneosXMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNoIdoneosXMatric.SetFocus;
        goto Salida;
      end;

  if (edtCurHabilXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCurHabilXNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtEntrenamientoXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtEntrenamientoXNoMatric.SetFocus;
        goto Salida;
      end;

  if (edtTotalNoIdoneosXNoMatric.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNoIdoneosXNoMatric.SetFocus;
        goto Salida;
      end;



  //sección 5_7 de las Planillas Provinciales
  if (edtNoEficTrabProxEdadJub.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (edtNoEficTrabProblemasSalud.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (edtNoEficLicEnfermedadYMaternidad.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (edtNoEficTrabProblemasFamiliares.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (edtNoEficTrabTurnosRotativos.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (edtNoEficTrabNieganIncorp.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (edtNoEficMovilConstruc.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (edtNoEficOtrasCausas.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_8 de las Planillas Provinciales
  if (edtCasilla1XPendiente.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCasilla1XPendiente.SetFocus;
        goto Salida;
      end;

  if (edtCasilla2XPendiente.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCasilla2XPendiente.SetFocus;
        goto Salida;
      end;

  if (edtTotalXPendiente.Text= '')
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalXPendiente.SetFocus;
        goto Salida;
      end;

  //*** No hay ningún Edit en la Seccion 6 de las Planillas

Salida:
end;


procedure TfrmPrincipal.PosicionarEnEditSePasaDeSmallIntPlanillasProvinciales;

label Salida;
begin
  //** Pongo en Focus el primer Edit de las Planillas Provinciales que tenga un valor mayor que SmallInt

//parte 1 de las Planillas Provinciales
  if  (StrToInt(edtTotalEntOrgCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtTotalEntOrgCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtEntOrgConPlanAnualCapCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtEntOrgConPlanAnualCapCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalTrabOrgCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtTotalTrabOrgCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalGradAccCapCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;
        edtTotalGradAccCapCMG.SetFocus;
        goto Salida;
      end;

  //El componente "edtRelacionGradXTotalCMG" (final de parte 1) recibe datos de tipo Float.

  
    //parte 2 de las Planillas Provinciales
  if (StrToInt(edtGradEnEmpInternasCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnEmpInternasCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnInstExternasCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnInstExternasCMG.SetFocus;
        goto Salida;
      end;
      
  if (StrToInt(edtDirectivosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtDirectivosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTecnicosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtTecnicosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtAdministrativosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtAdministrativosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTrabServiciosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtTrabServiciosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtOperariosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtOperariosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurHabCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurHabCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurPerfecCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurPerfecCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradenAdiestLabCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradenAdiestLabCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnEntPTrabCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnEntPTrabCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurPostGradoCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurPostGradoCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnDiplomadosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnDiplomadosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnMaestriasCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnMaestriasCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnDoctoradosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnDoctoradosCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurFormCompMINEDCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurFormCompMINEDCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurFormCompMESCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurFormCompMESCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurIdiomaExtCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurIdiomaExtCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnCurCompCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnCurCompCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGradEnEntrenEnExtCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnEntrenEnExtCMG.SetFocus;;
        goto Salida;
      end;

  if (StrToInt(edtGradEnOtrasAccCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 1;
        edtGradEnOtrasAccCMG.SetFocus;
        goto Salida;
      end;



  if  //parte 3 de las Planillas Provinciales
      (StrToInt(edtInstTotalUtilEnCapacCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        edtInstTotalUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtInstEventUtilEnCapacCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        edtInstEventUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtInstPermUtilEnCapacCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 2;
        edtInstPermUtilEnCapacCMG.SetFocus;
        goto Salida;
      end;


  //parte 4 de las Planillas Provinciales
   if (StrToInt(edtMaestriasXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtMaestriasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(edtDiplomadosXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtDiplomadosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(edtCurPostgradosXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
         edtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(edtCurIdiomasXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurIdiomasXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(edtCurCompXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurCompXMatricCMG.SetFocus;
        goto Salida;
      end;

   if (StrToInt(edtHabilitacionXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtHabilitacionXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtPerfecXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtPerfecXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTallSemConfXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTallSemConfXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTotalXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtMaestriasXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtMaestriasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtDiplomadosXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtDiplomadosXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtCurPostgradosXMatricCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurPostgradosXMatricCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtCurIdiomasXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurIdiomasXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtCurCompXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtCurCompXGradCMG.SetFocus;
        goto Salida;
      end;

      if (StrToInt(edtHabilitacionXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtHabilitacionXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtPerfecXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtPerfecXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTallSemConfXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTallSemConfXGradCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalXGradCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 3;
        edtTotalXGradCMG.SetFocus;
        goto Salida;
      end;


  //parte 5 de las Planillas Provinciales
  //Sección 5_1
  if (StrToInt(edtTotalTrabNoIdoneosCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalTrabNoIdoneosCMG.SetFocus;
        goto Salida;
      end;


  //Sección 5_2    
  if (StrToInt(edtNoIdoneosSinCalificFormalCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoIdoneosSinCalificFormalCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoIdoneosSinEficienciaCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoIdoneosSinEficienciaCMG.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoIdoneosSinBConductaCMG.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoIdoneosSinBConductaCMG.SetFocus;
        goto Salida;
      end;


  //sección 5_3 de las Planillas Provinciales
  if (StrToInt(edtGrado6XTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado6XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado9XTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado9XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado12XTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado12XTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTecMedioXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTecMedioXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNivSupXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNivSupXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalNivelXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNivelXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado6XMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado6XMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado9XMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado9XMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado12XMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado12XMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTecMedioXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTecMedioXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNivSupXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNivSupXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalNivelXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNivelXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado6XNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado6XNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado9XNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado9XNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtGrado12XNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtGrado12XNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTecMedioXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTecMedioXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNivSupXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNivSupXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalNivelXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNivelXNoMatric.SetFocus;
        goto Salida;
      end;


  //sección 5_4 de las Planillas Provinciales
  if (StrToInt(edtNoFormalTrabProxEdadJub.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalTrabProblemasSalud.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalLicEnfermedadYMaternidad.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalTrabProblemasFamiliares.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalNoDisponibMatricXMINED.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalNoDisponibMatricXMINED.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalNoDisponibMatricXMES.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalNoDisponibMatricXMES.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalLimMatricNivSup.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalLimMatricNivSup.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalImposibEntidAbrirAulas.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalImposibEntidAbrirAulas.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalTrabNoAcredit.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabNoAcredit.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalTrabTurnosRotativos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalTrabNieganIncorp.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalMovilConstruc.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoFormalOtrasCausas.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoFormalOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_5 de las Planillas Provinciales
  //No hay ningún Edit allí



  //sección 5_6 de las Planillas Provinciales
  if (StrToInt(edtCurHabilXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCurHabilXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtEntrenamientoXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtEntrenamientoXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalNoIdoneosXTotalNoIdoneos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNoIdoneosXTotalNoIdoneos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtCurHabilXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCurHabilXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtEntrenamientoXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtEntrenamientoXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalNoIdoneosXMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNoIdoneosXMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtCurHabilXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCurHabilXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtEntrenamientoXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtEntrenamientoXNoMatric.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalNoIdoneosXNoMatric.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalNoIdoneosXNoMatric.SetFocus;
        goto Salida;
      end;



  //sección 5_7 de las Planillas Provinciales
  if (StrToInt(edtNoEficTrabProxEdadJub.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabProxEdadJub.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficTrabProblemasSalud.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabProblemasSalud.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficLicEnfermedadYMaternidad.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficLicEnfermedadYMaternidad.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficTrabProblemasFamiliares.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabProblemasFamiliares.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficTrabTurnosRotativos.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabTurnosRotativos.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficTrabNieganIncorp.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficTrabNieganIncorp.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficMovilConstruc.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficMovilConstruc.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtNoEficOtrasCausas.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtNoEficOtrasCausas.SetFocus;
        goto Salida;
      end;



  //sección 5_8 de las Planillas Provinciales
  if (StrToInt(edtCasilla1XPendiente.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCasilla1XPendiente.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtCasilla2XPendiente.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtCasilla2XPendiente.SetFocus;
        goto Salida;
      end;

  if (StrToInt(edtTotalXPendiente.Text)> 10000000)
    then
      begin
        frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 4;
        edtTotalXPendiente.SetFocus;
        goto Salida;
      end;

Salida:

end;

 

//** Verificar si los valores en los Edits de las Planillas Provinciales se pasan de SmallInt **

function TfrmPrincipal.LosEditsSePasanDeSmallIntPlanillasProvinciales: Boolean;
begin
  if  //parte 1 de las Planillas Provinciales
     ((StrToInt(edtTotalEntOrgCMG.Text)> 10000000) or (StrToInt(edtEntOrgConPlanAnualCapCMG.Text)> 10000000) or (StrToInt(edtTotalTrabOrgCMG.Text)> 10000000) or (StrToInt(edtTotalGradAccCapCMG.Text)> 10000000) //or (StrTo(edtRelacionGradXTotalCMG.Text)> 10000000)

      //parte 2 de las Planillas Provinciales
      or (StrToInt(edtGradEnEmpInternasCMG.Text)> 10000000) or (StrToInt(edtGradEnInstExternasCMG.Text)> 10000000) or (StrToInt(edtDirectivosCMG.Text)> 10000000) or (StrToInt(edtTecnicosCMG.Text)> 10000000) or (StrToInt(edtAdministrativosCMG.Text)> 10000000) 
      or (StrToInt(edtTrabServiciosCMG.Text)> 10000000) or (StrToInt(edtOperariosCMG.Text)> 10000000) or (StrToInt(edtGradEnCurHabCMG.Text)> 10000000) or (StrToInt(edtGradEnCurPerfecCMG.Text)> 10000000)
      or (StrToInt(edtGradenAdiestLabCMG.Text)> 10000000) or (StrToInt(edtGradEnEntPTrabCMG.Text)> 10000000) or (StrToInt(edtGradEnCurPostGradoCMG.Text)> 10000000) or (StrToInt(edtGradEnDiplomadosCMG.Text)> 10000000) or (StrToInt(edtGradEnMaestriasCMG.Text)> 10000000) 
      or (StrToInt(edtGradEnDoctoradosCMG.Text)> 10000000) or (StrToInt(edtGradEnCurFormCompMINEDCMG.Text)> 10000000) or (StrToInt(edtGradEnCurFormCompMESCMG.Text)> 10000000)
      or (StrToInt(edtGradEnCurIdiomaExtCMG.Text)> 10000000) or (StrToInt(edtGradEnCurCompCMG.Text)> 10000000) or (StrToInt(edtGradEnEntrenEnExtCMG.Text)> 10000000) or (StrToInt(edtGradEnOtrasAccCMG.Text)> 10000000)

      //parte 3 de las Planillas Provinciales
      or (StrToInt(edtInstTotalUtilEnCapacCMG.Text)> 10000000) or (StrToInt(edtInstEventUtilEnCapacCMG.Text)> 10000000) or (StrToInt(edtInstPermUtilEnCapacCMG.Text)> 10000000)

      //parte 4 de las Planillas Provinciales
      or (StrToInt(edtMaestriasXMatricCMG.Text)> 10000000) or (StrToInt(edtDiplomadosXMatricCMG.Text)> 10000000) or (StrToInt(edtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(edtCurIdiomasXMatricCMG.Text)> 10000000) or (StrToInt(edtCurCompXMatricCMG.Text)> 10000000) 
      or (StrToInt(edtHabilitacionXMatricCMG.Text)> 10000000) or (StrToInt(edtPerfecXMatricCMG.Text)> 10000000) or (StrToInt(edtTallSemConfXMatricCMG.Text)> 10000000)
      or (StrToInt(edtTotalXMatricCMG.Text)> 10000000) or (StrToInt(edtMaestriasXGradCMG.Text)> 10000000) or (StrToInt(edtDiplomadosXGradCMG.Text)> 10000000) or (StrToInt(edtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(edtCurIdiomasXGradCMG.Text)> 10000000) 
      or (StrToInt(edtCurCompXGradCMG.Text)> 10000000) or (StrToInt(edtHabilitacionXGradCMG.Text)> 10000000) or (StrToInt(edtPerfecXGradCMG.Text)> 10000000)
      or (StrToInt(edtTallSemConfXGradCMG.Text)> 10000000) or (StrToInt(edtTotalXGradCMG.Text)> 10000000)

      //parte 5 de las Planillas Provinciales
      //sección 5_1 de las Planillas Provinciales
      or   (StrToInt(edtTotalTrabNoIdoneosCMG.Text)> 10000000)
      //sección 5_2 de las Planillas Provinciales
      or (StrToInt(edtNoIdoneosSinCalificFormalCMG.Text)> 10000000) or (StrToInt(edtNoIdoneosSinEficienciaCMG.Text)> 10000000) or (StrToInt(edtNoIdoneosSinBConductaCMG.Text)> 10000000)
      //sección 5_3 de las Planillas Provinciales
      or (StrToInt(edtGrado6XTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtGrado9XTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtGrado12XTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtTecMedioXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtNivSupXTotalNoIdoneos.Text)> 10000000) 
      or (StrToInt(edtTotalNivelXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtGrado6XMatric.Text)> 10000000) or (StrToInt(edtGrado9XMatric.Text)> 10000000) or (StrToInt(edtGrado12XMatric.Text)> 10000000) or (StrToInt(edtTecMedioXMatric.Text)> 10000000)
      or (StrToInt(edtNivSupXMatric.Text)> 10000000) or (StrToInt(edtTotalNivelXMatric.Text)> 10000000) or (StrToInt(edtGrado6XNoMatric.Text)> 10000000) or (StrToInt(edtGrado9XNoMatric.Text)> 10000000) or (StrToInt(edtGrado12XNoMatric.Text)> 10000000)
      or (StrToInt(edtTecMedioXNoMatric.Text)> 10000000) or (StrToInt(edtNivSupXNoMatric.Text)> 10000000) or (StrToInt(edtTotalNivelXNoMatric.Text)> 10000000)
      //sección 5_4 de las Planillas Provinciales
      or (StrToInt(edtNoFormalTrabProxEdadJub.Text)> 10000000) or (StrToInt(edtNoFormalTrabProblemasSalud.Text)> 10000000) or (StrToInt(edtNoFormalLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(edtNoFormalTrabProblemasFamiliares.Text)> 10000000) 
      or (StrToInt(edtNoFormalNoDisponibMatricXMINED.Text)> 10000000) or (StrToInt(edtNoFormalNoDisponibMatricXMES.Text)> 10000000) or (StrToInt(edtNoFormalLimMatricNivSup.Text)> 10000000) or (StrToInt(edtNoFormalImposibEntidAbrirAulas.Text)> 10000000) or (StrToInt(edtNoFormalTrabNoAcredit.Text)> 10000000)
      or (StrToInt(edtNoFormalTrabTurnosRotativos.Text)> 10000000) or (StrToInt(edtNoFormalTrabNieganIncorp.Text)> 10000000) or (StrToInt(edtNoFormalMovilConstruc.Text)> 10000000) or (StrToInt(edtNoFormalOtrasCausas.Text)> 10000000)
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      or (StrToInt(edtCurHabilXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtEntrenamientoXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtTotalNoIdoneosXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtCurHabilXMatric.Text)> 10000000) or (StrToInt(edtEntrenamientoXMatric.Text)> 10000000) 
      or (StrToInt(edtTotalNoIdoneosXMatric.Text)> 10000000) or (StrToInt(edtCurHabilXNoMatric.Text)> 10000000) or (StrToInt(edtEntrenamientoXNoMatric.Text)> 10000000) or (StrToInt(edtTotalNoIdoneosXNoMatric.Text)> 10000000)
      //sección 5_7 de las Planillas Provinciales
      or (StrToInt(edtNoEficTrabProxEdadJub.Text)> 10000000) or (StrToInt(edtNoEficTrabProblemasSalud.Text)> 10000000) or (StrToInt(edtNoEficLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(edtNoEficTrabProblemasFamiliares.Text)> 10000000) or (StrToInt(edtNoEficTrabTurnosRotativos.Text)> 10000000) 
      or (StrToInt(edtNoEficTrabNieganIncorp.Text)> 10000000) or (StrToInt(edtNoEficMovilConstruc.Text)> 10000000) or (StrToInt(edtNoEficOtrasCausas.Text)> 10000000)
      //sección 5_8 de las Planillas Provinciales
      or (StrToInt(edtCasilla1XPendiente.Text)> 10000000) or (StrToInt(edtCasilla2XPendiente.Text)> 10000000) or (StrToInt(edtTotalXPendiente.Text)> 10000000)   )

      //parte 6 de las Planillas Provinciales
      //No hay ningún Edit allí
      then
        begin
          Result:= True;
        end
          else
            begin
              Result:= False;
            end;
end;

//Especifico en cuáles Edits de las Planillas Provinciales se pasan de SmallInt
procedure TfrmPrincipal.DetallarEditsPasadosDeSmallIntPlanillasProvinciales;
var
  Seccion1, Seccion2, Seccion3, Seccion4, Seccion5: string;
begin
  //** Lleno las variables para localizar la procedencia del exceso de valor en los datos numéricos
  if  //parte 1 de las Planillas Provinciales
     (  (StrToInt(edtTotalEntOrgCMG.Text)> 10000000) or (StrToInt(edtEntOrgConPlanAnualCapCMG.Text)> 10000000) or (StrToInt(edtTotalTrabOrgCMG.Text)> 10000000) or (StrToInt(edtTotalGradAccCapCMG.Text)> 10000000) or (StrToInt(edtRelacionGradXTotalCMG.Text)> 10000000)  )
      then Seccion1:= '1,  '
        else Seccion1:= '';

  if    //parte 2 de las Planillas Provinciales
      (  (StrToInt(edtGradEnEmpInternasCMG.Text)> 10000000) or (StrToInt(edtGradEnInstExternasCMG.Text)> 10000000) or (StrToInt(edtDirectivosCMG.Text)> 10000000) or (StrToInt(edtTecnicosCMG.Text)> 10000000) or (StrToInt(edtAdministrativosCMG.Text)> 10000000) or (StrToInt(edtTrabServiciosCMG.Text)> 10000000) or (StrToInt(edtOperariosCMG.Text)> 10000000) or (StrToInt(edtGradEnCurHabCMG.Text)> 10000000) or (StrToInt(edtGradEnCurPerfecCMG.Text)> 10000000)
      or (StrToInt(edtGradenAdiestLabCMG.Text)> 10000000) or (StrToInt(edtGradEnEntPTrabCMG.Text)> 10000000) or (StrToInt(edtGradEnCurPostGradoCMG.Text)> 10000000) or (StrToInt(edtGradEnDiplomadosCMG.Text)> 10000000) or (StrToInt(edtGradEnMaestriasCMG.Text)> 10000000) or (StrToInt(edtGradEnDoctoradosCMG.Text)> 10000000) or (StrToInt(edtGradEnCurFormCompMINEDCMG.Text)> 10000000) or (StrToInt(edtGradEnCurFormCompMESCMG.Text)> 10000000) 
      or (StrToInt(edtGradEnCurIdiomaExtCMG.Text)> 10000000) or (StrToInt(edtGradEnCurCompCMG.Text)> 10000000) or (StrToInt(edtGradEnEntrenEnExtCMG.Text)> 10000000) or (StrToInt(edtGradEnOtrasAccCMG.Text)> 10000000)  )
      then Seccion2:= '2,  '
        else Seccion2:= '';

  if    //parte 3 de las Planillas Provinciales
       ( (StrToInt(edtInstTotalUtilEnCapacCMG.Text)> 10000000) or (StrToInt(edtInstEventUtilEnCapacCMG.Text)> 10000000) or (StrToInt(edtInstPermUtilEnCapacCMG.Text)> 10000000)  )
      then Seccion3:= '3,  '
        else Seccion3:= '';

  if    //parte 4 de las Planillas Provinciales
      (  (StrToInt(edtMaestriasXMatricCMG.Text)> 10000000) or (StrToInt(edtDiplomadosXMatricCMG.Text)> 10000000) or (StrToInt(edtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(edtCurIdiomasXMatricCMG.Text)> 10000000) or (StrToInt(edtCurCompXMatricCMG.Text)> 10000000) or (StrToInt(edtHabilitacionXMatricCMG.Text)> 10000000) or (StrToInt(edtPerfecXMatricCMG.Text)> 10000000) or (StrToInt(edtTallSemConfXMatricCMG.Text)> 10000000)
      or (StrToInt(edtTotalXMatricCMG.Text)> 10000000) or (StrToInt(edtMaestriasXGradCMG.Text)> 10000000) or (StrToInt(edtDiplomadosXGradCMG.Text)> 10000000) or (StrToInt(edtCurPostgradosXMatricCMG.Text)> 10000000) or (StrToInt(edtCurIdiomasXGradCMG.Text)> 10000000) or (StrToInt(edtCurCompXGradCMG.Text)> 10000000) or (StrToInt(edtHabilitacionXGradCMG.Text)> 10000000) or (StrToInt(edtPerfecXGradCMG.Text)> 10000000) 
      or (StrToInt(edtTallSemConfXGradCMG.Text)> 10000000) or (StrToInt(edtTotalXGradCMG.Text)> 10000000)  )
      then  Seccion4:= '4,  '
        else Seccion4:= '';

  if  //parte 5 de las Planillas Provinciales
      //sección 5_1 de las Planillas Provinciales
      (   (StrToInt(edtTotalTrabNoIdoneosCMG.Text)> 10000000)
      //sección 5_2 de las Planillas Provinciales
      or (StrToInt(edtNoIdoneosSinCalificFormalCMG.Text)> 10000000) or (StrToInt(edtNoIdoneosSinEficienciaCMG.Text)> 10000000) or (StrToInt(edtNoIdoneosSinBConductaCMG.Text)> 10000000)
      //sección 5_3 de las Planillas Provinciales
      or (StrToInt(edtGrado6XTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtGrado9XTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtGrado12XTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtTecMedioXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtNivSupXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtTotalNivelXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtGrado6XMatric.Text)> 10000000) or (StrToInt(edtGrado9XMatric.Text)> 10000000) or (StrToInt(edtGrado12XMatric.Text)> 10000000) or (StrToInt(edtTecMedioXMatric.Text)> 10000000) or (StrToInt(edtNivSupXMatric.Text)> 10000000) or (StrToInt(edtTotalNivelXMatric.Text)> 10000000) or (StrToInt(edtGrado6XNoMatric.Text)> 10000000) or (StrToInt(edtGrado9XNoMatric.Text)> 10000000) or (StrToInt(edtGrado12XNoMatric.Text)> 10000000) or (StrToInt(edtTecMedioXNoMatric.Text)> 10000000) or (StrToInt(edtNivSupXNoMatric.Text)> 10000000) or (StrToInt(edtTotalNivelXNoMatric.Text)> 10000000)
      //sección 5_4 de las Planillas Provinciales
      or (StrToInt(edtNoFormalTrabProxEdadJub.Text)> 10000000) or (StrToInt(edtNoFormalTrabProblemasSalud.Text)> 10000000) or (StrToInt(edtNoFormalLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(edtNoFormalTrabProblemasFamiliares.Text)> 10000000) or (StrToInt(edtNoFormalNoDisponibMatricXMINED.Text)> 10000000) or (StrToInt(edtNoFormalNoDisponibMatricXMES.Text)> 10000000) or (StrToInt(edtNoFormalLimMatricNivSup.Text)> 10000000) or (StrToInt(edtNoFormalImposibEntidAbrirAulas.Text)> 10000000) or (StrToInt(edtNoFormalTrabNoAcredit.Text)> 10000000) or (StrToInt(edtNoFormalTrabTurnosRotativos.Text)> 10000000) or (StrToInt(edtNoFormalTrabNieganIncorp.Text)> 10000000) or (StrToInt(edtNoFormalMovilConstruc.Text)> 10000000) or (StrToInt(edtNoFormalOtrasCausas.Text)> 10000000)
      //sección 5_5 de las Planillas Provinciales
      //No hay ningún Edit allí
      //sección 5_6 de las Planillas Provinciales
      or (StrToInt(edtCurHabilXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtEntrenamientoXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtTotalNoIdoneosXTotalNoIdoneos.Text)> 10000000) or (StrToInt(edtCurHabilXMatric.Text)> 10000000) or (StrToInt(edtEntrenamientoXMatric.Text)> 10000000) or (StrToInt(edtTotalNoIdoneosXMatric.Text)> 10000000) or (StrToInt(edtCurHabilXNoMatric.Text)> 10000000) or (StrToInt(edtEntrenamientoXNoMatric.Text)> 10000000) or (StrToInt(edtTotalNoIdoneosXNoMatric.Text)> 10000000)
      //sección 5_7 de las Planillas Provinciales
      or (StrToInt(edtNoEficTrabProxEdadJub.Text)> 10000000) or (StrToInt(edtNoEficTrabProblemasSalud.Text)> 10000000) or (StrToInt(edtNoEficLicEnfermedadYMaternidad.Text)> 10000000) or (StrToInt(edtNoEficTrabProblemasFamiliares.Text)> 10000000) or (StrToInt(edtNoEficTrabTurnosRotativos.Text)> 10000000) or (StrToInt(edtNoEficTrabNieganIncorp.Text)> 10000000) or (StrToInt(edtNoEficMovilConstruc.Text)> 10000000) or (StrToInt(edtNoEficOtrasCausas.Text)> 10000000)
      //sección 5_8 de las Planillas Provinciales
      or (StrToInt(edtCasilla1XPendiente.Text)> 10000000) or (StrToInt(edtCasilla2XPendiente.Text)> 10000000) or (StrToInt(edtTotalXPendiente.Text)> 10000000)   )
      then Seccion5:= '5,  '
        else Seccion5:= '';


  //*** No hay ningún Edit en la Seccion 6 de las Planillas Provinciales

  //Muestro la localización de la(s) ausencia(s) de datos numéricos.
  ShowMessage('Hay datos numéricos que exceden el máximo valor admitido (10 millones) en la(s) seccion(es): ' + Seccion1 + Seccion2 + Seccion3 + Seccion4 + Seccion5 + 'y deben ser modificados para poder insertar la Planilla Provincial en la base de datos.');
end;



{---------------------------------------------------------}
    //*** Acciones de los botones de las Planillas Provinciales ***
{---------------------------------------------------------}

procedure TfrmPrincipal.btnNuevosValoresPlanillasProvincialesClick(Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
  provincia: AnsiString;
begin
  //Voy hacia la parte 1 de la Planilla Provincial, para llenar desde el principio
  frmPrincipal.PageControlPlanillasProvinciales.ActivePageIndex:= 0;

  //Deshabilito las opciones de "Edición" y "Ver"
  MenuEdicion.Enabled:= False;
  MenuVer.Enabled:= False;

  //Impido el cambio de páginas en el PageControlTodo
  Ocioso:= False;

  //Deshabilito la pestaña de Puestos de Trabajo
  TabSheetControlDelSistema.Enabled:= False;

  //Deshabilito la pestaña de Planillas de CH
  TabSheetHospitalesDeExcelencia.Enabled:= False;

  //Deshabilito los ComboBox de provincias, de las Planillas Provinciales
  DeshabilitarComboBoxProvinciasPlanillasProvinciales;
  
  //Deshabilito los botones de "Nuevos" de las Planillas Provinciales
  DeshabilitarBotonesNuevosPlanillasProvinciales;

  //Deshabilito el SpeedButton de "Nuevos"
  SpeedButtonNuevaPlanilla.Enabled:= False;

  //Deshabilito la opción de "Nueva Planila" en el MainMenu
  MenuOpcionAgregarPlanillaProvincial.Enabled:= False;

  //Muestro los botones de "Insertar Valores" de las Planillas Provinciales
  MostrarBotonesInsertarValoresPlanillasProvinciales;

  //Oculto los botones de "Modificar Valores" de las Planillas Provinciales
  OcultarBotonesModificarValoresPlanillasProvinciales;

  //Oculto el SpeedButton de "Modificar"
  SpeedButtonModificarPlanilla.Visible:= False;

  //Oculto la opción de "Modificar Planilla" en el MainMenu
  MenuOpcionModificarPlanillaProvincial.Visible:= False;

  //Oculto los botones de "Eliminar Valores" de las Planillas Provinciales
  OcultarBotonesEliminarValoresPlanillasProvinciales;

  //Oculto el SpeedButton de "Eliminar"
  SpeedButtonEliminarPlanilla.Visible:= False;

  //Oculto la opción de "Eliminar Planilla" en el MainMenu
  MenuOpcionEliminarPlanillaProvincial.Visible:= False;

  //Cambio el Caption de botones "Cancelar" X "Cancelar Nuevas"
  CambiarCaptionCancelarXCancelarNuevaPlanillasProvinciales;

  //Muestro los botones de "Cancelar" de las Planillas Provinciales
  MostrarBotonesCancelarPlanillasProvinciales;

  //Cambiar el hint a los botones de "Cancelar" de las Planillas Provinciales (cancelar nueva)
  CambiarHintBotonesCancelarPlanillasProvinciales('Cancelar nueva Planilla Provincial');

  //Oculto los botones de "Generar Reporte" de las Planillas Provinciales
  OcultarBotonesGenerarReportePlanillasProvinciales;

  //Oculto el SpeedButton de "Generar Reporte"
  SpeedButtonGenerarReportePlanilla.Visible:= False;

  //Oculto la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;

  //Deshabilito los DBGrids de las Planillas Provinciales
  DeshabilitarDBGridsPlanillasProvinciales;

  //Hago visible los labels referentes al año.
  MostrarLabelsAnnoPlanillasProvinciales;

  //Habilito los labels referentes al año.
  HabilitarLabelsAnnoPlanillasProvinciales;

  //Hago visible los DateTimes referentes al año.
  MostrarDateTimeAnnoPlanillasProvinciales;

  //Habilito los DateTimes referentes al año.
  HabilitarDateTimeAnnoPlanillasProvinciales;

  //Ocultamos los DBEdits y los DBMemos de las Planillas Provinciales
  OcultarDBEditsYMemosPlanillasProvinciales;

  //Mostramos los Edits y los Memos de las Planillas Provinciales
  MostrarEditsYMemosPlanillasProvinciales;

  //Limpiamos los Edits y los Memos de las Planillas Provinciales
  LimpiarEditsYMemosPlanillasProvinciales;

  //Lleno los campos para conformar el caption de la forma
  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte6PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;
  
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

  //Valido de acuerdo a la opción seleccioado en el ComboBox de las Provincias
  if (provincia <> 'USN') then
    begin
      //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
      frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + provincia + ' , año ' + anno + '.';
    end
      else
        begin
          //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
          frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, Unidades de Subordinación Nacional (USN), año ' + anno + '.';
        end;

  //Pongo el cursor en el primer Edit para que no se pase trabajo al llenarlo.
  edtTotalEntOrgCMG.SetFocus;
end;

procedure TfrmPrincipal.btnInsertarValoresPlanillasProvincialesClick(Sender: TObject);
var
  anno: Integer;
  provincia: string;
  mes, dia, ano :Word;
begin
  //Intento convertir la cadena hacia un número entero
  anno:= StrToIntDef(   AnsiRightStr(DateToStr(DateTimeAnnoParte1PlanillasProvinciales.Date), 4 ), 0   );

  //Verifico si tomó el valor default = 0 (no es entero)
  if (anno = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= ano;
      end;
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

      //Compruebo si los Edits y Memos están llenos en la Planilla CMG
      if (LosEditsYMemosEstanLlenosPlanillasProvinciales) then
        //No hay lio, todo está lleno. Paso a la siguiente verificación.
        begin
          //Compruebo si los valores en los Edits no se pasan de 10 millones en la Planilla Provincial
          if (LosEditsSePasanDeSmallIntPlanillasProvinciales = false) then
            //No hay lio, procedo a pasar a lo siguiente sin preámbulo.
            begin
              //Ahora debo verificar que el año a insertar no se encuentre ya dentro de la BD para la provincia Camaguey (CMG)
              if (DptoCapacitacion.ExisteLaPlanilla(anno, provincia)= False)
                then
                  //Procedo a insertar finalmente
                  begin
                    //Procedo a rellenar la planilla temporal
                    RellenarPlanillaTemporalPlanillasProvinciales;

                    //Habilito los DBGrids de las Planillas Provinciales
                    HabilitarDBGridsPlanillasProvinciales;

                    //Aquí se invoca a la función que inserta la Planilla en la BD.
                    DptoCapacitacion.InsertarPlanilla(TempPlanilla);

                    //Limpio los Edits y los Memos de las Planillas Provinciales
                    LimpiarEditsYMemosPlanillasProvinciales;

                    //Escondo los Edits y los Memos de las Planillas Provinciales
                    OcultarEditsYMemosPlanillasProvinciales;

                    //Muestro los DBEdits y los DBMemos de las Planillas Provinciales
                    MostrarDBEditsYMemosPlanillasProvinciales;

                    //Inserto la Traza de acuerdo a la opción seleccionada en el ComboBox de las Provincias
                    if (provincia <> 'USN') then
                      begin
                        //Inserto la Traza
                        DptoCapacitacion.GuardarTrazaDelSistema('Creó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de la provincia ' + provincia + '.');
                      end
                        else
                          begin
                            //Inserto la Traza
                            DptoCapacitacion.GuardarTrazaDelSistema('Creó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de las Unidades de Subordinación Nacional (USN).');
                          end;

                    //Actualizo todas las trazas
                    DptoCapacitacion.MostrarTodasLasTrazas;


                    //      ** Programación para los botones, SpeedButtons y opciones del MainMenu **

                    //Habilito los ComboBox de provincias, de las Planillas Provinciales
                    HabilitarComboBoxProvinciasPlanillasProvinciales;

                    //Habilito los botones de "Nuevos"
                    HabilitarBotonesNuevosPlanillasProvinciales;

                    //Habilito el SpeedButton de "Nueva"
                    SpeedButtonNuevaPlanilla.Enabled:= True;

                    //Habilito la opción del MainMenu de "Nueva Planilla"
                    MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

                    //Habilito los botones de "Insertar Valores" de las Planillas Provinciales
                    HabilitarBotonesInsertarValoresPlanillasProvinciales;

                    //Oculto los botones de "Insertar Valores" de las Planillas Provinciales
                    OcultarBotonesInsertarValoresPlanillasProvinciales;

                    //Habilito los botones de "Modificar" de las Planillas Provinciales
                    HabilitarBotonesModificarValoresPlanillasProvinciales;

                    //Muestro los botones de "Modificar" de las Planillas Provinciales
                    MostrarBotonesModificarValoresPlanillasProvinciales;

                    //Habilito el SpeedButton de "Modificar"
                    SpeedButtonModificarPlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Modificar"
                    SpeedButtonModificarPlanilla.Visible:= True;

                    //Habilito la opción del MainMenu de "Modificar Planilla"
                    MenuOpcionModificarPlanillaProvincial.Enabled:= True;

                    //Muestro la opción del MainMenu de "Modificar Planilla"
                    MenuOpcionModificarPlanillaProvincial.Visible:= True;

                    //Habilito los botones de "Eliminar Valores" de las Planillas Provinciales
                    HabilitarBotonesEliminarValoresPlanillasProvinciales;

                    //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
                    MostrarBotonesEliminarValoresPlanillasProvinciales;

                    //Habilito el SpeedButton de "Eliminar Planilla""
                    SpeedButtonEliminarPlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Eliminar"
                    SpeedButtonEliminarPlanilla.Visible:= True;

                    //Habilito la opción del MainMenu de "Eliminar Planilla"
                    MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

                    //Muestro la opción del MainMenu de "Eliminar Planilla"
                    MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                    //Oculto los botones de "Cancelar" de las Planillas Provinciales
                    OcultarBotonesCancelarPlanillasProvinciales;

                    //Cambiar el hint a los botones de "Cancelar" de las Planillas Provinciales (cancelar)
                    CambiarHintBotonesCancelarPlanillasProvinciales('Cancelar');

                    //Habilito los botones de "Generar Reporte" de las Planillas Provinciales
                    HabilitarBotonesGenerarReportePlanillasProvinciales;

                    //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
                    MostrarBotonesGenerarReportePlanillasProvinciales;

                    //Habilito el SpeedButton de "Generar Reporte"
                    SpeedButtonGenerarReportePlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Generar Reporte"
                    SpeedButtonGenerarReportePlanilla.Visible:= True;

                    //Habilito la opción del MainMenu de "Generar Reporte"
                    MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;

                    //Muestro la opción de "Generar Reporte" en el MainMenu
                    MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

                    //Actualizar los DBGrids delas Planillas Provinciales
                    DptoCapacitacion.MostrarPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.Text);

                    //Pongo el Focus en los DBGrids de las Planillas Provinciales
                    PonerFocusEnDBGridsPlanillasProvinciales;

                    //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                    frmPrincipal.Caption:= 'HC-CAP 2008';

                    //Habilito las opciones de "Edición" y "Ver"
                    MenuEdicion.Enabled:= True;
                    MenuVer.Enabled:= True;

                    //Permito el cambio de páginas en el PageControlTodo
                    Ocioso:= True;

                    //Habilito la pestaña de Puestos de Trabajo
                    TabSheetControlDelSistema.Enabled:= True;

                    //Habilito la pestaña de Planillas de CH
                    TabSheetHospitalesDeExcelencia.Enabled:= True;

                    //Hago invisible el label (CMG), referentes al año.
                    OcultarLabelsAnnoPlanillasProvinciales;

                    //Deshabilito el label (CMG), referentes al año.
                    DeshabilitarLabelsAnnoPlanillasProvinciales;

                    //Hago invisible el DateTime (CMG), referentes al año.
                    OcultarDateTimeAnnoPlanillasProvinciales;

                    //Deshabilito el DateTime (CMG), referentes al año.
                    DeshabilitarDateTimeAnnoPlanillasProvinciales;

                    //Destruyo la Planilla Temporal
                    TempPlanilla.Destroy;
                  end
                    else
                      ShowMessage('El año de la Planilla que usted desea insertar, ya está en la base de datos. No puede haber años repetidos para la misma provincia.');
            end
             else
               begin
                 //Hay valores mayores de 10 millones, debo detallar su localización al usuario
                 DetallarEditsPasadosDeSmallIntPlanillasProvinciales;

                 //Pongo en focus el primer Edit que tenga un valor mayor que 10 millones
                 PosicionarEnEditSePasaDeSmallIntPlanillasProvinciales;
               end;
        end
          else
            // La planilla no está totalmente llena (faltan números importantes y/o texto poco vital).
            begin
              //Debo comprobar si faltan números importantes
              if (LosEditsEstanLlenosPlanillasProvinciales) then
                //No faltan números importantes, solo texto poco vital. Paso a la siguiente verificación.
                begin
                  //Compruebo si los los valores en los Edits no se pasan de 10 millones en la Planilla Provincial
                  if (LosEditsSePasanDeSmallIntPlanillasProvinciales = false) then
                    //No hay lio, paso a la siguiente verificación.
                    begin
                      //Ahora debo verificar que el año a insertar no se encuentre ya dentro de la BD para la provincia Camaguey (CMG)
                      if (DptoCapacitacion.ExisteLaPlanilla(anno, provincia)= False)
                        then
                          //No hay lio, procedo a insertar con relleno "Sin comentarios".
                          begin
                            //Procedo a rellenar la planilla temporal
                            RellenarPlanillaTemporalPlanillasProvinciales;

                            //Habilito los DBGrids de las Planillas Provinciales
                            HabilitarDBGridsPlanillasProvinciales;

                            //Aquí se invoca a la función que inserta la Planilla en la BD.
                            DptoCapacitacion.InsertarPlanilla(TempPlanilla);

                            //Limpio los Edits y los Memos de las Planillas Provinciales
                            LimpiarEditsYMemosPlanillasProvinciales;

                            //Escondo los Edits y los Memos de las Planillas Provinciales
                            OcultarEditsYMemosPlanillasProvinciales;

                            //Muestro los DBEdits y los DBMemos de las Planillas Provinciales
                            MostrarDBEditsYMemosPlanillasProvinciales;

                            //Inserto la Traza de acuerdo a la opción seleccionada en el ComboBox de las Provincias
                            if (provincia <> 'USN') then
                              begin
                                //Inserto la Traza
                                DptoCapacitacion.GuardarTrazaDelSistema('Creó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de la provincia ' + provincia + '.');
                              end
                                else
                                  begin
                                    //Inserto la Traza
                                    DptoCapacitacion.GuardarTrazaDelSistema('Creó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de las Unidades de Subordinación Nacional (USN).');
                                  end;

                            //Actualizo todas las trazas
                            DptoCapacitacion.MostrarTodasLasTrazas;

                            //    ** Programación para los botones, SpeedButtons y opciones del MainMenu **

                            //Habilito los ComboBox de provincias, de las Planillas Provinciales
                            HabilitarComboBoxProvinciasPlanillasProvinciales;

                            //Habilito los botones de "Nuevos"
                            HabilitarBotonesNuevosPlanillasProvinciales;

                            //Habilito el SpeedButton de "Nueva"
                            SpeedButtonNuevaPlanilla.Enabled:= True;

                            //Habilito la opción del MainMenu de "Nueva Planilla"
                            MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

                            //Habilito los botones de "Insertar Valores" de las Planillas Provinciales
                            HabilitarBotonesInsertarValoresPlanillasProvinciales;

                            //Oculto los botones de "Insertar Valores" de las Planillas Provinciales
                            OcultarBotonesInsertarValoresPlanillasProvinciales;

                            //Habilito los botones de "Modificar" de las Planillas Provinciales
                            HabilitarBotonesModificarValoresPlanillasProvinciales;

                            //Muestro los botones de "Modificar" de las Planillas Provinciales
                            MostrarBotonesModificarValoresPlanillasProvinciales;

                            //Habilito el SpeedButton de "Modificar"
                            SpeedButtonModificarPlanilla.Enabled:= True;

                            //Muestro el SpeedButton de "Modificar"
                            SpeedButtonModificarPlanilla.Visible:= True;

                            //Habilito la opción del MainMenu de "Modificar Planilla"
                            MenuOpcionModificarPlanillaProvincial.Enabled:= True;

                            //Muestro la opción del MainMenu de "Modificar Planilla"
                            MenuOpcionModificarPlanillaProvincial.Visible:= True;

                            //Habilito los botones de "Eliminar Valores" de las Planillas Provinciales
                            HabilitarBotonesEliminarValoresPlanillasProvinciales;

                            //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
                            MostrarBotonesEliminarValoresPlanillasProvinciales;

                            //Habilito el SpeedButton de "Eliminar Planilla""
                            SpeedButtonEliminarPlanilla.Enabled:= True;

                            //Muestro el SpeedButton de "Eliminar"
                            SpeedButtonEliminarPlanilla.Visible:= True;

                            //Habilito la opción del MainMenu de "Eliminar Planilla"
                            MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

                            //Muestro la opción del MainMenu de "Eliminar Planilla"
                            MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                            //Cambiar el hint a los botones de "Cancelar" de las Planillas Provinciales (cancelar)
                            CambiarHintBotonesCancelarPlanillasProvinciales('Cancelar');

                            //Oculto los botones de "Cancelar" de las Planillas Provinciales
                            OcultarBotonesCancelarPlanillasProvinciales;

                            //Habilito los botones de "Generar Reporte" de las Planillas Provinciales
                            HabilitarBotonesGenerarReportePlanillasProvinciales;

                            //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
                            MostrarBotonesGenerarReportePlanillasProvinciales;

                            //Habilito el SpeedButton de "Generar Reporte"
                            SpeedButtonGenerarReportePlanilla.Enabled:= True;

                            //Muestro el SpeedButton de "Generar Reporte"
                            SpeedButtonGenerarReportePlanilla.Visible:= True;

                            //Habilito la opción del MainMenu de "Generar Reporte"
                            MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;

                            //Muestro la opción de "Generar Reporte" en el MainMenu
                            MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

                            //Actualizar los DBGrids de las Planillas Provinciales
                            DptoCapacitacion.MostrarPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.Text);

                            //Pongo el Focus en los DBGrids de las Planillas Provinciales
                            PonerFocusEnDBGridsPlanillasProvinciales;

                            //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                            frmPrincipal.Caption:= 'HC-CAP 2008';

                            //Habilito las opciones de "Edición" y "Ver"
                            MenuEdicion.Enabled:= True;
                            MenuVer.Enabled:= True;

                            //Permito el cambio de páginas en el PageControlTodo
                            Ocioso:= True;

                            //Habilito la pestaña de Puestos de Trabajo
                            TabSheetControlDelSistema.Enabled:= True;

                            //Habilito la pestaña de Planillas de CH
                            TabSheetHospitalesDeExcelencia.Enabled:= True;

                            //Hago invisible los labels de las Planillas Provinciales, referentes al año.
                            OcultarLabelsAnnoPlanillasProvinciales;

                            //Deshabilito los labels de las Planillas Provinciales, referentes al año.
                            DeshabilitarLabelsAnnoPlanillasProvinciales;

                            //Hago invisible los DateTime de las Planillas Provinciales, referentes al año.
                            OcultarDateTimeAnnoPlanillasProvinciales;

                            //Deshabilito los DateTime de las Planillas Provinciales, referentes al año.
                            DeshabilitarDateTimeAnnoPlanillasProvinciales;

                            //Destruyo la Planilla Temporal
                            TempPlanilla.Destroy;
                          end
                            else
                              ShowMessage('El año de la Planilla que usted desea insertar, ya está en la base de datos. No puede haber años repetidos para la misma provincia.');
                    end
                      else
                        begin
                          //Hay valores mayores de 10 millones, debo detallar su localización al usuario
                          DetallarEditsPasadosDeSmallIntPlanillasProvinciales;

                          //Pongo en focus el primer Edit que tenga un valor mayor que 10 millones
                          PosicionarEnEditSePasaDeSmallIntPlanillasProvinciales;
                        end;
                end
                  else
                    begin
                      //Faltan números importantes. (Se detalla la procedencia exacta)
                      DetallarEditsNumerosFaltantesPlanillasProvinciales;

                      //Posiciono mi cursor en el primer Edit que está vacío
                      PosicionarEnEditVacioPlanillasProvinciales;
                    end;
            end;

  {except
      //Limpio los DBEdits y los DBMemos de las Planillas Provinciales
      LimpiarDBEditsYMemosCMG;
      ShowMessage('Hubo una excepción');
  end;}

//Fin del procedimiento
end;

procedure TfrmPrincipal.btnModificarValoresPlanillasProvincialesClick(Sender: TObject);
var
  anno: Integer;
  provincia: AnsiString;
begin
  //Lleno los campos para conformar el caption de la forma
  anno:= DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value;
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

  //Valido de acuerdo a la opción seleccioado en el ComboBox de las Provincias
  if (provincia <> 'USN') then
    begin
      //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
      frmPrincipal.Caption:= 'HC-CAP 2008, Modificando una Planilla, provincia ' + provincia + ' , año ' + IntToStr(anno)  + '.';
    end
      else
        begin
          //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
          frmPrincipal.Caption:= 'HC-CAP 2008, Modificando una Planilla, Unidades de Subordinación Nacional (USN), año ' + IntToStr(anno) + '.';
        end;

  //Deshabilito las opciones de "Edición" y "Ver"
  MenuEdicion.Enabled:= False;
  MenuVer.Enabled:= False;

  //Impido el cambio de páginas en el PageControlTodo
  Ocioso:= False;
    
  //Deshabilito la pestaña de Puestos de Trabajo
  TabSheetControlDelSistema.Enabled:= False;

  //Deshabilito la pestaña de Planillas de CH
  TabSheetHospitalesDeExcelencia.Enabled:= False;  

  //Deshabilito los ComboBox de provincias, de las Planillas Provinciales
  DeshabilitarComboBoxProvinciasPlanillasProvinciales;

  //Oculto los botones de "Nuevos" de las Planillas Provinciales
  OcultarBotonesNuevosPlanillasProvinciales;

  //Oculto el SpeedButton de "Nueva" de las Planillas Provinciales
  SpeedButtonNuevaPlanilla.Visible:= False;

  //Oculto la opción de "Nueva Planilla" del MainMenu
  MenuOpcionAgregarPlanillaProvincial.Visible:= False;

  //Deshabilito los botones de "Modificar Valores" de las Planillas Provinciales
  DeshabilitarBotonesModificarValoresPlanillasProvinciales;

  //Deshabilito el SpeedButton de "Modificar"
  SpeedButtonModificarPlanilla.Enabled:= False;

  //Deshabilito la opoción de "Modificar Planilla" del MainMenu
  MenuOpcionModificarPlanillaProvincial.Enabled:= False;

  //Muestro los botones de "Guardar" de las Planillas Provinciales
  MostrarBotonesGuardarPlanillasProvinciales;

  //Oculto los botones de "Eliminar Valores" de las Planillas Provinciales
  OcultarBotonesEliminarValoresPlanillasProvinciales;

  //Oculto el SpeedButton de "Eliminar" de las Planillas Provinciales
  SpeedButtonEliminarPlanilla.Visible:= False;

  //Oculto la opción de "Eliminar Planilla" del MainMenu
  MenuOpcionEliminarPlanillaProvincial.Visible:= False;

  //Cambio el Caption de botones "Cancelar" X "Cancelar Cambios"
  CambiarCaptionCancelarXCancelarCambiosPlanillasProvinciales;

  //Muestro los botones de "Cancelar" de las Planillas Provinciales
  MostrarBotonesCancelarPlanillasProvinciales;

  //Cambiar el hint a los botones de "Cancelar" de las Planillas Provinciales (cancelar cambios)
  CambiarHintBotonesCancelarPlanillasProvinciales('Cancelar cambios realizados');

  //Oculto los botones de "Generar Reporte" de las Planillas Provinciales
  OcultarBotonesGenerarReportePlanillasProvinciales;

  //Oculto el SpeedButton de "Generar Reporte" de las Planillas Provinciales
  SpeedButtonGenerarReportePlanilla.Visible:= False;

  //Oculto la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;  

  //Guardo los valores de los componentes DB de las Planillas Provinciales en una Planilla Temporal
  RellenarPlanillaDBTemporalPlanillasProvinciales;

  //Habilito los componentes de las Planillas Provinciales
  HabilitarDBEditsYMemosPlanillasProvinciales;

  //Deshabilito los DBGrids para que no se pueda escoge otro año
  DeshabilitarDBGridsPlanillasProvinciales;
end;

procedure TfrmPrincipal.btnGuardarValoresPlanillasProvincialesClick(Sender: TObject);
var
  anno: Integer;
  provincia: string;
begin
  anno:= DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value;
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;
  
  //Compruebo si aun los DBEdits y DBMemos están llenos en la Planilla CMG
  if (LosDBEditsYDBMemosEstanLlenosPlanillasProvinciales) then
    begin
      //Compruebo si aun los valores en los DBEdits no se pasan de 10 millones en la Planilla Provincial
      if (LosDBEditsSePasanDeSmallIntPlanillasProvinciales = false) then
        //No hay lio, procedo a guardar cambios sin preámbulo.
        begin
          //Habilito los ComboBox de provincias, de las Planillas Provinciales
          HabilitarComboBoxProvinciasPlanillasProvinciales;

          //Muestro los botones de "Nuevos" de las Planillas Provinciales
          MostrarBotonesNuevosPlanillasProvinciales;

          //Muestro el SpeedButton de "Nueva"
          SpeedButtonNuevaPlanilla.Visible:= True;

          //Muestro la opción de "Nueva Planilla" del MainMenu
          MenuOpcionAgregarPlanillaProvincial.Visible:= True;

          //Habilito los botones de "Modificar Valores" de las Planillas Provinciales
          HabilitarBotonesModificarValoresPlanillasProvinciales;

          //Habilito el SpeedButton de "Modificar"
          SpeedButtonModificarPlanilla.Enabled:= True;

          //Habilito la opción de "Modificar Planilla" del MainMenu
          MenuOpcionModificarPlanillaProvincial.Enabled:= True;

          //Oculto los botones de "Guardar" de las Planillas Provinciales
          OcultarBotonesGuardarPlanillasProvinciales;

          //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
          MostrarBotonesEliminarValoresPlanillasProvinciales;

          //Muestro el SpeedButton de "Eliminar"
          SpeedButtonEliminarPlanilla.Visible:= True;

          //Muestro la opción de "Eliminar Planilla" del MainMenu
          MenuOpcionEliminarPlanillaProvincial.Visible:= True;

          //Oculto los botones de "Cancelar" de las Planillas Provinciales
          OcultarBotonesCancelarPlanillasProvinciales;

          //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
          MostrarBotonesGenerarReportePlanillasProvinciales;

          //Muestro el SpeedButton de "Generar Reporte"
          SpeedButtonGenerarReportePlanilla.Visible:= True;

          //Muestro la opción de "Generar Reporte" en el MainMenu
          MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

          //Deshabilito los DBEdits y Memos de las Planillas Provinciales
          DeshabilitarDBEditsYMemosPlanillasProvinciales;

          //Habilito los BDGrids para que se pueda escoger otro año
          HabilitarDBGridsPlanillasProvinciales;

          //Refresco los DBGrids de las Planillas Provinciales
          RefrescarDBGridsPlanillasProvinciales;
          DBGridAnnoParte1PlanillasProvinciales.SelectedRows.Refresh;

          //Pongo el Focus en los DBGrids de las Planillas Provinciales
          PonerFocusEnDBGridsPlanillasProvinciales;

          //Inserto la Traza de acuerdo a la opción seleccionada en el ComboBox de las Provincias
          if (provincia <> 'USN') then
            begin
              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Modificó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de la provincia ' + provincia + '.');
            end
              else
                begin
                  //Inserto la Traza
                  DptoCapacitacion.GuardarTrazaDelSistema('Modificó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de las Unidades de Subordinación Nacional (USN).');
                end;

          //Actualizo todas las trazas
          DptoCapacitacion.MostrarTodasLasTrazas;

          //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
          frmPrincipal.Caption:= 'HC-CAP 2008';

          //Habilito las opciones de "Edición" y "Ver"
          MenuEdicion.Enabled:= True;
          MenuVer.Enabled:= True;

          //Permito el cambio de páginas en el PageControlTodo
          Ocioso:= True;

          //Habilito la pestaña de Puestos de Trabajo
          TabSheetControlDelSistema.Enabled:= True;

          //Habilito la pestaña de Planillas de CH
          TabSheetHospitalesDeExcelencia.Enabled:= True;

          //Destruyo la Planilla Temporal
          TempPlanilla.Destroy;
        end
          else
            begin //** Hay valores mayores de 10 millones
              //Debo detallar su localización al usuario
              DetallarDBEditsPasadosDeSmallIntPlanillasProvinciales;

              //Pongo en focus el primer DCEdit que tenga un valor mayor que 10 millones
              PosicionarEnDBEditSePasaDeSmallIntPlanillasProvinciales;
            end;
    end
      else
        // La planilla ahora no está totalmente llena (ahora faltan números importantes y/o texto poco vital).
        begin
          //Debo comprobar si ahora faltan números importantes
          if (LosDBEditsEstanLlenosPlanillasProvinciales) then
            //No faltan números importantes, solo texto poco vital. Paso a la siguiente verificación.
            begin
              //Compruebo si aun los los valores en los DBEdits no se pasan de 10 millones en la Planilla Provincial
              if (LosDBEditsSePasanDeSmallIntPlanillasProvinciales = false) then
                //No hay lio, procedo a guardar con relleno "Sin comentarios".
                begin
                  //Pongo el texto "Sin comentarios" en los DBMemos vacios de las Planillas Provinciales
                  PonerSinComentariosDBMemosPlanillasProvinciales;

                  //Habilito los ComboBox de provincias, de las Planillas Provinciales
                  HabilitarComboBoxProvinciasPlanillasProvinciales;

                  //Muestro los botones de "Nuevos" de las Planillas Provinciales
                  MostrarBotonesNuevosPlanillasProvinciales;

                  //Muestro el SpeedButton de "Nueva"
                  SpeedButtonNuevaPlanilla.Visible:= True;

                  //Muestro la opción de "Nueva Planilla" del MainMenu
                  MenuOpcionAgregarPlanillaProvincial.Visible:= True;

                  //Habilito los botones de "Modificar Valores" de las Planillas Provinciales
                  HabilitarBotonesModificarValoresPlanillasProvinciales;

                  //Habilito el SpeedButton de "Modificar"
                  SpeedButtonModificarPlanilla.Enabled:= True;

                  //Habilito la opción de "Modificar Planilla" del MainMenu
                  MenuOpcionModificarPlanillaProvincial.Enabled:= True;

                  //Oculto los botones de "Guardar" de las Planillas Provinciales
                  OcultarBotonesGuardarPlanillasProvinciales;

                  //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
                  MostrarBotonesEliminarValoresPlanillasProvinciales;

                  //Muestro el SpeedButton de "Eliminar"
                  SpeedButtonEliminarPlanilla.Visible:= True;

                  //Muestro la opción de "Eliminar Planilla" del MainMenu
                  MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                  //Oculto los botones de "Cancelar" de las Planillas Provinciales
                  OcultarBotonesCancelarPlanillasProvinciales;

                  //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
                  MostrarBotonesGenerarReportePlanillasProvinciales;

                  //Muestro el SpeedButton de "Generar Reporte"
                  SpeedButtonGenerarReportePlanilla.Visible:= True;

                  //Muestro la opción de "Generar Reporte" en el MainMenu
                  MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

                  //Deshabilito los DBEdits y Memos de las Planillas Provinciales
                  DeshabilitarDBEditsYMemosPlanillasProvinciales;

                  //Habilito los BDGrids para que se pueda escoger otro año
                  HabilitarDBGridsPlanillasProvinciales;

                  //Refresco los DBGrids de las Planillas Provinciales
                  RefrescarDBGridsPlanillasProvinciales;
                  DBGridAnnoParte1PlanillasProvinciales.SelectedRows.Refresh;

                  //Pongo el Focus en los DBGrids de las Planillas Provinciales
                  PonerFocusEnDBGridsPlanillasProvinciales;

                  //Inserto la Traza de acuerdo a la opción seleccionada en el ComboBox de las Provincias
                  if (provincia <> 'USN') then
                    begin
                      //Inserto la Traza
                      DptoCapacitacion.GuardarTrazaDelSistema('Modificó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de la provincia ' + provincia + '.');
                    end
                      else
                        begin
                          //Inserto la Traza
                          DptoCapacitacion.GuardarTrazaDelSistema('Modificó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de las Unidades de Subordinación Nacional (USN).');
                        end;

                  //Actualizo todas las trazas
                  DptoCapacitacion.MostrarTodasLasTrazas;

                  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                  frmPrincipal.Caption:= 'HC-CAP 2008';

                  //Habilito las opciones de "Edición" y "Ver"
                  MenuEdicion.Enabled:= True;
                  MenuVer.Enabled:= True;

                  //Permito el cambio de páginas en el PageControlTodo
                  Ocioso:= True;

                  //Habilito la pestaña de Puestos de Trabajo
                  TabSheetControlDelSistema.Enabled:= True;

                  //Habilito la pestaña de Planillas de CH
                  TabSheetHospitalesDeExcelencia.Enabled:= True;

                  //Destruyo la Planilla Temporal
                  TempPlanilla.Destroy;
              end
            else
              begin  //Hay valores mayores de 10 millones
                //** Debo detallar su localización al usuario
                DetallarDBEditsPasadosDeSmallIntPlanillasProvinciales;

                //Pongo en focus el primer DBEdit que tenga un valor mayor que 10 millones
                PosicionarEnDBEditSePasaDeSmallIntPlanillasProvinciales;
              end;
          end
            else
              begin //** Faltan números importantes.
                //Se detalla la procedencia exacta de los datos numéricos faltantes
                DetallarDBEditsNumerosFaltantesPlanillasProvinciales;

                //Pongo en focus el primer DBEdit que esté vacío
                PosicionarEnDBEditVacioPlanillasProvinciales;
              end;
    end;
end;

procedure TfrmPrincipal.btnEliminarValoresPlanillasProvincialesClick(
  Sender: TObject);
  var
  anno: Integer;
  provincia: string;
  frase: string;
begin
  //Lleno las variables con el año seleccionado en el primer DBGrid y la provincia seleccionada en el primer ComboBox
  anno:= DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value;
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

  //Valido de acuerdo a la opción seleccioado en el ComboBox de las Provincias
  if (provincia <> 'USN') then
    begin
      //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
      frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Eliminando una Planilla, provincia de ' + provincia + ', año ' + IntToStr(anno) + '.';
    end
      else
        begin
          //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
          frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Eliminando una Planilla, Unidades de Subordinación Nacional (USN), año ' + IntToStr(anno) + '.';
        end;

  //Deshabilito los ComboBox de provincias, de las Planillas Provinciales
  DeshabilitarComboBoxProvinciasPlanillasProvinciales;

  //Deshabilito los botones de "Nuevos" de las Planillas Provinciales
  DeshabilitarBotonesNuevosPlanillasProvinciales;

  //Deshabilito el SpeedButton de "Nueva" de las Planillas Provinciales
  SpeedButtonNuevaPlanilla.Enabled:= False;

  //Deshabilito la opción de "Nueva Planilla" en el MainMenu
  MenuOpcionAgregarPlanillaProvincial.Enabled:= False;

  //Deshabilito los botones de "Modificar Valores" de las Planillas Provinciales
  DeshabilitarBotonesModificarValoresPlanillasProvinciales;

  //Deshabilito el SpeedButton de "Modificar" de las Planillas Provinciales
  SpeedButtonModificarPlanilla.Enabled:= False;

  //Deshabilito la opción de "Modificar Planilla" del MainMenu
  MenuOpcionModificarPlanillaProvincial.Enabled:= False;

  //Deshabilito los botones de "Eliminar valores" de las Planillas Provinciales
  DeshabilitarBotonesEliminarValoresPlanillasProvinciales;

  //Deshabilito el SpeedButton de "Eliminar" de las Planillas Provinciales
  SpeedButtonEliminarPlanilla.Enabled:= False;

  //Deshabilito la opción de "Eliminar Planilla" del MainMenu
  MenuOpcionEliminarPlanillaProvincial.Enabled:= False;

  //Deshabilito los botones de "Generar Reporte" de las Planillas Provinciales
  DeshabilitarBotonesGenerarReportePlanillasProvinciales;

  //Deshabilito el SpeedButton de "Generar Reporte" de las Planillas Provinciales
  SpeedButtonGenerarReportePlanilla.Enabled:= False;

  //Deshabilito la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Enabled:= False;

  //Compongo la frase a mostrar de acuerdo a la opción seleccioado en el ComboBox de las Provincias
  if (provincia <> 'USN') then
    begin
      //Compongo la frase
      frase:= 'provincia de ' + provincia + ')?';
    end
      else
        begin
          //Compongo la frase
          frase:= 'Unidades de Subordinación Nacional (USN) )?';
        end;

  //Muestro mensaje al usuario una confirmación de borrado
  if MessageDlg('¿Desea eliminar la Planilla seleccionada (año ' + IntToStr(anno) + ', ' + frase, mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      begin
        //Realizo el borrado de la Planilla en la BD
        DptoCapacitacion.EliminarPlanilla(anno, provincia);

        //Actualizar los DBGrids de las Planillas Provinciales
        DptoCapacitacion.MostrarPlanillasProvinciales(provincia);

        //Inserto la Traza de acuerdo a la opción seleccioada en el ComboBox de las Provincias
        if (provincia <> 'USN') then
          begin
            //Inserto la Traza
            DptoCapacitacion.GuardarTrazaDelSistema('Eliminó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de la provincia ' + provincia + '.');
          end
            else
              begin
                //Inserto la Traza
                DptoCapacitacion.GuardarTrazaDelSistema('Eliminó una Planilla Provincial correspondiente al año ' + IntToStr(anno) + ' de las Unidades de Subordinación Nacional (USN).');
              end;

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;

        //Pongo el Focus en los DBGrids de las Planillas Provinciales
        PonerFocusEnDBGridsPlanillasProvinciales;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HC-CAP 2008';

        //Muestro un mensaje de información del borrado ya realizado, de acuerdo a la opción seleccioada en el ComboBox de las Provincias
        if (provincia <> 'USN') then
          begin
            //Muestro mensaje de información del borrado ya realizado
            MessageDlg('La Planilla del año ' + IntToStr(anno)+ ' de la provincia ' + provincia + ' ha sido eliminada.', mtInformation, [mbOk], 0);  //, mbOk
          end
            else
              begin
                //Muestro mensaje de información del borrado ya realizado
                MessageDlg('La Planilla del año ' + IntToStr(anno)+ ' de las Unidades de Subordinación Nacional (USN), ha sido eliminada.', mtInformation, [mbOk], 0);  //, mbOk
              end;

        //Habilito los ComboBox de provincias, de las Planillas Provinciales
        HabilitarComboBoxProvinciasPlanillasProvinciales;

        //Habilito los botones de "Nuevos" de las Planillas Provinciales
        HabilitarBotonesNuevosPlanillasProvinciales;

        //Habilito el SpeedButton de "Nueva"
        SpeedButtonNuevaPlanilla.Enabled:= True;

        //Habilito la opción de "Nueva Planilla" del MainMenu
        MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

        //Aseguro que, antes de mostrar los demás botones, los DBGrid no estén vacios
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial = True)
          then
            begin
              //Habilito los botones de "Modificar" de las Planillas Provinciales
              HabilitarBotonesModificarValoresPlanillasProvinciales;

              //Habilito el SpeedButton de "Modificar"
              SpeedButtonModificarPlanilla.Enabled:= True;

              //Habilito la opción de "Modificar Planilla" del MainMenu
              MenuOpcionModificarPlanillaProvincial.Enabled:= True;

              //Habilito los botones de "Eliminar valores" de las Planillas Provinciales
              HabilitarBotonesEliminarValoresPlanillasProvinciales;

              //Habilito el SpeedButton de "Eliminar"
              SpeedButtonEliminarPlanilla.Enabled:= True;

              //Habilito la opción de "Eliminar Planilla" del MainMenu
              MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

              //Habilito los botones de "Generar Reporte" de las Planillas Provinciales
              HabilitarBotonesGenerarReportePlanillasProvinciales;

              //Habilito el SpeedButton de "Generar Reporte"
              SpeedButtonGenerarReportePlanilla.Enabled:= True;

              //Habilito la opción de "Generar Reporte" en el MainMenu
              MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;
            end;
      end
        else
          begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
            //Habilito los ComboBox de provincias, de las Planillas Provinciales
            HabilitarComboBoxProvinciasPlanillasProvinciales;

            //Habilito los botones de "Nuevos" de las Planillas Provinciales
            HabilitarBotonesNuevosPlanillasProvinciales;

            //Habilito el SpeedButton de "Nueva"
            SpeedButtonNuevaPlanilla.Enabled:= True;

            //Habilito la opción de "Nueva Planilla" del MainMenu
            MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

            //Habilito los botones de "Modificar Valores" de las Planillas Provinciales
            HabilitarBotonesModificarValoresPlanillasProvinciales;

            //Habilito el SpeedButton de "Modificar"
            SpeedButtonModificarPlanilla.Enabled:= True;

            //Habilito la opción de "Modificar Planilla" del MainMenu
            MenuOpcionModificarPlanillaProvincial.Enabled:= True;

            //Habilito los botones de "Eliminar valores" de las Planillas Provinciales
            HabilitarBotonesEliminarValoresPlanillasProvinciales;

            //Habilito el SpeedButton de "Eliminar"
            SpeedButtonEliminarPlanilla.Enabled:= True;

            //Habilito la opción de "Eliminar Planilla" del MainMenu
            MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

            //Habilito los botones de "Generar Reporte" de las Planillas Provinciales
            HabilitarBotonesGenerarReportePlanillasProvinciales;

            //Habilito el SpeedButton de "Generar Reporte"
            SpeedButtonGenerarReportePlanilla.Enabled:= True;

            //Habilito la opción de "Generar Reporte" en el MainMenu
            MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;

            //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmPrincipal.Caption:= 'HC-CAP 2008';

            //Pongo el Focus en los DBGrids de las Planillas Provinciales
            PonerFocusEnDBGridsPlanillasProvinciales;
          end;
  
end;

procedure TfrmPrincipal.btnCancelarPlanillasProvincialesClick(
  Sender: TObject);
begin
  //** Debo verificar si es una cancelación de "Nueva Plantilla" o de "Modificación" **

  //Verifico si es una cancelación de "Nueva Plantilla"
  if (frmPrincipal.btnNuevosValoresParte1PlanillasProvinciales.Enabled = False)
    then
      begin
        //Habilito los ComboBox de provincias, de las Planillas Provinciales
        HabilitarComboBoxProvinciasPlanillasProvinciales;

        //Habilito los botones de "Nuevos" de las Planillas Provinciales
        HabilitarBotonesNuevosPlanillasProvinciales;

        //Habilito el SpeedButton de "Nueva"
        SpeedButtonNuevaPlanilla.Enabled:= True;

        //Habilito la opción de "Nueva Planilla" del MainMenu
        MenuOpcionAgregarPlanillaProvincial.Enabled:= True; 

        //Oculto los botones de "Insertar Valores" de las Planillas Provinciales
        OcultarBotonesInsertarValoresPlanillasProvinciales;

        if (DptoCapacitacion.ExisteConexionConLaBD)
          then
            begin
              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial)
                then
                  begin
                    //Habilito los botones de "Modificar" de las Planillas Provinciales
                    HabilitarBotonesModificarValoresPlanillasProvinciales;

                    //Muestro los botones de "Modificar" de las Planillas Provinciales
                    MostrarBotonesModificarValoresPlanillasProvinciales;

                    //Habilito el SpeedButton de "Modificar"
                    SpeedButtonModificarPlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Modificar"
                    SpeedButtonModificarPlanilla.Visible:= True;

                    //Habilito la opción de "Modificar Planilla" del MainMenu
                    MenuOpcionModificarPlanillaProvincial.Enabled:= True;

                    //Muestro la opción de "Modificar Planilla" del MainMenu
                    MenuOpcionModificarPlanillaProvincial.Visible:= True;
                  end
                    else
                      begin
                        //Deshabilito los botones de "Modificar" de las Planillas Provinciales
                        DeshabilitarBotonesModificarValoresPlanillasProvinciales;

                        //Muestro los botones de "Modificar" de las Planillas Provinciales
                        MostrarBotonesModificarValoresPlanillasProvinciales;

                        //Deshabilito el SpeedButton de "Modificar"
                        SpeedButtonModificarPlanilla.Enabled:= False;

                        //Muestro el SpeedButton de "Modificar"
                        SpeedButtonModificarPlanilla.Visible:= True;

                        //Deshabilito la opción de "Modificar Planilla" del MainMenu
                        MenuOpcionModificarPlanillaProvincial.Enabled:= False;

                        //Muestro la opción de "Modificar Planilla" del MainMenu
                        MenuOpcionModificarPlanillaProvincial.Visible:= True;
                      end;
            end;

        //Limpio los Edits y los Memos de las Planillas Provinciales
        LimpiarEditsYMemosPlanillasProvinciales;

        //Escondo los Edits y los Memos de las Planillas Provinciales
        OcultarEditsYMemosPlanillasProvinciales;

        //Muestro los DBEdits y los DBMemos de las Planillas Provinciales
        MostrarDBEditsYMemosPlanillasProvinciales;

        //Hago invisible el label (CMG), referentes al año.
        OcultarLabelsAnnoPlanillasProvinciales;

        //Deshabilito el label (CMG), referentes al año.
        DeshabilitarLabelsAnnoPlanillasProvinciales;

        //Hago invisible el DateTime (CMG), referentes al año.
        OcultarDateTimeAnnoPlanillasProvinciales;
        
        //Deshabilito el DateTime (CMG), referentes al año.
        DeshabilitarDateTimeAnnoPlanillasProvinciales;

        //Habilito los DBGrids de las Planillas Provinciales
        HabilitarDBGridsPlanillasProvinciales;

        //Pongo el Focus en los DBGrids de las Planillas Provinciales
        PonerFocusEnDBGridsPlanillasProvinciales;
      end;

  //Verifico si es una cancelación de "Modificación"
  if (   (frmPrincipal.btnModificarValoresParte1PlanillasProvinciales.Enabled = False) and (frmPrincipal.btnNuevosValoresParte1PlanillasProvinciales.Visible = False)   )
    then
      begin
        //Habilito los ComboBox de provincias, de las Planillas Provinciales
        HabilitarComboBoxProvinciasPlanillasProvinciales;

        //Muestro los botones de "Nuevos" de las Planillas Provinciales
        MostrarBotonesNuevosPlanillasProvinciales;

        //Muestro el SpeedButton de "Nueva"
        SpeedButtonNuevaPlanilla.Visible:= True;

        //Muestro la opción de "Nueva Planilla" del MainMenu
        MenuOpcionAgregarPlanillaProvincial.Visible:= True;

        //Habilito los botones de "Modificar Valores" de las Planillas Provinciales
        HabilitarBotonesModificarValoresPlanillasProvinciales;

        //Habilito el SpeedButton de "Modificar" de las Planillas Provinciales
        SpeedButtonModificarPlanilla.Enabled:= True;

        //Habilito la opción de "Modificar Planilla" del MainMenu
        MenuOpcionModificarPlanillaProvincial.Enabled:= True;
        
        //Oculto los botones de "Guardar" de las Planillas Provinciales
        OcultarBotonesGuardarPlanillasProvinciales;

        //Vuelo a poner los valores anteriores en los componentes
        VaciarPlanillaDBTemporalPlanillasProvinciales;

        //Habilito los BDGrids para que se pueda escoger otro año
        HabilitarDBGridsPlanillasProvinciales;

        //Pongo el Focus en los DBGrids de las Planillas Provinciales
        PonerFocusEnDBGridsPlanillasProvinciales;
      end;

  if (DptoCapacitacion.ExisteConexionConLaBD)
    then
      begin
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial)
          then
            begin
              //Habilito los botones de "Eliminar Valores" de las Planillas Provinciales
              HabilitarBotonesEliminarValoresPlanillasProvinciales;

              //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
              MostrarBotonesEliminarValoresPlanillasProvinciales;

              //Habilito el SpeedButton de "Eliminar" de las Planillas Provinciales
              SpeedButtonEliminarPlanilla.Enabled:= True;

              //Muestro el SpeedButton de "Eliminar" de las Planillas Provinciales
              SpeedButtonEliminarPlanilla.Visible:= True;

              //Habilito la opción de "Eliminar Planilla" del MainMenu
              MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

              //Muestro la opción de "Eliminar Planilla" del MainMenu
              MenuOpcionEliminarPlanillaProvincial.Visible:= True;

              //Habilito los botones de "Generar Reporte" de las Planillas Provinciales
              HabilitarBotonesGenerarReportePlanillasProvinciales;

              //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
              MostrarBotonesGenerarReportePlanillasProvinciales;

              //Habilito el SpeedButton de "Generar Reporte" de las Planillas Provinciales
              SpeedButtonGenerarReportePlanilla.Enabled:= True;

              //Muestro el SpeedButton de "Generar Reporte" de las Planillas Provinciales
              SpeedButtonGenerarReportePlanilla.Visible:= True;

              //Habilito la opción de "Generar Reporte" del MainMenu
              MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;

              //Muestro la opción de "Generar Reporte" en el MainMenu
              MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;
            end
              else
                begin
                  //Deshabilito los botones de "Eliminar Valores" de las Planillas Provinciales
                  DeshabilitarBotonesEliminarValoresPlanillasProvinciales;

                  //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
                  MostrarBotonesEliminarValoresPlanillasProvinciales;

                  //Deshabilito el SpeedButton de "Eliminar" de las Planillas Provinciales
                  SpeedButtonEliminarPlanilla.Enabled:= False;

                  //Muestro el SpeedButton de "Eliminar" de las Planillas Provinciales
                  SpeedButtonEliminarPlanilla.Visible:= True;

                  //Deshabilito la opción de "Eliminar Planilla" del MainMenu
                  MenuOpcionEliminarPlanillaProvincial.Enabled:= False;

                  //Muestro la opción de "Eliminar Planilla" del MainMenu
                  MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                  //Deshabilito los botones de "Generar Reporte" de las Planillas Provinciales
                  DeshabilitarBotonesGenerarReportePlanillasProvinciales;

                  //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
                  MostrarBotonesGenerarReportePlanillasProvinciales;

                  //Deshabilito el SpeedButton de "Generar Reporte" de las Planillas Provinciales
                  SpeedButtonGenerarReportePlanilla.Enabled:= False;

                  //Muestro el SpeedButton de "Generar Reporte" de las Planillas Provinciales
                  SpeedButtonGenerarReportePlanilla.Visible:= True;

                  //Deshabilito la opción de "Generar Reporte" del MainMenu
                  MenuOpcionGenerarReportePlanillaProvincial.Enabled:= False;

                  //Muestro la opción de "Generar Reporte" en el MainMenu
                  MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;
                end;
      end;

  //Oculto los botones de "Cancelar" de las Planillas Provinciales
  OcultarBotonesCancelarPlanillasProvinciales;

  //Deshabilito los DBEdits y Memos de las Planillas Provinciales
  DeshabilitarDBEditsYMemosPlanillasProvinciales;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';

  //Habilito las opciones de "Edición" y "Ver"
  MenuEdicion.Enabled:= True;
  MenuVer.Enabled:= True;

  //Permito el cambio de páginas en el PageControlTodo
  Ocioso:= True;

  //Habilito la pestaña de Puestos de Trabajo
  TabSheetControlDelSistema.Enabled:= True;

  //Habilito la pestaña de Planillas de CH
  TabSheetHospitalesDeExcelencia.Enabled:= True;
end;


{-------------------------------------------------------------------------}
    //*** Acciones programados para las pestañas (Planillas Provinciales)
{-------------------------------------------------------------------------}

procedure TfrmPrincipal.TabSheetParte1PlanillasProvincialesShow(Sender: TObject);
begin
  if (DBGridAnnoParte1PlanillasProvinciales.Enabled = True ) then  DBGridAnnoParte1PlanillasProvinciales.SetFocus
    else
      if (btnNuevosValoresParte1PlanillasProvinciales.Enabled= False)
        then edtTotalEntOrgCMG.SetFocus;
end;

procedure TfrmPrincipal.TabSheetParte2PlanillasProvincialesShow(Sender: TObject);
begin
    if (DBGridAnnoParte2PlanillasProvinciales.Enabled = True) then  DBGridAnnoParte2PlanillasProvinciales.SetFocus
    else
      if (btnNuevosValoresParte2PlanillasProvinciales.Enabled= False)
        then edtGradEnEmpInternasCMG.SetFocus;
end;
                                          
procedure TfrmPrincipal.TabSheetParte3PlanillasProvincialesShow(Sender: TObject);
begin
    if (DBGridAnnoParte3PlanillasProvinciales.Enabled = True) then  DBGridAnnoParte3PlanillasProvinciales.SetFocus
    else
      if (btnNuevosValoresParte3PlanillasProvinciales.Enabled= False)
        then edtInstTotalUtilEnCapacCMG.SetFocus;
end;

procedure TfrmPrincipal.TabSheetParte4PlanillasProvincialesShow(Sender: TObject);
begin
    if (DBGridAnnoParte4PlanillasProvinciales.Enabled = True) then  DBGridAnnoParte4PlanillasProvinciales.SetFocus
    else
      if (btnNuevosValoresParte4PlanillasProvinciales.Enabled= False)
        then edtMaestriasXMatricCMG.SetFocus;
end;

procedure TfrmPrincipal.TabSheetParte5PlanillasProvincialesShow(Sender: TObject);
begin
    if (DBGridAnnoParte5PlanillasProvinciales.Enabled = True)
      then
        begin
          DBGridAnnoParte5PlanillasProvinciales.SetFocus;
        end
          else
            if (btnNuevosValoresParte5PlanillasProvinciales.Enabled= False)
              then edtTotalTrabNoIdoneosCMG.SetFocus;
end;




procedure TfrmPrincipal.TabSheetParte6PlanillasProvincialesShow(Sender: TObject);
begin
    if (DBGridAnnoParte6PlanillasProvinciales.Enabled = True) then  DBGridAnnoParte6PlanillasProvinciales.SetFocus
    else
      if (btnNuevosValoresParte6PlanillasProvinciales.Enabled= False)
        then MemoValoracionCualitativaDelProcesoCapacCMG.SetFocus;    
end;


{---------------------------------------------------------------------------}
//            *** Habilitación de botones de las Planillas Provinciales ***
{---------------------------------------------------------------------------}

//** Habilitar Botones de "Nuevos" **

procedure TfrmPrincipal.HabilitarBotonesNuevosPlanillasProvinciales;
begin
  //* Habilito los botones de "Nuevos" de las Planillas Provinciales
  btnNuevosValoresParte1PlanillasProvinciales.Enabled:= True;
  btnNuevosValoresParte2PlanillasProvinciales.Enabled:= True;
  btnNuevosValoresParte3PlanillasProvinciales.Enabled:= True;
  btnNuevosValoresParte4PlanillasProvinciales.Enabled:= True;
  btnNuevosValoresParte5PlanillasProvinciales.Enabled:= True;
  btnNuevosValoresParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Insertar Valores" **

procedure TfrmPrincipal.HabilitarBotonesInsertarValoresPlanillasProvinciales;
begin
  //* Habilito los botones de "Insertar Valores" de las Planillas Provinciales
  btnInsertarParte1PlanillasProvinciales.Enabled:= True;
  btnInsertarParte2PlanillasProvinciales.Enabled:= True;
  btnInsertarParte3PlanillasProvinciales.Enabled:= True;
  btnInsertarParte4PlanillasProvinciales.Enabled:= True;
  btnInsertarParte5PlanillasProvinciales.Enabled:= True;
  btnInsertarParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Modificar Valores" **

procedure TfrmPrincipal.HabilitarBotonesModificarValoresPlanillasProvinciales;
begin
  //* Habilito los botones de "Modificar Valores" de las Planillas Provinciales
  btnModificarValoresParte1PlanillasProvinciales.Enabled:= True;
  btnModificarValoresParte2PlanillasProvinciales.Enabled:= True;
  btnModificarValoresParte3PlanillasProvinciales.Enabled:= True;
  btnModificarValoresParte4PlanillasProvinciales.Enabled:= True;
  btnModificarValoresParte5PlanillasProvinciales.Enabled:= True;
  btnModificarValoresParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Guardar" **

procedure TfrmPrincipal.HabilitarBotonesGuardarPlanillasProvinciales;
begin
  //* Habilito los botones de "Guardar" de las Planillas Provinciales
  btnGuardarValoresParte1PlanillasProvinciales.Enabled:= True;
  btnGuardarValoresParte2PlanillasProvinciales.Enabled:= True;
  btnGuardarValoresParte3PlanillasProvinciales.Enabled:= True;
  btnGuardarValoresParte4PlanillasProvinciales.Enabled:= True;
  btnGuardarValoresParte5PlanillasProvinciales.Enabled:= True;
  btnGuardarValoresParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Eliminar Valores" **

procedure TfrmPrincipal.HabilitarBotonesEliminarValoresPlanillasProvinciales;
begin
  //* Habilito los botones de "Eliminar Valores" de las Planillas Provinciales
  btnEliminarValoresParte1PlanillasProvinciales.Enabled:= True;
  btnEliminarValoresParte2PlanillasProvinciales.Enabled:= True;
  btnEliminarValoresParte3PlanillasProvinciales.Enabled:= True;
  btnEliminarValoresParte4PlanillasProvinciales.Enabled:= True;
  btnEliminarValoresParte5PlanillasProvinciales.Enabled:= True;
  btnEliminarValoresParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Cancelar" **

procedure TfrmPrincipal.HabilitarBotonesCancelarPlanillasProvinciales;
begin
  //* Habilito los botones de "Cancelar" de las Planillas Provinciales
  btnCancelarParte1PlanillasProvinciales.Enabled:= True;
  btnCancelarParte2PlanillasProvinciales.Enabled:= True;
  btnCancelarParte3PlanillasProvinciales.Enabled:= True;
  btnCancelarParte4PlanillasProvinciales.Enabled:= True;
  btnCancelarParte5PlanillasProvinciales.Enabled:= True;
  btnCancelarParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Resúmenes" **

procedure TfrmPrincipal.HabilitarBotonesResumenesPlanillasProvinciales;
begin
  //* Habilito los botones de "Resúmenes" de las Planillas Provinciales
  btnResumenesParte1PlanillasProvinciales.Enabled:= True;
  btnResumenesParte2PlanillasProvinciales.Enabled:= True;
  btnResumenesParte3PlanillasProvinciales.Enabled:= True;
  btnResumenesParte4PlanillasProvinciales.Enabled:= True;
  btnResumenesParte5PlanillasProvinciales.Enabled:= True;
  btnResumenesParte6PlanillasProvinciales.Enabled:= True;
end;

{---------------------------------------------------------}

//** Habilitar Botones de "Generar Reporte" **

procedure TfrmPrincipal.HabilitarBotonesGenerarReportePlanillasProvinciales;
begin
  //* Habilito los botones de "Generar Reporte" de las Planillas Provinciales
  btnGenerarReporteParte1PlanillasProvinciales.Enabled:= True;
  btnGenerarReporteParte2PlanillasProvinciales.Enabled:= True;
  btnGenerarReporteParte3PlanillasProvinciales.Enabled:= True;
  btnGenerarReporteParte4PlanillasProvinciales.Enabled:= True;
  btnGenerarReporteParte5PlanillasProvinciales.Enabled:= True;
  btnGenerarReporteParte6PlanillasProvinciales.Enabled:= True;

  //Habilito los botones de "Exportar Reporte a PDF" de las Planillas Provinciales
  btnExportarReporteParte1PlanillasProvinciales.Enabled:= True;
  btnExportarReporteParte2PlanillasProvinciales.Enabled:= True;
  btnExportarReporteParte3PlanillasProvinciales.Enabled:= True;
  btnExportarReporteParte4PlanillasProvinciales.Enabled:= True;
  btnExportarReporteParte5PlanillasProvinciales.Enabled:= True;
  btnExportarReporteParte6PlanillasProvinciales.Enabled:= True;
end;


{------------------------------------------------------------------------------}
//           *** Deshabilitación de botones de las Planillas Provinciales ***
{------------------------------------------------------------------------------}

//** Deshabilitar Botones de "Nuevos" **

procedure TfrmPrincipal.DeshabilitarBotonesNuevosPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Nuevos" de las Planillas Provinciales
  btnNuevosValoresParte1PlanillasProvinciales.Enabled:= False;
  btnNuevosValoresParte2PlanillasProvinciales.Enabled:= False;
  btnNuevosValoresParte3PlanillasProvinciales.Enabled:= False;
  btnNuevosValoresParte4PlanillasProvinciales.Enabled:= False;
  btnNuevosValoresParte5PlanillasProvinciales.Enabled:= False;
  btnNuevosValoresParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}

//** Deshabilitar Botones de "Insertar Valores" **

procedure TfrmPrincipal.DeshabilitarBotonesInsertarValoresPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Insertar Valores" de las Planillas Provinciales
  btnInsertarParte1PlanillasProvinciales.Enabled:= False;
  btnInsertarParte2PlanillasProvinciales.Enabled:= False;
  btnInsertarParte3PlanillasProvinciales.Enabled:= False;
  btnInsertarParte4PlanillasProvinciales.Enabled:= False;
  btnInsertarParte5PlanillasProvinciales.Enabled:= False;
  btnInsertarParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}


//** Deshabilitar Botones de "Modificar Valores" **

procedure TfrmPrincipal.DeshabilitarBotonesModificarValoresPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Modificar Valores" de las Planillas Provinciales
  btnModificarValoresParte1PlanillasProvinciales.Enabled:= False;
  btnModificarValoresParte2PlanillasProvinciales.Enabled:= False;
  btnModificarValoresParte3PlanillasProvinciales.Enabled:= False;
  btnModificarValoresParte4PlanillasProvinciales.Enabled:= False;
  btnModificarValoresParte5PlanillasProvinciales.Enabled:= False;
  btnModificarValoresParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}

//** Deshabilitar Botones de "Guardar"  **

procedure TfrmPrincipal.DeshabilitarBotonesGuardarPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Guardar" de las Planillas Provinciales
  btnGuardarValoresParte1PlanillasProvinciales.Enabled:= False;
  btnGuardarValoresParte2PlanillasProvinciales.Enabled:= False;
  btnGuardarValoresParte3PlanillasProvinciales.Enabled:= False;
  btnGuardarValoresParte4PlanillasProvinciales.Enabled:= False;
  btnGuardarValoresParte5PlanillasProvinciales.Enabled:= False;
  btnGuardarValoresParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}

//** Deshabilitar Botones de "Eliminar Valores" **

procedure TfrmPrincipal.DeshabilitarBotonesEliminarValoresPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Eliminar Valores" de las Planillas Provinciales
  btnEliminarValoresParte1PlanillasProvinciales.Enabled:= False;
  btnEliminarValoresParte2PlanillasProvinciales.Enabled:= False;
  btnEliminarValoresParte3PlanillasProvinciales.Enabled:= False;
  btnEliminarValoresParte4PlanillasProvinciales.Enabled:= False;
  btnEliminarValoresParte5PlanillasProvinciales.Enabled:= False;
  btnEliminarValoresParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}

//** Deshabilitar Botones de "Cancelar" **

procedure TfrmPrincipal.DeshabilitarBotonesCancelarPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Cancelar" de las Planillas Provinciales
  btnCancelarParte1PlanillasProvinciales.Enabled:= False;
  btnCancelarParte2PlanillasProvinciales.Enabled:= False;
  btnCancelarParte3PlanillasProvinciales.Enabled:= False;
  btnCancelarParte4PlanillasProvinciales.Enabled:= False;
  btnCancelarParte5PlanillasProvinciales.Enabled:= False;
  btnCancelarParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}

//** Deshabilitar Botones de "Resúmenes" **

procedure TfrmPrincipal.DeshabilitarBotonesResumenesPlanillasProvinciales;
begin
  //* Deshabilito los botones de "Resúmenes" de las Planillas Provinciales
  btnResumenesParte1PlanillasProvinciales.Enabled:= False;
  btnResumenesParte2PlanillasProvinciales.Enabled:= False;
  btnResumenesParte3PlanillasProvinciales.Enabled:= False;
  btnResumenesParte4PlanillasProvinciales.Enabled:= False;
  btnResumenesParte5PlanillasProvinciales.Enabled:= False;
  btnResumenesParte6PlanillasProvinciales.Enabled:= False;
end;

{---------------------------------------------------------}

//** Deshabilitar Botones de "Generar Reporte" **

procedure TfrmPrincipal.DeshabilitarBotonesGenerarReportePlanillasProvinciales;
begin
  //* Deshabilito los botones de "Generar Reporte" de las Planillas Provinciales
  btnGenerarReporteParte1PlanillasProvinciales.Enabled:= False;
  btnGenerarReporteParte2PlanillasProvinciales.Enabled:= False;
  btnGenerarReporteParte3PlanillasProvinciales.Enabled:= False;
  btnGenerarReporteParte4PlanillasProvinciales.Enabled:= False;
  btnGenerarReporteParte5PlanillasProvinciales.Enabled:= False;
  btnGenerarReporteParte6PlanillasProvinciales.Enabled:= False;

  //Deshabilito los botones de "Exportar Reporte a PDF" de las Planillas Provinciales
  btnExportarReporteParte1PlanillasProvinciales.Enabled:= False;
  btnExportarReporteParte2PlanillasProvinciales.Enabled:= False;
  btnExportarReporteParte3PlanillasProvinciales.Enabled:= False;
  btnExportarReporteParte4PlanillasProvinciales.Enabled:= False;
  btnExportarReporteParte5PlanillasProvinciales.Enabled:= False;
  btnExportarReporteParte6PlanillasProvinciales.Enabled:= False;
end;


{-------------------------------------------------------------------------}
//                  *** Ocultar botones de las Planillas Provinciales ***
{-------------------------------------------------------------------------}

//** Ocultar Botones de "Nuevos" **

procedure TfrmPrincipal.OcultarBotonesNuevosPlanillasProvinciales;
begin
  //* Oculto los botones de "Nuevos" de las Planillas Provinciales
  btnNuevosValoresParte1PlanillasProvinciales.Visible:= False;
  btnNuevosValoresParte2PlanillasProvinciales.Visible:= False;
  btnNuevosValoresParte3PlanillasProvinciales.Visible:= False;
  btnNuevosValoresParte4PlanillasProvinciales.Visible:= False;
  btnNuevosValoresParte5PlanillasProvinciales.Visible:= False;
  btnNuevosValoresParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Insertar Valores" **

procedure TfrmPrincipal.OcultarBotonesInsertarValoresPlanillasProvinciales;
begin
  //* Oculto los botones de "Insertar Valores" de las Planillas Provinciales
  btnInsertarParte1PlanillasProvinciales.Visible:= False;
  btnInsertarParte2PlanillasProvinciales.Visible:= False;
  btnInsertarParte3PlanillasProvinciales.Visible:= False;
  btnInsertarParte4PlanillasProvinciales.Visible:= False;
  btnInsertarParte5PlanillasProvinciales.Visible:= False;
  btnInsertarParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Modificar Valores" **

procedure TfrmPrincipal.OcultarBotonesModificarValoresPlanillasProvinciales;
begin
  //* Oculto los botones de "Modificar Valores" de las Planillas Provinciales
  btnModificarValoresParte1PlanillasProvinciales.Visible:= False;
  btnModificarValoresParte2PlanillasProvinciales.Visible:= False;
  btnModificarValoresParte3PlanillasProvinciales.Visible:= False;
  btnModificarValoresParte4PlanillasProvinciales.Visible:= False;
  btnModificarValoresParte5PlanillasProvinciales.Visible:= False;
  btnModificarValoresParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Guardar"  **

procedure TfrmPrincipal.OcultarBotonesGuardarPlanillasProvinciales;
begin
  //* Oculto los botones de "Guardar" de las Planillas Provinciales
  btnGuardarValoresParte1PlanillasProvinciales.Visible:= False;
  btnGuardarValoresParte2PlanillasProvinciales.Visible:= False;
  btnGuardarValoresParte3PlanillasProvinciales.Visible:= False;
  btnGuardarValoresParte4PlanillasProvinciales.Visible:= False;
  btnGuardarValoresParte5PlanillasProvinciales.Visible:= False;
  btnGuardarValoresParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Eliminar Valores" **

procedure TfrmPrincipal.OcultarBotonesEliminarValoresPlanillasProvinciales;
begin
  //* Oculto los botones de "Eliminar Valores" de las Planillas Provinciales
  btnEliminarValoresParte1PlanillasProvinciales.Visible:= False;
  btnEliminarValoresParte2PlanillasProvinciales.Visible:= False;
  btnEliminarValoresParte3PlanillasProvinciales.Visible:= False;
  btnEliminarValoresParte4PlanillasProvinciales.Visible:= False;
  btnEliminarValoresParte5PlanillasProvinciales.Visible:= False;
  btnEliminarValoresParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Cancelar" **

procedure TfrmPrincipal.OcultarBotonesCancelarPlanillasProvinciales;
begin
  //* Oculto los botones de "Cancelar" de las Planillas Provinciales
  btnCancelarParte1PlanillasProvinciales.Visible:= False;
  btnCancelarParte2PlanillasProvinciales.Visible:= False;
  btnCancelarParte3PlanillasProvinciales.Visible:= False;
  btnCancelarParte4PlanillasProvinciales.Visible:= False;
  btnCancelarParte5PlanillasProvinciales.Visible:= False;
  btnCancelarParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Resúmenes" **

procedure TfrmPrincipal.OcultarBotonesResumenesPlanillasProvinciales;
begin
  //* Oculto los botones de "Resúmenes" de las Planillas Provinciales
  btnResumenesParte1PlanillasProvinciales.Visible:= False;
  btnResumenesParte2PlanillasProvinciales.Visible:= False;
  btnResumenesParte3PlanillasProvinciales.Visible:= False;
  btnResumenesParte4PlanillasProvinciales.Visible:= False;
  btnResumenesParte5PlanillasProvinciales.Visible:= False;
  btnResumenesParte6PlanillasProvinciales.Visible:= False;
end;

{---------------------------------------------------------}

//** Ocultar Botones de "Generar Reporte" **

procedure TfrmPrincipal.OcultarBotonesGenerarReportePlanillasProvinciales;
begin
  //* Oculto los botones de "Generar Reporte"" de las Planillas Provinciales
  btnGenerarReporteParte1PlanillasProvinciales.Visible:= False;
  btnGenerarReporteParte2PlanillasProvinciales.Visible:= False;
  btnGenerarReporteParte3PlanillasProvinciales.Visible:= False;
  btnGenerarReporteParte4PlanillasProvinciales.Visible:= False;
  btnGenerarReporteParte5PlanillasProvinciales.Visible:= False;
  btnGenerarReporteParte6PlanillasProvinciales.Visible:= False;

  //Oculto los botones de "Exportar Reporte a PDF" de las Planillas Provinciales
  btnExportarReporteParte1PlanillasProvinciales.Visible:= False;
  btnExportarReporteParte2PlanillasProvinciales.Visible:= False;
  btnExportarReporteParte3PlanillasProvinciales.Visible:= False;
  btnExportarReporteParte4PlanillasProvinciales.Visible:= False;
  btnExportarReporteParte5PlanillasProvinciales.Visible:= False;
  btnExportarReporteParte6PlanillasProvinciales.Visible:= False;

  //Oculto el GroupBox de reportes
  GroupBoxReportesParte1PlanillasProvinciales.Visible:= False;
  GroupBoxReportesParte2PlanillasProvinciales.Visible:= False;
  GroupBoxReportesParte3PlanillasProvinciales.Visible:= False;
  GroupBoxReportesParte4PlanillasProvinciales.Visible:= False;
  GroupBoxReportesParte5PlanillasProvinciales.Visible:= False;
  GroupBoxReportesParte6PlanillasProvinciales.Visible:= False;
end;


{-------------------------------------------------------------------------}
//                  *** Mostrar botones de las Planillas Provinciales ***
{-------------------------------------------------------------------------}

//** Mostrar Botones de "Nuevos" **

procedure TfrmPrincipal.MostrarBotonesNuevosPlanillasProvinciales;
begin
  //* Muestro los botones de "Nuevos" de las Planillas Provinciales
  btnNuevosValoresParte1PlanillasProvinciales.Visible:= True;
  btnNuevosValoresParte2PlanillasProvinciales.Visible:= True;
  btnNuevosValoresParte3PlanillasProvinciales.Visible:= True;
  btnNuevosValoresParte4PlanillasProvinciales.Visible:= True;
  btnNuevosValoresParte5PlanillasProvinciales.Visible:= True;
  btnNuevosValoresParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Insertar Valores" **

procedure TfrmPrincipal.MostrarBotonesInsertarValoresPlanillasProvinciales;
begin
  //* Muestro los botones de "Insertar Valores" de las Planillas Provinciales
  btnInsertarParte1PlanillasProvinciales.Visible:= True;
  btnInsertarParte2PlanillasProvinciales.Visible:= True;
  btnInsertarParte3PlanillasProvinciales.Visible:= True;
  btnInsertarParte4PlanillasProvinciales.Visible:= True;
  btnInsertarParte5PlanillasProvinciales.Visible:= True;
  btnInsertarParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Modificar Valores" **

procedure TfrmPrincipal.MostrarBotonesModificarValoresPlanillasProvinciales;
begin
  //* Muestro los botones de "Modificar Valores" de las Planillas Provinciales
  btnModificarValoresParte1PlanillasProvinciales.Visible:= True;
  btnModificarValoresParte2PlanillasProvinciales.Visible:= True;
  btnModificarValoresParte3PlanillasProvinciales.Visible:= True;
  btnModificarValoresParte4PlanillasProvinciales.Visible:= True;
  btnModificarValoresParte5PlanillasProvinciales.Visible:= True;
  btnModificarValoresParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Guardar"  **

procedure TfrmPrincipal.MostrarBotonesGuardarPlanillasProvinciales;
begin
  //* Muestro los botones de "Guardar" de las Planillas Provinciales
  btnGuardarValoresParte1PlanillasProvinciales.Visible:= True;
  btnGuardarValoresParte2PlanillasProvinciales.Visible:= True;
  btnGuardarValoresParte3PlanillasProvinciales.Visible:= True;
  btnGuardarValoresParte4PlanillasProvinciales.Visible:= True;
  btnGuardarValoresParte5PlanillasProvinciales.Visible:= True;
  btnGuardarValoresParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Eliminar Valores" **

procedure TfrmPrincipal.MostrarBotonesEliminarValoresPlanillasProvinciales;
begin
  //* Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
  btnEliminarValoresParte1PlanillasProvinciales.Visible:= True;
  btnEliminarValoresParte2PlanillasProvinciales.Visible:= True;
  btnEliminarValoresParte3PlanillasProvinciales.Visible:= True;
  btnEliminarValoresParte4PlanillasProvinciales.Visible:= True;
  btnEliminarValoresParte5PlanillasProvinciales.Visible:= True;
  btnEliminarValoresParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Cancelar" **

procedure TfrmPrincipal.MostrarBotonesCancelarPlanillasProvinciales;
begin
  //* Muestro los botones de "Cancelar" de las Planillas Provinciales
  btnCancelarParte1PlanillasProvinciales.Visible:= True;
  btnCancelarParte2PlanillasProvinciales.Visible:= True;
  btnCancelarParte3PlanillasProvinciales.Visible:= True;
  btnCancelarParte4PlanillasProvinciales.Visible:= True;
  btnCancelarParte5PlanillasProvinciales.Visible:= True;
  btnCancelarParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Resúmenes" **

procedure TfrmPrincipal.MostrarBotonesResumenesPlanillasProvinciales;
begin
  //* Muestro los botones de "Resúmenes" de las Planillas Provinciales
  btnResumenesParte1PlanillasProvinciales.Visible:= True;
  btnResumenesParte2PlanillasProvinciales.Visible:= True;
  btnResumenesParte3PlanillasProvinciales.Visible:= True;
  btnResumenesParte4PlanillasProvinciales.Visible:= True;
  btnResumenesParte5PlanillasProvinciales.Visible:= True;
  btnResumenesParte6PlanillasProvinciales.Visible:= True;
end;

{---------------------------------------------------------}

//** Mostrar Botones de "Generar Reporte" **

procedure TfrmPrincipal.MostrarBotonesGenerarReportePlanillasProvinciales;
begin
  //* Muestro los botones de "Generar Reporte"" de las Planillas Provinciales
  btnGenerarReporteParte1PlanillasProvinciales.Visible:= True;
  btnGenerarReporteParte2PlanillasProvinciales.Visible:= True;
  btnGenerarReporteParte3PlanillasProvinciales.Visible:= True;
  btnGenerarReporteParte4PlanillasProvinciales.Visible:= True;
  btnGenerarReporteParte5PlanillasProvinciales.Visible:= True;
  btnGenerarReporteParte6PlanillasProvinciales.Visible:= True;

  //*Muestro los botones de "Exportar Reporte a PDF" de las Planillas Provinciales
  btnExportarReporteParte1PlanillasProvinciales.Visible:= True;
  btnExportarReporteParte2PlanillasProvinciales.Visible:= True;
  btnExportarReporteParte3PlanillasProvinciales.Visible:= True;
  btnExportarReporteParte4PlanillasProvinciales.Visible:= True;
  btnExportarReporteParte5PlanillasProvinciales.Visible:= True;
  btnExportarReporteParte6PlanillasProvinciales.Visible:= True;

  //Muestro el GroupBox de reportes
  GroupBoxReportesParte1PlanillasProvinciales.Visible:= True;
  GroupBoxReportesParte2PlanillasProvinciales.Visible:= True;
  GroupBoxReportesParte3PlanillasProvinciales.Visible:= True;
  GroupBoxReportesParte4PlanillasProvinciales.Visible:= True;
  GroupBoxReportesParte5PlanillasProvinciales.Visible:= True;
  GroupBoxReportesParte6PlanillasProvinciales.Visible:= True;
end;


{-------------------------------------------------------------------}
//*** Cambiar Caption de botones en las Planillas Provinciales ***
{-------------------------------------------------------------------}

//* Botones de "Cancelar" X "Cancelar Nueva"

procedure TfrmPrincipal.CambiarCaptionCancelarXCancelarNuevaPlanillasProvinciales;
begin
  //Cambio el Caption para tener una interfaz más amigable
  btnCancelarParte1PlanillasProvinciales.Caption:= 'Cancelar Nueva';
  btnCancelarParte2PlanillasProvinciales.Caption:= 'Cancelar Nueva';
  btnCancelarParte3PlanillasProvinciales.Caption:= 'Cancelar Nueva';
  btnCancelarParte4PlanillasProvinciales.Caption:= 'Cancelar Nueva';
  btnCancelarParte5PlanillasProvinciales.Caption:= 'Cancelar Nueva';
  btnCancelarParte6PlanillasProvinciales.Caption:= 'Cancelar Nueva';
end;


{---------------------------------------------------------}

//* Botones de "Cancelar" X "Cancelar Cambios"

procedure TfrmPrincipal.CambiarCaptionCancelarXCancelarCambiosPlanillasProvinciales;
begin
  //Cambio el Caption para tener una interfaz más amigable
  btnCancelarParte1PlanillasProvinciales.Caption:= 'Cancelar Cambios';
  btnCancelarParte2PlanillasProvinciales.Caption:= 'Cancelar Cambios';
  btnCancelarParte3PlanillasProvinciales.Caption:= 'Cancelar Cambios';
  btnCancelarParte4PlanillasProvinciales.Caption:= 'Cancelar Cambios';
  btnCancelarParte5PlanillasProvinciales.Caption:= 'Cancelar Cambios';
  btnCancelarParte6PlanillasProvinciales.Caption:= 'Cancelar Cambios';
end;


Procedure TfrmPrincipal.CambiarHintBotonesCancelarPlanillasProvinciales(aHint: String);
begin
  //Cambio el Hint para tener una interfaz más amigable
  btnCancelarParte1PlanillasProvinciales.Hint:= aHint;
  btnCancelarParte2PlanillasProvinciales.Hint:= aHint;
  btnCancelarParte3PlanillasProvinciales.Hint:= aHint;
  btnCancelarParte4PlanillasProvinciales.Hint:= aHint;
  btnCancelarParte5PlanillasProvinciales.Hint:= aHint;
  btnCancelarParte6PlanillasProvinciales.Hint:= aHint;
end;


Procedure TfrmPrincipal.CambiarHintSpeedButtonsHospitalesDeExcelencia(aHint1, aHint2, aHint3: String);
begin
  //Cambio el Hint para tener una interfaz más amigable
  SpeedButtonNuevaHospitalesDeExcelencia.Hint:= aHint1;
  SpeedButtonModificarHospitalesDeExcelencia.Hint:= aHint2;
  SpeedButtonEliminarHospitalesDeExcelencia.Hint:= aHint3;
end;


{---------------------------------------------------------}

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  id_Planilla: Integer;
begin
  if (VecesEntrando = 1)
    then
      begin
        frmPresentacion.ShowModal;
        frmValidacionPuestoDeTrabajo.Position:= poDesktopCenter;
        frmValidacionPuestoDeTrabajo.ShowModal;
      end;

  //Deshabilito las opciones de Ver y Edición del MainMenu
  MenuEdicion.Enabled:= False;
  MenuVer.Enabled:= False;

  //Posibilito el cambio de páginas en el PageControlTodo
  Ocioso:= True;

  //Deshabilito los botones de las Planillas Provinciales
  DeshabilitarBotonesNuevosPlanillasProvinciales;
  DeshabilitarBotonesModificarValoresPlanillasProvinciales;
  DeshabilitarBotonesEliminarValoresPlanillasProvinciales;
  DeshabilitarBotonesResumenesPlanillasProvinciales;
  DeshabilitarBotonesGenerarReportePlanillasProvinciales;

  //Pongo los ComboBox de las Planillas Provinciales en la primera posición
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= 0;
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);

  //Deshabilito los ComboBox de las Planillas Provinciales
  DeshabilitarComboBoxProvinciasPlanillasProvinciales;
  
  //Deshabilito los botones del Módulo de Control del Sistema
  //** Pestaña de Puestos de Trabajo
  btnNuevoPuestosDeTrabajo.Enabled:= False;
  btnModificarPuestosDeTrabajo.Enabled:= False;
  btnEliminarPuestosDeTrabajo.Enabled:= False;

  //** Pestaña de Trazas del Sistema
  btnDetallesDeTraza.Enabled:= False;

  //Deshabilito los botones del Módulo de Planillas de Excelencia
  btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;
  btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;
  btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;
  btnResumenesRegistroHospitalesDeExcelencia.Enabled:= False;
  btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;


  //Material agregado
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin

        //Verifico de nuevo la conexión, por si se canceló el Loggeo
        if (DptoCapacitacion.ExisteConexionConLaBD)
          then
            begin
              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Entró al sistema HC-CAP 2008.');

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;

              //Decido qué componentes mostrar en dependencia de los privilegios del Loggeado
              if ( DptoCapacitacion.ElTrabajadorEsAdministrador = False)
                then
                  begin //Se trata de un Operador

                    if (PestannaActiva = 'PuestosDeTrabajo')
                      then
                        begin
                          ValidarComponentesPuestosDeTrabajo;
                        end;

                    if (PestannaActiva = 'TrazasDelSistema')
                      then
                        begin
                          ValidarComponentesTrazasDelSistema;
                        end;

                    //Oculto el PageControl de Control del Sistema
                    PageControlControlDelSistema.Visible:= False;

                    //Oculto el ToolBar de la pestaña de Control del Sistema
                    ToolBarControlDelSistema.Visible:= False;

                    //Oculto la pestaña de Control del Sistema
                    TabSheetControlDelSistema.TabVisible:= False;
                  end                 
                    else
                      begin //Se trata de un Administrador

                        if (PestannaActiva = 'PuestosDeTrabajo')
                          then
                            begin
                              ValidarComponentesPuestosDeTrabajo;
                            end;

                        if (PestannaActiva = 'TrazasDelSistema')
                          then
                            begin
                              ValidarComponentesTrazasDelSistema;
                            end;
                          
                        //Muestro el PageControl de Control del Sistema
                        PageControlControlDelSistema.Visible:= True;

                        //Muestro el ToolBar de la pestaña de Control del Sistema
                        ToolBarControlDelSistema.Visible:= True;

                        //Muestro la pestaña de Control del Sistema
                        TabSheetControlDelSistema.TabVisible:= True;
                      end;
            end;//Fin de la segunda verificación de conexión, por posible cancelación de Loggeo

        if (   (PestannaActiva <> 'PuestosDeTrabajo') and (PestannaActiva <> 'TrazasDelSistema')   )
          then
            begin
              //Habilito las opciones de Edición y Ver del MainMenu
              MenuEdicion.Enabled:= True;
              MenuVer.Enabled:= True;
            end;

              //Muestro el Label de la Cantidad de Puestos de Trabajo
              lblCantidadPuestosDeTrabajo.Visible:= True;

              //Muestro los datos en el DBGrid del Módulo de Puestos de Trabajo
              DptoCapacitacion.MostrarPuestosDeTrabajo;

              //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
              lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

              //Muestro los datos en los DBGrids, DBEdits y DBMemos del Módulo de las Planillas Provinciales
              DptoCapacitacion.MostrarPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.Text);

              //Habilito los ComboBox de "Provincia" y "Período" de los Hospitales de Excelencia
              ComboBoxProvinciasHospitalesDeExcelencia.Enabled:= True;
              ComboBoxSemestreHospitalesDeExcelencia.Enabled:= True;

        //Muestro los nombres de los Hospitales de Excelencia en el DBLookupComboBox del Módulo de Hospitales de Excelencia
        if (ComboBoxProvinciasHospitalesDeExcelencia.Text= 'TODAS')
          then
            begin
              //Cambio la procedencia de los datos
              DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;

              //Selecciono todos los Hospitales de Excelencia del país
              DptoCapacitacion.MostrarHospitalesPorProvincia('TODAS');

              //Selecciono todos los Hospitales de Excelencia del país, para la administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

              //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
              lblCantidadDeHospitalesParaAdmin.Visible:= True;
              lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

              //Muestro el Capacitador con fines de administración
              DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

              //Selecciono todos los Tipos de Cursos, para la administración de Tipos de Cursos.
              DptoCapacitacion.MostrarTiposDeCursos;

              //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
              lblCantidadTiposDeCursos.Visible:= True;
              lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

              //Verifico la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
              if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                then
                  begin
                    //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                    DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                    //Oculto la información de que no existe capacitador para ese Hospital
                    lblNoTieneCapacitador.Visible:= False;

                    //Habilito todos los botones, para la administración de Hospitales y Capacitadores
                    btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnContactarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                    //Pongo el cursor del mouse como una mano, en el DBMemo
                    DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;

                    //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
                    lblCantidadDeHospitales.Visible:= True;
                    lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';
                  end
                    else {No hay hospitales en todo el país}
                      begin
                        //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                        //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la información de que no existen hospitales
                        lblCantidadDeHospitales.Visible:= True;
                        lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';

                        //Habilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
                        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                      end;

              //Valido el estado para los Componentes de la pestaña de Administración de Hospitales de Excelencia y sus Capacitadores                      
              if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
                then
                  ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

              //Valido el estado para los Componentes de la pestaña de Administración de Tipos de Cursos
              if (PestannaActiva = 'TiposDeCursos')
                then
                  ValidarComponentesTiposDeCursos;

              //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
              if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                then
                  begin
                    //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                    if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                      then
                        begin
                          //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                          DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Escondo la información de que no existe capacitador, pues sí lo hay
                          lblNoTieneCapacitador.Visible:= False;

                          //Muestro las Planillas de Excelencia asociadas a ese Hospital
                          DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                          if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                            then
                              begin
                                //Recojo el id_Planilla
                                id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                //Muestro el listado de Cursos Programados
                                DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                //Muestro el listado de Cursos Realizados
                                DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                              end
                                else
                                  begin
                                    //Intento mostrar el listado de Cursos Programados, para que se borren los componentes
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                    //Intento mostrar el listado de Cursos Realizados, para que se borren los componentes
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                  end;

                          //Pongo el cursor del mouse como una mano, en el DBMemo
                          DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                          //Cambio el focus si la pestaña adecuada está activa
                          if (   (PageControlTodo.ActivePageIndex= 2) and (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)   )
                            then
                              begin
                                //Cambio el focus para evitar el scroll
                                DBGridHospitalesDeExcelencia.SetFocus;
                              end;
                              
                          //Valido el estado para los Componentes de la pestaña
                          if (PestannaActiva = 'PlanillasDeExcelencia')
                            then
                              ValidarComponentesPlanillasDeExcelencia;
                        end
                          else {No hay Capacitador}
                            begin
                              //Muestro la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= True;

                              //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                              //Cambio el focus para evitar el scroll
                              DBGridHospitalesDeExcelencia.SetFocus;
                            end;
                  end
                    else  {No se escogió ningún Hospital}
                      begin
                        //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
                        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0 );

                        //Valido el estado para los Componentes de la pestaña
                        if (PestannaActiva = 'PlanillasDeExcelencia')
                          then
                            ValidarComponentesPlanillasDeExcelencia;

                        //Limpio los componentes (los que se pueden limpiar, por si acaso)
                        DBedtProvincia.Clear;
                        DBMemoDireccion.Clear;
                        DBedtNombreCapac.Clear;
                        DBedtPrimerApellidoCapac.Clear;
                        DBedtSegundoApellidoCapac.Clear;
                        DBedtCICapac.Clear;
                        DBMemoTelefonosCapac.Clear;

                        //Cambio el focus para evitar el scroll
                        if (   (PageControlTodo.TabIndex= 2) and (PageControlHospitalesDeExcelencia.TabIndex= 0)   )
                          then
                            DBGridHospitalesDeExcelencia.SetFocus;
                      end;
            end
              else   {No se escogió "TODAS", sino una provincia en específico} 
                begin
                  //Cambio la procedencia de los datos
                  DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;

                  //Selecciono todos los Hospitales de Excelencia de la provincia
                  DptoCapacitacion.MostrarHospitalesPorProvincia(ComboBoxProvinciasHospitalesDeExcelencia.Text);

                  //Selecciono todos los Hospitales de Excelencia del país, para la administración de Hospitales y Capacitadores
                  DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

                  //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
                  lblCantidadDeHospitalesParaAdmin.Visible:= True;
                  lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

                  //Muestro el Capacitador con fines de administración
                  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

                  //Selecciono todos los Tipos de Cursos, para la administración de Tipos de Cursos.
                  DptoCapacitacion.MostrarTiposDeCursos;

                  //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
                  lblCantidadTiposDeCursos.Visible:= True;
                  lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

                  //Verifico la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
                  if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                    then
                      begin
                        //Habilito todos los botones, para la administración de Hospitales y Capacitadores
                        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                        btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                        btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                        //Pongo el cursor del mouse como una mano, en el DBMemo
                        DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;
                      end
                        else
                          begin
                            //Habilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
                            btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                          end;

                  //Valido el estado para los Componentes de la pestaña de Administración de Hospitales de Excelencia y sus Capacitadores
                  if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
                    then
                      ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

                  //Valido el estado para los Componentes de la pestaña de Administración de Tipos de Cursos
                  if (PestannaActiva = 'TiposDeCursos')
                    then
                      ValidarComponentesTiposDeCursos;

                  //Muestro el Capacitador con fines de administración
                  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

                  //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                  if (DptoCapacitacion.CantidadDeHospitalesPorProvincia <> 0)
                    then
                      begin
                        //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                        //Oculto la información de que no existe capacitador para ese Hospital
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                        lblCantidadDeHospitales.Visible:= true;
                        lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesPorProvincia) + ' a escoger )'
                      end
                        else  {No hay hospitales en la provincia}
                          begin
                            //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                            DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                            //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                            lblNoTieneCapacitador.Visible:= False;

                            //Muestro la información de que no existen hospitales
                            lblCantidadDeHospitales.Visible:= true;
                            lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                          end;

                  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
                  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                    then
                      begin
                        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                         if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                          then
                            begin
                              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Escondo la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= False;

                              //Muestro las Planillas de Excelencia asociadas a ese Hospital
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                                then
                                  begin
                                    //Recojo el id_Planilla
                                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                    //Muestro el listado de Cursos Programados
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                    //Muestro el listado de Cursos Realizados
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                  end;

                              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                              //Cambio el focus si la pestaña adecuada está activa
                              if (   (PageControlTodo.ActivePageIndex= 2) and (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)   )
                                then
                                  begin
                                    //Cambio el focus para evitar el scroll
                                    DBGridHospitalesDeExcelencia.SetFocus;
                                  end;
                            end
                              else {No hay Capacitador para ese hospital}
                                begin
                                  //Muestro la información de que no hay Capacitador
                                  lblNoTieneCapacitador.Visible:= True;

                                  //Intento mostrar las planillas, para limpiar los componentes
                                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                                  //Pongo el cursor del mouse como una flecha (default), en el DBMemo de Correos
                                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                                  //Cambio el focus para evitar el scroll
                                  DBGridHospitalesDeExcelencia.SetFocus;

                                  //Valido el estado para los Componentes de la pestaña
                                  if (PestannaActiva = 'PlanillasDeExcelencia')
                                    then
                                      ValidarComponentesPlanillasDeExcelencia;
                                end;
                      end
                        else  {no seleccioné un hospital}
                          begin
                            //Intento mostrar las planillas, para limpiar los componentes
                            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                            //Valido el estado para los Componentes de la pestaña
                            if (PestannaActiva = 'PlanillasDeExcelencia')
                              then
                                ValidarComponentesPlanillasDeExcelencia;

                            //Limpio los componentes
                            DBedtProvincia.Clear;
                            DBMemoDireccion.Clear;
                            DBedtNombreCapac.Clear;
                            DBedtPrimerApellidoCapac.Clear;
                            DBedtSegundoApellidoCapac.Clear;
                            DBedtCICapac.Clear;
                            DBMemoTelefonosCapac.Clear;

                            //Cambio el focus para evitar el scroll
                            if (   (PageControlTodo.TabIndex= 2) and (PageControlHospitalesDeExcelencia.TabIndex= 0)   )
                              then
                                DBGridHospitalesDeExcelencia.SetFocus;
                          end;
                end;

        //Muestro los datos en el DBGrid, el ComboBox, el DBMemo y los DBEdits del Módulo de Hospitales de Excelencia

        //Se Habilita el SpeedButton de 'Desconectarse' de las Planillas Provinciales
        SpeedButtonDesconectarsePlanillas.Enabled:= True;

        //Se Habilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarsePuestosDeTrabajo.Enabled:= True;

        //Se Habilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarseHospitalesDeExcelencia.Enabled:= True;

        //Se Habilita la opción de 'Desconectarse' en el MainMenu
        Desconectarse1.Enabled:= True;

        //*** Agregación ***

        //Habilito los botones de "Nueva" de las Planillas Provinciales
        HabilitarBotonesNuevosPlanillasProvinciales;

        //Habilito el botón de "Nuevo" del Módulo de Puestos de Trabajo
        btnNuevoPuestosDeTrabajo.Enabled:= True;

        //Se Habilita el SpeedButton de 'Nueva' de las Planillas Provinciales
        SpeedButtonNuevaPlanilla.Enabled:= True;

        //Se Habilita el SpeedButton de "Nuevo" del Módulo de Puestos de Trabajo
        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

        //Se Habilita la opción de 'Nueva Planilla' en el MainMenu
        MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

        //Se Habilita la opción de 'Nuevo Usuario' en el MainMenu
        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

        //Se habilitan los ComboBox de provincias, de las Planillas Provinciales
        HabilitarComboBoxProvinciasPlanillasProvinciales;

        //Aseguro que, antes de mostrar los demás botones, los DBGrid de las Planillas Provinciales no estén vacios
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial = True)
          then
            begin
              //*** Modificación ***

              //Habilito los botones de  "Modificar" de las Planillas Provinciales
              HabilitarBotonesModificarValoresPlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Modificar' de las Planillas Provinciales
              SpeedButtonModificarPlanilla.Enabled:= True;

              //Se Habilita la opción de 'Modificar Planilla' en el MainMenu
              MenuOpcionModificarPlanillaProvincial.Enabled:= True;

              //*** Eliminación ***

              //Habilito los botones de  "Eliminar" de las Planillas Provinciales
              HabilitarBotonesEliminarValoresPlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Eliminar' de las Planillas Provinciales
              SpeedButtonEliminarPlanilla.Enabled:= True;

              //Se Habilita la opción de 'Eliminar Planilla' en el MainMenu
              MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

              //** Provisional ** Habilito los botones de  "Resúmenes" de las Planillas Provinciales
              HabilitarBotonesResumenesPlanillasProvinciales;
              
              //Habilito los botones de  "Generar Reporte" de las Planillas Provinciales
              HabilitarBotonesGenerarReportePlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Generar Reporte' de las Planillas Provinciales
              SpeedButtonGenerarReportePlanilla.Enabled:= True;

              //Se Habilita la opción de 'Generar Reporte' en el MainMenu
              MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;
            end;

        //Habilito el botón de 'Modificar' del Módulo de Puestos de Trabajo
        btnModificarPuestosDeTrabajo.Enabled:= True;

        //Habilito el SpeedButton de 'Modificar' del Módulo de Puestos de Trabajo
        SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

        //Habilito la opción de 'Modificar Usuario' en el MainMenu
        MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

        //Habilito el botón de 'Eliminar' del Módulo de Puestos de Trabajo
        btnEliminarPuestosDeTrabajo.Enabled:= True;

        //Habilito el SpeedButton de 'Eliminar' del Módulo de Puestos de Trabajo
        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

        //Habilito la opción de 'Eliminar Usuario' en el MainMenu
        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;


        //Habilito el botón de 'Detalles' de la Pestaña de Trazas del Sistema
        btnDetallesDeTraza.Enabled:= True;

      end
        else
          //ShowMessage('No se pudo establecer conexión con la base de datos.');  
end;

procedure TfrmPrincipal.RellenarPlanillaDBTemporalPlanillasProvinciales;
var
  year: integer;
  mes, dia, ano :Word;
  anno: AnsiString;
begin
      //Procedo a crear la Planilla, antes de llenarla
      TempPlanilla :=TPlanillaProvincial.Create;

      //*** Lleno la planilla antes de hacer uso de ella. ***



  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte1PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;
      
      //Le pasamos los parámetros (parte 1 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      //Tomo lo que me interesa (el año)
      TempPlanilla.Anno:= StrToInt(anno);
                  
      TempPlanilla.Provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;
      TempPlanilla.TotalEntOrg:= StrToInt(DBedtTotalEntOrgCMG.Text);
      TempPlanilla.EntOrgConPlanAnualCap:= StrToInt(DBedtEntOrgConPlanAnualCapCMG.Text);
      TempPlanilla.TotalTrabOrg:= StrToInt(DBedtTotalTrabOrgCMG.Text);
      TempPlanilla.TotalGradAccCap:= StrToInt(DBedtTotalGradAccCapCMG.Text);
      TempPlanilla.RelacionGradXTotal:= StrTofloat(DBedtRelacionGradXTotalCMG.Text);

      //Le pasamos los parámetros (parte 2 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      TempPlanilla.GradEnEmpInternas:= StrToInt(DBedtGradEnEmpInternasCMG.Text);
      TempPlanilla.GradEnInstExternas:= StrToInt(DBedtGradEnInstExternasCMG.Text);
      TempPlanilla.Directivos:= StrToInt(DBedtDirectivosCMG.Text);
      TempPlanilla.Tecnicos:= StrToInt(DBedtTecnicosCMG.Text);
      TempPlanilla.Administrativos:= StrToInt(DBedtAdministrativosCMG.Text);
      TempPlanilla.TrabServicios:= StrToInt(DBedtTrabServiciosCMG.Text);
      TempPlanilla.Operarios:= StrToInt(DBedtOperariosCMG.Text);
      TempPlanilla.GradEnCurHab:= StrToInt(DBedtGradEnCurHabCMG.Text);
      TempPlanilla.GradEnCurPerfec:= StrToInt(DBedtGradEnCurPerfecCMG.Text);
      TempPlanilla.GradEnAdiestLab:= StrToInt(DBedtGradenAdiestLabCMG.Text);
      TempPlanilla.GradEnEntPTrab:= StrToInt(DBedtGradEnEntPTrabCMG.Text);
      TempPlanilla.GradEnCurPostGrado:= StrToInt(DBedtGradEnCurPostGradoCMG.Text);
      TempPlanilla.GradEnDiplomados:= StrToInt(DBedtGradEnDiplomadosCMG.Text);
      TempPlanilla.GradEnMaestrias:= StrToInt(DBedtGradEnMaestriasCMG.Text);
      TempPlanilla.GradEnDoctorados:= StrToInt(DBedtGradEnDoctoradosCMG.Text);
      TempPlanilla.GradEnCurFormCompMINED:= StrToInt(DBedtGradEnCurFormCompMINEDCMG.Text);
      TempPlanilla.GradEnCurFormCompMES:= StrToInt(DBedtGradEnCurFormCompMESCMG.Text);
      TempPlanilla.GradEnCurIdiomaExt:= StrToInt(DBedtGradEnCurIdiomaExtCMG.Text);
      TempPlanilla.GradEnCurHab:= StrToInt(DBedtGradEnCurHabCMG.Text);
      TempPlanilla.GradEnEntrenEnExt:= StrToInt(DBedtGradEnEntrenEnExtCMG.Text);
      TempPlanilla.GradEnOtrasAcc:= StrToInt(DBedtGradEnOtrasAccCMG.Text);

      //Le pasamos los parámetros (parte 3 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      TempPlanilla.InstTotalUtilEnCapac:= StrToInt(DBedtInstTotalUtilEnCapacCMG.Text);
      TempPlanilla.InstEventUtilEnCapac:= StrToInt(DBedtInstEventUtilEnCapacCMG.Text);
      TempPlanilla.InstPermUtilEnCapac:= StrToInt(DBedtInstPermUtilEnCapacCMG.Text);

      //Le pasamos los parámetros (parte 4 de las Planillas Provinciales), desde la forma, al StoreProcedure.
	    TempPlanilla.MaestriasXMatric:= StrToInt(DBedtMaestriasXMatricCMG.Text);
	    TempPlanilla.DiplomadosXMatric:= StrToInt(DBedtDiplomadosXMatricCMG.Text);
	    TempPlanilla.CurPostgradosXMatric:= StrToInt(DBedtCurPostgradosXMatricCMG.Text);
	    TempPlanilla.CurIdiomasXMatric:= StrToInt(DBedtCurIdiomasXMatricCMG.Text);
	    TempPlanilla.CurCompXMatric:= StrToInt(DBedtCurCompXMatricCMG.Text);
	    TempPlanilla.HabilitacionXMatric:= StrToInt(DBedtHabilitacionXMatricCMG.Text);
	    TempPlanilla.PerfecXMatric:= StrToInt(DBedtPerfecXMatricCMG.Text);
	    TempPlanilla.TallSemConfXMatric:= StrToInt(DBedtTallSemConfXMatricCMG.Text);
	    TempPlanilla.TotalXMatric:= StrToInt(DBedtTotalXMatricCMG.Text);
	    TempPlanilla.MaestriasXGrad:= StrToInt(DBedtMaestriasXGradCMG.Text);
	    TempPlanilla.DiplomadosXGrad:= StrToInt(DBedtDiplomadosXGradCMG.Text);
	    TempPlanilla.CurPostgradosXGrad:= StrToInt(DBedtCurPostgradosXGradCMG.Text);
	    TempPlanilla.CurIdiomasXGrad:= StrToInt(DBedtCurIdiomasXGradCMG.Text);
	    TempPlanilla.CurCompXGrad:= StrToInt(DBedtCurCompXGradCMG.Text);
	    TempPlanilla.HabilitacionXGrad:= StrToInt(DBedtHabilitacionXGradCMG.Text);
	    TempPlanilla.PerfecXGrad:= StrToInt(DBedtPerfecXGradCMG.Text);
	    TempPlanilla.TallSemConfXGrad:= StrToInt(DBedtTallSemConfXGradCMG.Text);
	    TempPlanilla.TotalXGrad:= StrToInt(DBedtTotalXGradCMG.Text);
	    if (DBMemoValTrabDesPorEscRamalesCMG.Text= '')
        then
          TempPlanilla.ValTrabDesPorEscRamales:= 'Sin comentarios.'
            else
              TempPlanilla.ValTrabDesPorEscRamales:= DBMemoValTrabDesPorEscRamalesCMG.Text;

//Le pasamos los parámetros (parte 5 de las Planillas Provinciales), desde la forma, al StoreProcedure.
	    TempPlanilla.TotalTrabNoIdoneos:= StrToInt(DBedtTotalTrabNoIdoneosCMG.Text);
	    TempPlanilla.NoIdoneosSinCalificFormal:= StrToInt(DBedtNoIdoneosSinCalificFormalCMG.Text);
	    TempPlanilla.NoIdoneosSinEficiencia:= StrToInt(DBedtNoIdoneosSinEficienciaCMG.Text);
	    TempPlanilla.NoIdoneosSinBConducta:= StrToInt(DBedtNoIdoneosSinBConductaCMG.Text);

   	TempPlanilla.Grado6XTotalNoIdoneos:= StrToInt(DBedtGrado6XTotalNoIdoneos.Text);                 //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.Grado9XTotalNoIdoneos:= StrToInt(DBedtGrado9XTotalNoIdoneos.Text);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.Grado12XTotalNoIdoneos:= StrToInt(DBedtGrado12XTotalNoIdoneos.Text);             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.TecMedioXTotalNoIdoneos:= StrToInt(DBedtTecMedioXTotalNoIdoneos.Text);           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.NivSupXTotalNoIdoneos:= StrToInt(DBedtNivSupXTotalNoIdoneos.Text);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    TempPlanilla.TotalNivelXTotalNoIdoneos:= StrToInt(DBedtTotalNivelXTotalNoIdoneos.Text);       //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	TempPlanilla.Grado6XMatric:= StrToInt(DBedtGrado6XMatric.Text);
   	TempPlanilla.Grado9XMatric:= StrToInt(DBedtGrado9XMatric.Text);
   	TempPlanilla.Grado12XMatric:= StrToInt(DBedtGrado12XMatric.Text);
   	TempPlanilla.TecMedioXMatric:= StrToInt(DBedtTecMedioXMatric.Text);
   	TempPlanilla.NivSupXMatric:= StrToInt(DBedtNivSupXMatric.Text);

    TempPlanilla.TotalNivelXMatric:= StrToInt(DBedtTotalNivelXMatric.Text);                    //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	TempPlanilla.Grado6XNoMatric:= StrToInt(DBedtGrado6XNoMatric.Text);
   	TempPlanilla.Grado9XNoMatric:= StrToInt(DBedtGrado9XNoMatric.Text);
   	TempPlanilla.Grado12XNoMatric:= StrToInt(DBedtGrado12XNoMatric.Text);
   	TempPlanilla.TecMedioXNoMatric:= StrToInt(DBedtTecMedioXNoMatric.Text);
   	TempPlanilla.NivSupXNoMatric:= StrToInt(DBedtNivSupXNoMatric.Text);

    TempPlanilla.TotalNivelXNoMatric:= StrToInt(DBedtTotalNivelXNoMatric.Text);                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    TempPlanilla.NoFormalTrabProxEdadJub:= StrToInt(DBedtNoFormalTrabProxEdadJub.Text);                    //5.4.1 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabProblemasSalud:= StrToInt(DBedtNoFormalTrabProblemasSalud.Text);              //5.4.2 Agregado en la versión 2008
    TempPlanilla.NoFormalLicEnfermedadYMaternidad:= StrToInt(DBedtNoFormalLicEnfermedadYMaternidad.Text);  //5.4.3 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabProblemasFamiliares:= StrToInt(DBedtNoFormalTrabProblemasFamiliares.Text);    //5.4.4 Agregado en la versión 2008
    TempPlanilla.NoFormalNoDisponibMatricXMINED:= StrToInt(DBedtNoFormalNoDisponibMatricXMINED.Text);      //5.4.5 Agregado en la versión 2008
    TempPlanilla.NoFormalNoDisponibMatricXMES:= StrToInt(DBedtNoFormalNoDisponibMatricXMES.Text);          //5.4.6 Agregado en la versión 2008
    TempPlanilla.NoFormalLimMatricNivSup:= StrToInt(DBedtNoFormalLimMatricNivSup.Text);                    //5.4.7 Agregado en la versión 2008
    TempPlanilla.NoFormalImposibEntidAbrirAulas:= StrToInt(DBedtNoFormalImposibEntidAbrirAulas.Text);      //5.4.8 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabNoAcredit:= StrToInt(DBedtNoFormalTrabNoAcredit.Text);                        //5.4.9 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabTurnosRotativos:= StrToInt(DBedtNoFormalTrabTurnosRotativos.Text);            //5.4.10 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabNieganIncorp:= StrToInt(DBedtNoFormalTrabNieganIncorp.Text);                  //5.4.11 Agregado en la versión 2008
    TempPlanilla.NoFormalMovilConstruc:= StrToInt(DBedtNoFormalMovilConstruc.Text);                        //5.4.12 Agregado en la versión 2008
    TempPlanilla.NoFormalOtrasCausas:= StrToInt(DBedtNoFormalOtrasCausas.Text);                            //5.4.13 Agregado en la versión 2008

    if (DBMemoExplicNoMatric.Text= '')                      //5.5 Agregado en la versión 2008
      then
        TempPlanilla.ExplicNoMatric:= 'Sin comentarios.'
          else
	          TempPlanilla.ExplicNoMatric:= DBMemoExplicNoMatric.Text;

    TempPlanilla.CurHabilXTotalNoIdoneos:= StrToInt(DBedtCurHabilXTotalNoIdoneos.Text);                   //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.EntrenamientoXTotalNoIdoneos:= StrToInt(DBedtEntrenamientoXTotalNoIdoneos.Text);         //Parte del 5.6 (tabla) Agregado en la versión 2008
    TempPlanilla.TotalNoIdoneosXTotalNoIdoneos:= StrToInt(DBedtTotalNoIdoneosXTotalNoIdoneos.Text);       //Parte del 5.6 (tabla) Agregado en la versión 2008

    TempPlanilla.CurHabilXMatric:= StrToInt(DBedtCurHabilXMatric.Text);                                   //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.EntrenamientoXMatric:= StrToInt(DBedtEntrenamientoXMatric.Text);                         //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.TotalNoIdoneosXMatric:= StrToInt(DBedtTotalNoIdoneosXMatric.Text);                       //Parte del 5.6 (tabla) Agregado en la versión 2008
    
    TempPlanilla.CurHabilXNoMatric:= StrToInt(DBedtCurHabilXNoMatric.Text);                               //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.EntrenamientoXNoMatric:= StrToInt(DBedtEntrenamientoXNoMatric.Text);                     //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.TotalNoIdoneosXNoMatric:= StrToInt(DBedtTotalNoIdoneosXNoMatric.Text);                   //Parte del 5.6 (tabla) Agregado en la versión 2008

    TempPlanilla.NoEficTrabProxEdadJub:= StrToInt(DBedtNoEficTrabProxEdadJub.Text);                       //5.7.1 Agregado en la versión 2008
    TempPlanilla.NoEficTrabProblemasSalud:= StrToInt(DBedtNoEficTrabProblemasSalud.Text);                 //5.7.2 Agregado en la versión 2008
    TempPlanilla.NoEficLicEnfermedadYMaternidad:= StrToInt(DBedtNoEficLicEnfermedadYMaternidad.Text);     //5.7.3 Agregado en la versión 2008
    TempPlanilla.NoEficTrabProblemasFamiliares:= StrToInt(DBedtNoEficTrabProblemasFamiliares.Text);       //5.7.4 Agregado en la versión 2008
    TempPlanilla.NoEficTrabTurnosRotativos:= StrToInt(DBedtNoEficTrabTurnosRotativos.Text);               //5.7.5 Agregado en la versión 2008
    TempPlanilla.NoEficTrabNieganIncorp:= StrToInt(DBedtNoEficTrabNieganIncorp.Text);                     //5.7.6 Agregado en la versión 2008
    TempPlanilla.NoEficMovilConstruc:= StrToInt(DBedtNoEficMovilConstruc.Text);                           //5.7.7 Agregado en la versión 2008
    TempPlanilla.NoEficOtrasCausas:= StrToInt(DBedtNoEficOtrasCausas.Text);                               //5.7.8 Agregado en la versión 2008

    TempPlanilla.Casilla1XPendiente:= StrToInt(DBedtCasilla1XPendiente.Text);     //Parte del 5.8 (tabla) Agregado en la versión 2008
    TempPlanilla.Casilla2XPendiente:= StrToInt(DBedtCasilla2XPendiente.Text);     //Parte del 5.8 (tabla) Agregado en la versión 2008
    TempPlanilla.TotalXPendiente:= StrToInt(DBedtTotalXPendiente.Text);           //Parte del 5.8 (tabla) Agregado en la versión 2008
    
    if (DBMemoCasilla1XCausas.Text= '')                                           //Parte del 5.8 (tabla) Agregado en la versión 2008
      then
        TempPlanilla.Casilla1XCausas:= 'Sin comentarios.'
          else
	          TempPlanilla.Casilla1XCausas:= DBMemoCasilla1XCausas.Text;

    if (DBMemoCasilla2XCausas.Text= '')                                           //Parte del 5.8 (tabla) Agregado en la versión 2008
      then
        TempPlanilla.Casilla2XCausas:= 'Sin comentarios.'
          else
	          TempPlanilla.Casilla2XCausas:= DBMemoCasilla2XCausas.Text;

    if (DBMemoTotalXCausas.Text= '')                                              //Parte del 5.8 (tabla) Agregado en la versión 2008
      then
        TempPlanilla.TotalXCausas:= 'Sin comentarios.'
          else
	          TempPlanilla.TotalXCausas:= DBMemoTotalXCausas.Text;

            

      //Le pasamos los parámetros (parte 6 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      if (DBMemoValoracionCualitativaDelProcesoCapacCMG.Text= '')
        then
          TempPlanilla.ValoracionCualitativaDelProcesoCapac:= 'Sin comentarios.'
            else
              TempPlanilla.ValoracionCualitativaDelProcesoCapac:= DBMemoValoracionCualitativaDelProcesoCapacCMG.Text;
end;

procedure TfrmPrincipal.RellenarPlanillaTemporalPlanillasProvinciales;
var
  mes, dia, ano :Word;
  anno: AnsiString;
  year: integer;
begin
      //Procedo a crear la Planilla, antes de llenarla
      TempPlanilla :=TPlanillaProvincial.Create;

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte1PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;


      //*** Lleno la planilla antes de hacer uso de ella. ***

      //Le pasamos los parámetros (parte 1 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      //Tomo lo que me interesa (el año)
      TempPlanilla.Anno:= StrToInt(anno);

      TempPlanilla.Provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;;
      TempPlanilla.TotalEntOrg:= StrToInt(edtTotalEntOrgCMG.Text);
      TempPlanilla.EntOrgConPlanAnualCap:= StrToInt(edtEntOrgConPlanAnualCapCMG.Text);
      TempPlanilla.TotalTrabOrg:= StrToInt(edtTotalTrabOrgCMG.Text);
      TempPlanilla.TotalGradAccCap:= StrToInt(edtTotalGradAccCapCMG.Text);
      TempPlanilla.RelacionGradXTotal:= StrTofloat(edtRelacionGradXTotalCMG.Text);


      //Le pasamos los parámetros (parte 2 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      TempPlanilla.GradEnEmpInternas:= StrToInt(edtGradEnEmpInternasCMG.Text);
      TempPlanilla.GradEnInstExternas:= StrToInt(edtGradEnInstExternasCMG.Text);
      TempPlanilla.Directivos:= StrToInt(edtDirectivosCMG.Text);
      TempPlanilla.Tecnicos:= StrToInt(edtTecnicosCMG.Text);
      TempPlanilla.Administrativos:= StrToInt(edtAdministrativosCMG.Text);
      TempPlanilla.TrabServicios:= StrToInt(edtTrabServiciosCMG.Text);
      TempPlanilla.Operarios:= StrToInt(edtOperariosCMG.Text);
      TempPlanilla.GradEnCurHab:= StrToInt(edtGradEnCurHabCMG.Text);
      TempPlanilla.GradEnCurPerfec:= StrToInt(edtGradEnCurPerfecCMG.Text);
      TempPlanilla.GradEnAdiestLab:= StrToInt(edtGradenAdiestLabCMG.Text);
      TempPlanilla.GradEnEntPTrab:= StrToInt(edtGradEnEntPTrabCMG.Text);
      TempPlanilla.GradEnCurPostGrado:= StrToInt(edtGradEnCurPostGradoCMG.Text);
      TempPlanilla.GradEnDiplomados:= StrToInt(edtGradEnDiplomadosCMG.Text);
      TempPlanilla.GradEnMaestrias:= StrToInt(edtGradEnMaestriasCMG.Text);
      TempPlanilla.GradEnDoctorados:= StrToInt(edtGradEnDoctoradosCMG.Text);
      TempPlanilla.GradEnCurFormCompMINED:= StrToInt(edtGradEnCurFormCompMINEDCMG.Text);
      TempPlanilla.GradEnCurFormCompMES:= StrToInt(edtGradEnCurFormCompMESCMG.Text);
      TempPlanilla.GradEnCurIdiomaExt:= StrToInt(edtGradEnCurIdiomaExtCMG.Text);
      TempPlanilla.GradEnCurComp:= StrToInt(edtGradEnCurCompCMG.Text);
      TempPlanilla.GradEnEntrenEnExt:= StrToInt(edtGradEnEntrenEnExtCMG.Text);
      TempPlanilla.GradEnOtrasAcc:= StrToInt(edtGradEnOtrasAccCMG.Text);


      //Le pasamos los parámetros (parte 3 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      TempPlanilla.InstTotalUtilEnCapac:= StrToInt(edtInstTotalUtilEnCapacCMG.Text);
      TempPlanilla.InstEventUtilEnCapac:= StrToInt(edtInstEventUtilEnCapacCMG.Text);
      TempPlanilla.InstPermUtilEnCapac:= StrToInt(edtInstPermUtilEnCapacCMG.Text);


      //Le pasamos los parámetros (parte 4 de las Planillas Provinciales), desde la forma, al StoreProcedure.
	    TempPlanilla.MaestriasXMatric:= StrToInt(edtMaestriasXMatricCMG.Text);
	    TempPlanilla.DiplomadosXMatric:= StrToInt(edtDiplomadosXMatricCMG.Text);
	    TempPlanilla.CurPostgradosXMatric:= StrToInt(edtCurPostgradosXMatricCMG.Text);
	    TempPlanilla.CurIdiomasXMatric:= StrToInt(edtCurIdiomasXMatricCMG.Text);
	    TempPlanilla.CurCompXMatric:= StrToInt(edtCurCompXMatricCMG.Text);
	    TempPlanilla.HabilitacionXMatric:= StrToInt(edtHabilitacionXMatricCMG.Text);
	    TempPlanilla.PerfecXMatric:= StrToInt(edtPerfecXMatricCMG.Text);
	    TempPlanilla.TallSemConfXMatric:= StrToInt(edtTallSemConfXMatricCMG.Text);
	    TempPlanilla.TotalXMatric:= StrToInt(edtTotalXMatricCMG.Text);
	    TempPlanilla.MaestriasXGrad:= StrToInt(edtMaestriasXGradCMG.Text);
	    TempPlanilla.DiplomadosXGrad:= StrToInt(edtDiplomadosXGradCMG.Text);
	    TempPlanilla.CurPostgradosXGrad:= StrToInt(edtCurPostgradosXGradCMG.Text);
	    TempPlanilla.CurIdiomasXGrad:= StrToInt(edtCurIdiomasXGradCMG.Text);
	    TempPlanilla.CurCompXGrad:= StrToInt(edtCurCompXGradCMG.Text);
	    TempPlanilla.HabilitacionXGrad:= StrToInt(edtHabilitacionXGradCMG.Text);
	    TempPlanilla.PerfecXGrad:= StrToInt(edtPerfecXGradCMG.Text);
	    TempPlanilla.TallSemConfXGrad:= StrToInt(edtTallSemConfXGradCMG.Text);
	    TempPlanilla.TotalXGrad:= StrToInt(edtTotalXGradCMG.Text);
	    if (MemoValTrabDesPorEscRamalesCMG.Text= '')
        then
          TempPlanilla.ValTrabDesPorEscRamales:= 'Sin comentarios.'
            else
              TempPlanilla.ValTrabDesPorEscRamales:= MemoValTrabDesPorEscRamalesCMG.Text;


      //Le pasamos los parámetros (parte 5 de las Planillas Provinciales), desde la forma, al StoreProcedure.
	    TempPlanilla.TotalTrabNoIdoneos:= StrToInt(edtTotalTrabNoIdoneosCMG.Text);
	    TempPlanilla.NoIdoneosSinCalificFormal:= StrToInt(edtNoIdoneosSinCalificFormalCMG.Text);
	    TempPlanilla.NoIdoneosSinEficiencia:= StrToInt(edtNoIdoneosSinEficienciaCMG.Text);
	    TempPlanilla.NoIdoneosSinBConducta:= StrToInt(edtNoIdoneosSinBConductaCMG.Text);

   	TempPlanilla.Grado6XTotalNoIdoneos:= StrToInt(edtGrado6XTotalNoIdoneos.Text);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.Grado9XTotalNoIdoneos:= StrToInt(edtGrado9XTotalNoIdoneos.Text);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.Grado12XTotalNoIdoneos:= StrToInt(edtGrado12XTotalNoIdoneos.Text);             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.TecMedioXTotalNoIdoneos:= StrToInt(edtTecMedioXTotalNoIdoneos.Text);           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	TempPlanilla.NivSupXTotalNoIdoneos:= StrToInt(edtNivSupXTotalNoIdoneos.Text);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    TempPlanilla.TotalNivelXTotalNoIdoneos:= StrToInt(edtTotalNivelXTotalNoIdoneos.Text);       //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	TempPlanilla.Grado6XMatric:= StrToInt(edtGrado6XMatric.Text);
   	TempPlanilla.Grado9XMatric:= StrToInt(edtGrado9XMatric.Text);
   	TempPlanilla.Grado12XMatric:= StrToInt(edtGrado12XMatric.Text);
   	TempPlanilla.TecMedioXMatric:= StrToInt(edtTecMedioXMatric.Text);
   	TempPlanilla.NivSupXMatric:= StrToInt(edtNivSupXMatric.Text);

    TempPlanilla.TotalNivelXMatric:= StrToInt(edtTotalNivelXMatric.Text);                    //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	TempPlanilla.Grado6XNoMatric:= StrToInt(edtGrado6XNoMatric.Text);
   	TempPlanilla.Grado9XNoMatric:= StrToInt(edtGrado9XNoMatric.Text);
   	TempPlanilla.Grado12XNoMatric:= StrToInt(edtGrado12XNoMatric.Text);
   	TempPlanilla.TecMedioXNoMatric:= StrToInt(edtTecMedioXNoMatric.Text);
   	TempPlanilla.NivSupXNoMatric:= StrToInt(edtNivSupXNoMatric.Text);

    TempPlanilla.TotalNivelXNoMatric:= StrToInt(edtTotalNivelXNoMatric.Text);                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    TempPlanilla.NoFormalTrabProxEdadJub:= StrToInt(edtNoFormalTrabProxEdadJub.Text);                    //5.4.1 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabProblemasSalud:= StrToInt(edtNoFormalTrabProblemasSalud.Text);              //5.4.2 Agregado en la versión 2008
    TempPlanilla.NoFormalLicEnfermedadYMaternidad:= StrToInt(edtNoFormalLicEnfermedadYMaternidad.Text);  //5.4.3 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabProblemasFamiliares:= StrToInt(edtNoFormalTrabProblemasFamiliares.Text);    //5.4.4 Agregado en la versión 2008
    TempPlanilla.NoFormalNoDisponibMatricXMINED:= StrToInt(edtNoFormalNoDisponibMatricXMINED.Text);      //5.4.5 Agregado en la versión 2008
    TempPlanilla.NoFormalNoDisponibMatricXMES:= StrToInt(edtNoFormalNoDisponibMatricXMES.Text);          //5.4.6 Agregado en la versión 2008
    TempPlanilla.NoFormalLimMatricNivSup:= StrToInt(edtNoFormalLimMatricNivSup.Text);                    //5.4.7 Agregado en la versión 2008
    TempPlanilla.NoFormalImposibEntidAbrirAulas:= StrToInt(edtNoFormalImposibEntidAbrirAulas.Text);      //5.4.8 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabNoAcredit:= StrToInt(edtNoFormalTrabNoAcredit.Text);                        //5.4.9 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabTurnosRotativos:= StrToInt(edtNoFormalTrabTurnosRotativos.Text);            //5.4.10 Agregado en la versión 2008
    TempPlanilla.NoFormalTrabNieganIncorp:= StrToInt(edtNoFormalTrabNieganIncorp.Text);                  //5.4.11 Agregado en la versión 2008
    TempPlanilla.NoFormalMovilConstruc:= StrToInt(edtNoFormalMovilConstruc.Text);                        //5.4.12 Agregado en la versión 2008
    TempPlanilla.NoFormalOtrasCausas:= StrToInt(edtNoFormalOtrasCausas.Text);                            //5.4.13 Agregado en la versión 2008

    if (MemoExplicNoMatric.Text= '')                      //5.5 Agregado en la versión 2008
      then
        TempPlanilla.ExplicNoMatric:= 'Sin comentarios.'
          else
	          TempPlanilla.ExplicNoMatric:= MemoExplicNoMatric.Text;

    TempPlanilla.CurHabilXTotalNoIdoneos:= StrToInt(edtCurHabilXTotalNoIdoneos.Text);                   //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.EntrenamientoXTotalNoIdoneos:= StrToInt(edtEntrenamientoXTotalNoIdoneos.Text);         //Parte del 5.6 (tabla) Agregado en la versión 2008
    TempPlanilla.TotalNoIdoneosXTotalNoIdoneos:= StrToInt(edtTotalNoIdoneosXTotalNoIdoneos.Text);       //Parte del 5.6 (tabla) Agregado en la versión 2008

    TempPlanilla.CurHabilXMatric:= StrToInt(edtCurHabilXMatric.Text);                                   //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.EntrenamientoXMatric:= StrToInt(edtEntrenamientoXMatric.Text);                         //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.TotalNoIdoneosXMatric:= StrToInt(edtTotalNoIdoneosXMatric.Text);                       //Parte del 5.6 (tabla) Agregado en la versión 2008
    
    TempPlanilla.CurHabilXNoMatric:= StrToInt(edtCurHabilXNoMatric.Text);                               //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.EntrenamientoXNoMatric:= StrToInt(edtEntrenamientoXNoMatric.Text);                     //Parte del 5.6 (tabla) Modificado en la versión 2008
    TempPlanilla.TotalNoIdoneosXNoMatric:= StrToInt(edtTotalNoIdoneosXNoMatric.Text);                   //Parte del 5.6 (tabla) Agregado en la versión 2008

    TempPlanilla.NoEficTrabProxEdadJub:= StrToInt(edtNoEficTrabProxEdadJub.Text);                       //5.7.1 Agregado en la versión 2008
    TempPlanilla.NoEficTrabProblemasSalud:= StrToInt(edtNoEficTrabProblemasSalud.Text);                 //5.7.2 Agregado en la versión 2008
    TempPlanilla.NoEficLicEnfermedadYMaternidad:= StrToInt(edtNoEficLicEnfermedadYMaternidad.Text);     //5.7.3 Agregado en la versión 2008
    TempPlanilla.NoEficTrabProblemasFamiliares:= StrToInt(edtNoEficTrabProblemasFamiliares.Text);       //5.7.4 Agregado en la versión 2008
    TempPlanilla.NoEficTrabTurnosRotativos:= StrToInt(edtNoEficTrabTurnosRotativos.Text);               //5.7.5 Agregado en la versión 2008
    TempPlanilla.NoEficTrabNieganIncorp:= StrToInt(edtNoEficTrabNieganIncorp.Text);                     //5.7.6 Agregado en la versión 2008
    TempPlanilla.NoEficMovilConstruc:= StrToInt(edtNoEficMovilConstruc.Text);                           //5.7.7 Agregado en la versión 2008
    TempPlanilla.NoEficOtrasCausas:= StrToInt(edtNoEficOtrasCausas.Text);                               //5.7.8 Agregado en la versión 2008

    TempPlanilla.Casilla1XPendiente:= StrToInt(edtCasilla1XPendiente.Text);     //Parte del 5.8 (tabla) Agregado en la versión 2008
    TempPlanilla.Casilla2XPendiente:= StrToInt(edtCasilla2XPendiente.Text);     //Parte del 5.8 (tabla) Agregado en la versión 2008
    TempPlanilla.TotalXPendiente:= StrToInt(edtTotalXPendiente.Text);           //Parte del 5.8 (tabla) Agregado en la versión 2008
    
    if (MemoCasilla1XCausas.Text= '')                                           //Parte del 5.8 (tabla) Agregado en la versión 2008
      then
        TempPlanilla.Casilla1XCausas:= 'Sin comentarios.'
          else
	          TempPlanilla.Casilla1XCausas:= MemoCasilla1XCausas.Text;

    if (MemoCasilla2XCausas.Text= '')                                           //Parte del 5.8 (tabla) Agregado en la versión 2008
      then
        TempPlanilla.Casilla2XCausas:= 'Sin comentarios.'
          else
	          TempPlanilla.Casilla2XCausas:= MemoCasilla2XCausas.Text;

    if (MemoTotalXCausas.Text= '')                                              //Parte del 5.8 (tabla) Agregado en la versión 2008
      then
        TempPlanilla.TotalXCausas:= 'Sin comentarios.'
          else
	          TempPlanilla.TotalXCausas:= MemoTotalXCausas.Text;
            

      //Le pasamos los parámetros (parte 6 de las Planillas Provinciales), desde la forma, al StoreProcedure.
      if (MemoValoracionCualitativaDelProcesoCapacCMG.Text= '')
        then
          TempPlanilla.ValoracionCualitativaDelProcesoCapac:= 'Sin comentarios.'
            else
              TempPlanilla.ValoracionCualitativaDelProcesoCapac:= MemoValoracionCualitativaDelProcesoCapacCMG.Text;
end;

procedure TfrmPrincipal.VaciarPlanillaTemporalPlanillasProvinciales;
begin
//*** Vacío la planilla hacia los Edits y Memos de origen. ***

      //Le pasamos los parámetros (parte 1 de las Planillas Provinciales), desde la Planilla Temporal, a la forma.
      edtTotalEntOrgCMG.Text:= IntToStr(TempPlanilla.TotalEntOrg);
      edtEntOrgConPlanAnualCapCMG.Text:= IntToStr(TempPlanilla.EntOrgConPlanAnualCap);
      edtTotalTrabOrgCMG.Text:= IntToStr(TempPlanilla.TotalTrabOrg);
      edtTotalGradAccCapCMG.Text:= IntToStr(TempPlanilla.TotalGradAccCap);
      edtRelacionGradXTotalCMG.Text:= floatToStr(TempPlanilla.RelacionGradXTotal);

      
      //Le pasamos los parámetros (parte 2 de las Planillas Provinciales), desde la Planilla Temporal, a la forma.
      edtGradEnEmpInternasCMG.Text:= IntToStr(TempPlanilla.GradEnEmpInternas);
      edtGradEnInstExternasCMG.Text:= IntToStr(TempPlanilla.GradEnInstExternas);
      edtDirectivosCMG.Text:= IntToStr(TempPlanilla.Directivos);
      edtTecnicosCMG.Text:= IntToStr(TempPlanilla.Tecnicos);
      edtAdministrativosCMG.Text:= IntToStr(TempPlanilla.Administrativos);
      edtTrabServiciosCMG.Text:= IntToStr(TempPlanilla.TrabServicios);
      edtOperariosCMG.Text:= IntToStr(TempPlanilla.Operarios);
      edtGradEnCurHabCMG.Text:= IntToStr(TempPlanilla.GradEnCurHab);
      edtGradEnCurPerfecCMG.Text:= IntToStr(TempPlanilla.GradEnCurPerfec);
      edtGradenAdiestLabCMG.Text:= IntToStr(TempPlanilla.GradEnAdiestLab);
      edtGradEnEntPTrabCMG.Text:= IntToStr(TempPlanilla.GradEnEntPTrab);
      edtGradEnCurPostGradoCMG.Text:= IntToStr(TempPlanilla.GradEnCurPostGrado);
      edtGradEnDiplomadosCMG.Text:= IntToStr(TempPlanilla.GradEnDiplomados);
      edtGradEnMaestriasCMG.Text:= IntToStr(TempPlanilla.GradEnMaestrias);
      edtGradEnDoctoradosCMG.Text:= IntToStr(TempPlanilla.GradEnDoctorados);
      edtGradEnCurFormCompMINEDCMG.Text:= IntToStr(TempPlanilla.GradEnCurFormCompMINED);
      edtGradEnCurFormCompMESCMG.Text:= IntToStr(TempPlanilla.GradEnCurFormCompMES);
      edtGradEnCurIdiomaExtCMG.Text:= IntToStr(TempPlanilla.GradEnCurIdiomaExt);
      edtGradEnCurHabCMG.Text:= IntToStr(TempPlanilla.GradEnCurHab);
      edtGradEnEntrenEnExtCMG.Text:= IntToStr(TempPlanilla.GradEnEntrenEnExt);
      edtGradEnOtrasAccCMG.Text:= IntToStr(TempPlanilla.GradEnOtrasAcc);


      //Le pasamos los parámetros (parte 3 de las Planillas Provinciales), desde la Planilla Temporal, a la forma.
      edtInstTotalUtilEnCapacCMG.Text:= IntToStr(TempPlanilla.InstTotalUtilEnCapac);      
      edtInstEventUtilEnCapacCMG.Text:= IntToStr(TempPlanilla.InstEventUtilEnCapac);
      edtInstPermUtilEnCapacCMG.Text:= IntToStr(TempPlanilla.InstPermUtilEnCapac);


      //Le pasamos los parámetros (parte 4 de las Planillas Provinciales), desde la Planilla Temporal, a la forma.
	    edtMaestriasXMatricCMG.Text:= IntToStr(TempPlanilla.MaestriasXMatric);
	    edtDiplomadosXMatricCMG.Text:= IntToStr(TempPlanilla.DiplomadosXMatric);
	    edtCurPostgradosXMatricCMG.Text:= IntToStr(TempPlanilla.CurPostgradosXMatric);
	    edtCurIdiomasXMatricCMG.Text:= IntToStr(TempPlanilla.CurIdiomasXMatric);
	    edtCurCompXMatricCMG.Text:= IntToStr(TempPlanilla.CurCompXMatric);
	    edtHabilitacionXMatricCMG.Text:= IntToStr(TempPlanilla.HabilitacionXMatric);
	    edtPerfecXMatricCMG.Text:= IntToStr(TempPlanilla.PerfecXMatric);
	    edtTallSemConfXMatricCMG.Text:= IntToStr(TempPlanilla.TallSemConfXMatric);
	    edtTotalXMatricCMG.Text:= IntToStr(TempPlanilla.TotalXMatric);
	    edtMaestriasXGradCMG.Text:= IntToStr(TempPlanilla.MaestriasXGrad);
	    edtDiplomadosXGradCMG.Text:= IntToStr(TempPlanilla.DiplomadosXGrad);
	    edtCurPostgradosXGradCMG.Text:= IntToStr(TempPlanilla.CurPostgradosXGrad);
	    edtCurIdiomasXGradCMG.Text:= IntToStr(TempPlanilla.CurIdiomasXGrad);
	    edtCurCompXGradCMG.Text:= IntToStr(TempPlanilla.CurCompXGrad);
	    edtHabilitacionXGradCMG.Text:= IntToStr(TempPlanilla.HabilitacionXGrad);
	    edtPerfecXGradCMG.Text:= IntToStr(TempPlanilla.PerfecXGrad);
	    edtTallSemConfXGradCMG.Text:= IntToStr(TempPlanilla.TallSemConfXGrad);
	    edtTotalXGradCMG.Text:= IntToStr(TempPlanilla.TotalXGrad);
	    MemoValTrabDesPorEscRamalesCMG.Text:= TempPlanilla.ValTrabDesPorEscRamales;


      //Le pasamos los parámetros (parte 5 de las Planillas Provinciales), desde la Planilla Temporal, a la forma.
	    edtTotalTrabNoIdoneosCMG.Text:= IntToStr(TempPlanilla.TotalTrabNoIdoneos);
	    edtNoIdoneosSinCalificFormalCMG.Text:= IntToStr(TempPlanilla.NoIdoneosSinCalificFormal);
	    edtNoIdoneosSinEficienciaCMG.Text:= IntToStr(TempPlanilla.NoIdoneosSinEficiencia);
	    edtNoIdoneosSinBConductaCMG.Text:= IntToStr(TempPlanilla.NoIdoneosSinBConducta);


   	edtGrado6XTotalNoIdoneos.Text:= IntToStr(TempPlanilla.Grado6XTotalNoIdoneos);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado9XTotalNoIdoneos.Text:= IntToStr(TempPlanilla.Grado9XTotalNoIdoneos);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtGrado12XTotalNoIdoneos.Text:= IntToStr(TempPlanilla.Grado12XTotalNoIdoneos);             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtTecMedioXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.TecMedioXTotalNoIdoneos);           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	edtNivSupXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.NivSupXTotalNoIdoneos);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    edtTotalNivelXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.TotalNivelXTotalNoIdoneos);       //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XMatric.Text:= IntToStr(TempPlanilla.Grado6XMatric);
   	edtGrado9XMatric.Text:= IntToStr(TempPlanilla.Grado9XMatric);
   	edtGrado12XMatric.Text:= IntToStr(TempPlanilla.Grado12XMatric);
   	edtTecMedioXMatric.Text:= IntToStr(TempPlanilla.TecMedioXMatric);
   	edtNivSupXMatric.Text:= IntToStr(TempPlanilla.NivSupXMatric);

    edtTotalNivelXMatric.Text:= IntToStr(TempPlanilla.TotalNivelXMatric);                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	edtGrado6XNoMatric.Text:= IntToStr(TempPlanilla.Grado6XNoMatric);
   	edtGrado9XNoMatric.Text:= IntToStr(TempPlanilla.Grado9XNoMatric);
   	edtGrado12XNoMatric.Text:= IntToStr(TempPlanilla.Grado12XNoMatric);
   	edtTecMedioXNoMatric.Text:= IntToStr(TempPlanilla.TecMedioXNoMatric);
   	edtNivSupXNoMatric.Text:= IntToStr(TempPlanilla.NivSupXNoMatric);

    edtTotalNivelXNoMatric.Text:= IntToStr(TempPlanilla.TotalNivelXNoMatric);                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    edtNoFormalTrabProxEdadJub.Text:= IntToStr(TempPlanilla.NoFormalTrabProxEdadJub);                    //5.4.1 Agregado en la versión 2008
    edtNoFormalTrabProblemasSalud.Text:= IntToStr(TempPlanilla.NoFormalTrabProblemasSalud);              //5.4.2 Agregado en la versión 2008
    edtNoFormalLicEnfermedadYMaternidad.Text:= IntToStr(TempPlanilla.NoFormalLicEnfermedadYMaternidad);  //5.4.3 Agregado en la versión 2008
    edtNoFormalTrabProblemasFamiliares.Text:= IntToStr(TempPlanilla.NoFormalTrabProblemasFamiliares);    //5.4.4 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMINED.Text:= IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMINED);      //5.4.5 Agregado en la versión 2008
    edtNoFormalNoDisponibMatricXMES.Text:= IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMES);          //5.4.6 Agregado en la versión 2008
    edtNoFormalLimMatricNivSup.Text:= IntToStr(TempPlanilla.NoFormalLimMatricNivSup);                    //5.4.7 Agregado en la versión 2008
    edtNoFormalImposibEntidAbrirAulas.Text:= IntToStr(TempPlanilla.NoFormalImposibEntidAbrirAulas);      //5.4.8 Agregado en la versión 2008
    edtNoFormalTrabNoAcredit.Text:= IntToStr(TempPlanilla.NoFormalTrabNoAcredit);                        //5.4.9 Agregado en la versión 2008
    edtNoFormalTrabTurnosRotativos.Text:= IntToStr(TempPlanilla.NoFormalTrabTurnosRotativos);            //5.4.10 Agregado en la versión 2008
    edtNoFormalTrabNieganIncorp.Text:= IntToStr(TempPlanilla.NoFormalTrabNieganIncorp);                  //5.4.11 Agregado en la versión 2008
    edtNoFormalMovilConstruc.Text:= IntToStr(TempPlanilla.NoFormalMovilConstruc);                        //5.4.12 Agregado en la versión 2008
    edtNoFormalOtrasCausas.Text:= IntToStr(TempPlanilla.NoFormalOtrasCausas);                            //5.4.13 Agregado en la versión 2008

    MemoExplicNoMatric.Text:= TempPlanilla.ExplicNoMatric;                          //5.5 Agregado en la versión 2008

    edtCurHabilXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.CurHabilXTotalNoIdoneos);             //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.EntrenamientoXTotalNoIdoneos);   //Parte del 5.6 (tabla) Agregado en la versión 2008
    edtTotalNoIdoneosXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.TotalNoIdoneosXTotalNoIdoneos); //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXMatric.Text:= IntToStr(TempPlanilla.CurHabilXMatric);                              //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXMatric.Text:= IntToStr(TempPlanilla.EntrenamientoXMatric);                    //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXMatric.Text:= IntToStr(TempPlanilla.TotalNoIdoneosXMatric);                  //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtCurHabilXNoMatric.Text:= IntToStr(TempPlanilla.CurHabilXNoMatric);                          //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtEntrenamientoXNoMatric.Text:= IntToStr(TempPlanilla.EntrenamientoXNoMatric);                //Parte del 5.6 (tabla) Modificado en la versión 2008
    edtTotalNoIdoneosXNoMatric.Text:= IntToStr(TempPlanilla.TotalNoIdoneosXNoMatric);              //Parte del 5.6 (tabla) Agregado en la versión 2008

    edtNoEficTrabProxEdadJub.Text:= IntToStr(TempPlanilla.NoEficTrabProxEdadJub);                   //5.7.1 Agregado en la versión 2008
    edtNoEficTrabProblemasSalud.Text:= IntToStr(TempPlanilla.NoEficTrabProblemasSalud);             //5.7.2 Agregado en la versión 2008
    edtNoEficLicEnfermedadYMaternidad.Text:= IntToStr(TempPlanilla.NoEficLicEnfermedadYMaternidad); //5.7.3 Agregado en la versión 2008
    edtNoEficTrabProblemasFamiliares.Text:= IntToStr(TempPlanilla.NoEficTrabProblemasFamiliares);   //5.7.4 Agregado en la versión 2008
    edtNoEficTrabTurnosRotativos.Text:= IntToStr(TempPlanilla.NoEficTrabTurnosRotativos);           //5.7.5 Agregado en la versión 2008
    edtNoEficTrabNieganIncorp.Text:= IntToStr(TempPlanilla.NoEficTrabNieganIncorp);                 //5.7.6 Agregado en la versión 2008
    edtNoEficMovilConstruc.Text:= IntToStr(TempPlanilla.NoEficMovilConstruc);                       //5.7.7 Agregado en la versión 2008
    edtNoEficOtrasCausas.Text:= IntToStr(TempPlanilla.NoEficOtrasCausas);                           //5.7.8 Agregado en la versión 2008

    edtCasilla1XPendiente.Text:= IntToStr(TempPlanilla.Casilla1XPendiente);                  //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtCasilla2XPendiente.Text:= IntToStr(TempPlanilla.Casilla2XPendiente);                  //Parte del 5.8 (tabla) Agregado en la versión 2008
    edtTotalXPendiente.Text:= IntToStr(TempPlanilla.TotalXPendiente);                        //Parte del 5.8 (tabla) Agregado en la versión 2008

    MemoCasilla1XCausas.Text:= TempPlanilla.Casilla1XCausas;                                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoCasilla2XCausas.Text:= TempPlanilla.Casilla2XCausas;                                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    MemoTotalXCausas.Text:= TempPlanilla.TotalXCausas;                                       //Parte del 5.8 (tabla) Agregado en la versión 2008

      
      //Le pasamos los parámetros (parte 6 de las Planillas Provinciales), desde la Planilla Temporal, a la forma.
      MemoValoracionCualitativaDelProcesoCapacCMG.Text:= TempPlanilla.ValoracionCualitativaDelProcesoCapac;
end;

procedure TfrmPrincipal.VaciarPlanillaDBTemporalPlanillasProvinciales;
begin
//*** Vacío la planilla hacia los DBEdits y DBMemos de origen. ***

      //Le pasamos los parámetros (parte 1 de las Planillas Provinciales), desde la Planilla Temporal, a la forma DB.
      DBedtTotalEntOrgCMG.Text:= IntToStr(TempPlanilla.TotalEntOrg);
      DBedtEntOrgConPlanAnualCapCMG.Text:= IntToStr(TempPlanilla.EntOrgConPlanAnualCap);
      DBedtTotalTrabOrgCMG.Text:= IntToStr(TempPlanilla.TotalTrabOrg);
      DBedtTotalGradAccCapCMG.Text:= IntToStr(TempPlanilla.TotalGradAccCap);
      DBedtRelacionGradXTotalCMG.Text:= floatToStr(TempPlanilla.RelacionGradXTotal);


      //Le pasamos los parámetros (parte 2 de las Planillas Provinciales), desde la Planilla Temporal, a la forma DB.
      DBedtGradEnEmpInternasCMG.Text:= IntToStr(TempPlanilla.GradEnEmpInternas);
      DBedtGradEnInstExternasCMG.Text:= IntToStr(TempPlanilla.GradEnInstExternas);
      DBedtDirectivosCMG.Text:= IntToStr(TempPlanilla.Directivos);
      DBedtTecnicosCMG.Text:= IntToStr(TempPlanilla.Tecnicos);
      DBedtAdministrativosCMG.Text:= IntToStr(TempPlanilla.Administrativos);
      DBedtTrabServiciosCMG.Text:= IntToStr(TempPlanilla.TrabServicios);
      DBedtOperariosCMG.Text:= IntToStr(TempPlanilla.Operarios);
      DBedtGradEnCurHabCMG.Text:= IntToStr(TempPlanilla.GradEnCurHab);
      DBedtGradEnCurPerfecCMG.Text:= IntToStr(TempPlanilla.GradEnCurPerfec);
      DBedtGradenAdiestLabCMG.Text:= IntToStr(TempPlanilla.GradEnAdiestLab);
      DBedtGradEnEntPTrabCMG.Text:= IntToStr(TempPlanilla.GradEnEntPTrab);
      DBedtGradEnCurPostGradoCMG.Text:= IntToStr(TempPlanilla.GradEnCurPostGrado);
      DBedtGradEnDiplomadosCMG.Text:= IntToStr(TempPlanilla.GradEnDiplomados);
      DBedtGradEnMaestriasCMG.Text:= IntToStr(TempPlanilla.GradEnMaestrias);
      DBedtGradEnDoctoradosCMG.Text:= IntToStr(TempPlanilla.GradEnDoctorados);
      DBedtGradEnCurFormCompMINEDCMG.Text:= IntToStr(TempPlanilla.GradEnCurFormCompMINED);
      DBedtGradEnCurFormCompMESCMG.Text:= IntToStr(TempPlanilla.GradEnCurFormCompMES);
      DBedtGradEnCurIdiomaExtCMG.Text:= IntToStr(TempPlanilla.GradEnCurIdiomaExt);
      DBedtGradEnCurHabCMG.Text:= IntToStr(TempPlanilla.GradEnCurHab);
      DBedtGradEnEntrenEnExtCMG.Text:= IntToStr(TempPlanilla.GradEnEntrenEnExt);
      DBedtGradEnOtrasAccCMG.Text:= IntToStr(TempPlanilla.GradEnOtrasAcc);


      //Le pasamos los parámetros (parte 3 de las Planillas Provinciales), desde la Planilla Temporal, a la forma DB.
      DBedtInstTotalUtilEnCapacCMG.Text:= IntToStr(TempPlanilla.InstTotalUtilEnCapac);
      DBedtInstEventUtilEnCapacCMG.Text:= IntToStr(TempPlanilla.InstEventUtilEnCapac);
      DBedtInstPermUtilEnCapacCMG.Text:= IntToStr(TempPlanilla.InstPermUtilEnCapac);


      //Le pasamos los parámetros (parte 4 de las Planillas Provinciales), desde la Planilla Temporal, a la forma DB.
	    DBedtMaestriasXMatricCMG.Text:= IntToStr(TempPlanilla.MaestriasXMatric);
	    DBedtDiplomadosXMatricCMG.Text:= IntToStr(TempPlanilla.DiplomadosXMatric);
	    DBedtCurPostgradosXMatricCMG.Text:= IntToStr(TempPlanilla.CurPostgradosXMatric);
	    DBedtCurIdiomasXMatricCMG.Text:= IntToStr(TempPlanilla.CurIdiomasXMatric);
	    DBedtCurCompXMatricCMG.Text:= IntToStr(TempPlanilla.CurCompXMatric);
	    DBedtHabilitacionXMatricCMG.Text:= IntToStr(TempPlanilla.HabilitacionXMatric);
	    DBedtPerfecXMatricCMG.Text:= IntToStr(TempPlanilla.PerfecXMatric);
	    DBedtTallSemConfXMatricCMG.Text:= IntToStr(TempPlanilla.TallSemConfXMatric);
	    DBedtTotalXMatricCMG.Text:= IntToStr(TempPlanilla.TotalXMatric);
	    DBedtMaestriasXGradCMG.Text:= IntToStr(TempPlanilla.MaestriasXGrad);
	    DBedtDiplomadosXGradCMG.Text:= IntToStr(TempPlanilla.DiplomadosXGrad);
	    DBedtCurPostgradosXGradCMG.Text:= IntToStr(TempPlanilla.CurPostgradosXGrad);
	    DBedtCurIdiomasXGradCMG.Text:= IntToStr(TempPlanilla.CurIdiomasXGrad);
	    DBedtCurCompXGradCMG.Text:= IntToStr(TempPlanilla.CurCompXGrad);
	    DBedtHabilitacionXGradCMG.Text:= IntToStr(TempPlanilla.HabilitacionXGrad);
	    DBedtPerfecXGradCMG.Text:= IntToStr(TempPlanilla.PerfecXGrad);
	    DBedtTallSemConfXGradCMG.Text:= IntToStr(TempPlanilla.TallSemConfXGrad);
	    DBedtTotalXGradCMG.Text:= IntToStr(TempPlanilla.TotalXGrad);
	    DBMemoValTrabDesPorEscRamalesCMG.Text:= TempPlanilla.ValTrabDesPorEscRamales;


      //Le pasamos los parámetros (parte 5 de las Planillas Provinciales), desde la Planilla Temporal, a la forma DB.
	    DBedtTotalTrabNoIdoneosCMG.Text:= IntToStr(TempPlanilla.TotalTrabNoIdoneos);
	    DBedtNoIdoneosSinCalificFormalCMG.Text:= IntToStr(TempPlanilla.NoIdoneosSinCalificFormal);
	    DBedtNoIdoneosSinEficienciaCMG.Text:= IntToStr(TempPlanilla.NoIdoneosSinEficiencia);
	    DBedtNoIdoneosSinBConductaCMG.Text:= IntToStr(TempPlanilla.NoIdoneosSinBConducta);


   	DBedtGrado6XTotalNoIdoneos.Text:= IntToStr(TempPlanilla.Grado6XTotalNoIdoneos);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado9XTotalNoIdoneos.Text:= IntToStr(TempPlanilla.Grado9XTotalNoIdoneos);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtGrado12XTotalNoIdoneos.Text:= IntToStr(TempPlanilla.Grado12XTotalNoIdoneos);             //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtTecMedioXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.TecMedioXTotalNoIdoneos);           //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
   	DBedtNivSupXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.NivSupXTotalNoIdoneos);               //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008
    DBedtTotalNivelXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.TotalNivelXTotalNoIdoneos);       //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XMatric.Text:= IntToStr(TempPlanilla.Grado6XMatric);
   	DBedtGrado9XMatric.Text:= IntToStr(TempPlanilla.Grado9XMatric);
   	DBedtGrado12XMatric.Text:= IntToStr(TempPlanilla.Grado12XMatric);
   	DBedtTecMedioXMatric.Text:= IntToStr(TempPlanilla.TecMedioXMatric);
   	DBedtNivSupXMatric.Text:= IntToStr(TempPlanilla.NivSupXMatric);

    DBedtTotalNivelXMatric.Text:= IntToStr(TempPlanilla.TotalNivelXMatric);                   //Parte del nuevo 5.3 (tabla) Agregado en la versión 2008

   	DBedtGrado6XNoMatric.Text:= IntToStr(TempPlanilla.Grado6XNoMatric);
   	DBedtGrado9XNoMatric.Text:= IntToStr(TempPlanilla.Grado9XNoMatric);
   	DBedtGrado12XNoMatric.Text:= IntToStr(TempPlanilla.Grado12XNoMatric);
   	DBedtTecMedioXNoMatric.Text:= IntToStr(TempPlanilla.TecMedioXNoMatric);
   	DBedtNivSupXNoMatric.Text:= IntToStr(TempPlanilla.NivSupXNoMatric);

    DBedtTotalNivelXNoMatric.Text:= IntToStr(TempPlanilla.TotalNivelXNoMatric);                 //Parte del 5.3 (tabla) Agregado en la versión 2008

    DBedtNoFormalTrabProxEdadJub.Text:= IntToStr(TempPlanilla.NoFormalTrabProxEdadJub);                    //5.4.1 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasSalud.Text:= IntToStr(TempPlanilla.NoFormalTrabProblemasSalud);              //5.4.2 Agregado en la versión 2008
    DBedtNoFormalLicEnfermedadYMaternidad.Text:= IntToStr(TempPlanilla.NoFormalLicEnfermedadYMaternidad);  //5.4.3 Agregado en la versión 2008
    DBedtNoFormalTrabProblemasFamiliares.Text:= IntToStr(TempPlanilla.NoFormalTrabProblemasFamiliares);    //5.4.4 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMINED.Text:= IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMINED);      //5.4.5 Agregado en la versión 2008
    DBedtNoFormalNoDisponibMatricXMES.Text:= IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMES);          //5.4.6 Agregado en la versión 2008
    DBedtNoFormalLimMatricNivSup.Text:= IntToStr(TempPlanilla.NoFormalLimMatricNivSup);                    //5.4.7 Agregado en la versión 2008
    DBedtNoFormalImposibEntidAbrirAulas.Text:= IntToStr(TempPlanilla.NoFormalImposibEntidAbrirAulas);      //5.4.8 Agregado en la versión 2008
    DBedtNoFormalTrabNoAcredit.Text:= IntToStr(TempPlanilla.NoFormalTrabNoAcredit);                        //5.4.9 Agregado en la versión 2008
    DBedtNoFormalTrabTurnosRotativos.Text:= IntToStr(TempPlanilla.NoFormalTrabTurnosRotativos);            //5.4.10 Agregado en la versión 2008
    DBedtNoFormalTrabNieganIncorp.Text:= IntToStr(TempPlanilla.NoFormalTrabNieganIncorp);                  //5.4.11 Agregado en la versión 2008
    DBedtNoFormalMovilConstruc.Text:= IntToStr(TempPlanilla.NoFormalMovilConstruc);                        //5.4.12 Agregado en la versión 2008
    DBedtNoFormalOtrasCausas.Text:= IntToStr(TempPlanilla.NoFormalOtrasCausas);                            //5.4.13 Agregado en la versión 2008

    DBMemoExplicNoMatric.Text:= TempPlanilla.ExplicNoMatric;                          //5.5 Agregado en la versión 2008

    DBedtCurHabilXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.CurHabilXTotalNoIdoneos);             //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.EntrenamientoXTotalNoIdoneos);   //Parte del 5.6 (tabla) Agregado en la versión 2008
    DBedtTotalNoIdoneosXTotalNoIdoneos.Text:= IntToStr(TempPlanilla.TotalNoIdoneosXTotalNoIdoneos); //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXMatric.Text:= IntToStr(TempPlanilla.CurHabilXMatric);                              //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXMatric.Text:= IntToStr(TempPlanilla.EntrenamientoXMatric);                    //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXMatric.Text:= IntToStr(TempPlanilla.TotalNoIdoneosXMatric);                  //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtCurHabilXNoMatric.Text:= IntToStr(TempPlanilla.CurHabilXNoMatric);                          //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtEntrenamientoXNoMatric.Text:= IntToStr(TempPlanilla.EntrenamientoXNoMatric);                //Parte del 5.6 (tabla) Modificado en la versión 2008
    DBedtTotalNoIdoneosXNoMatric.Text:= IntToStr(TempPlanilla.TotalNoIdoneosXNoMatric);              //Parte del 5.6 (tabla) Agregado en la versión 2008

    DBedtNoEficTrabProxEdadJub.Text:= IntToStr(TempPlanilla.NoEficTrabProxEdadJub);                   //5.7.1 Agregado en la versión 2008
    DBedtNoEficTrabProblemasSalud.Text:= IntToStr(TempPlanilla.NoEficTrabProblemasSalud);             //5.7.2 Agregado en la versión 2008
    DBedtNoEficLicEnfermedadYMaternidad.Text:= IntToStr(TempPlanilla.NoEficLicEnfermedadYMaternidad); //5.7.3 Agregado en la versión 2008
    DBedtNoEficTrabProblemasFamiliares.Text:= IntToStr(TempPlanilla.NoEficTrabProblemasFamiliares);   //5.7.4 Agregado en la versión 2008
    DBedtNoEficTrabTurnosRotativos.Text:= IntToStr(TempPlanilla.NoEficTrabTurnosRotativos);           //5.7.5 Agregado en la versión 2008
    DBedtNoEficTrabNieganIncorp.Text:= IntToStr(TempPlanilla.NoEficTrabNieganIncorp);                 //5.7.6 Agregado en la versión 2008
    DBedtNoEficMovilConstruc.Text:= IntToStr(TempPlanilla.NoEficMovilConstruc);                       //5.7.7 Agregado en la versión 2008
    DBedtNoEficOtrasCausas.Text:= IntToStr(TempPlanilla.NoEficOtrasCausas);                           //5.7.8 Agregado en la versión 2008

    DBedtCasilla1XPendiente.Text:= IntToStr(TempPlanilla.Casilla1XPendiente);                  //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtCasilla2XPendiente.Text:= IntToStr(TempPlanilla.Casilla2XPendiente);                  //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBedtTotalXPendiente.Text:= IntToStr(TempPlanilla.TotalXPendiente);                        //Parte del 5.8 (tabla) Agregado en la versión 2008

    DBMemoCasilla1XCausas.Text:= TempPlanilla.Casilla1XCausas;                                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoCasilla2XCausas.Text:= TempPlanilla.Casilla2XCausas;                                 //Parte del 5.8 (tabla) Agregado en la versión 2008
    DBMemoTotalXCausas.Text:= TempPlanilla.TotalXCausas;                                       //Parte del 5.8 (tabla) Agregado en la versión 2008


    
      //Le pasamos los parámetros (parte 6 de las Planillas Provinciales), desde la Planilla Temporal, a la forma DB.
      DBMemoValoracionCualitativaDelProcesoCapacCMG.Text:= TempPlanilla.ValoracionCualitativaDelProcesoCapac;
end;

procedure TfrmPrincipal.btnGenerarReportePlanillasProvincialesClick(Sender: TObject);
var
  anno: integer;
  provincia: AnsiString;
begin
  //Lleno las variables con el año seleccionado en el primer DBGrid y la provincia seleccionada en el primer ComboBox
  anno:= DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value;
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Generando Reporte para la provincia ' + provincia + ', en el año ' + IntToStr(anno) + '.';
  
  //Oculto los botones de "Generar Reporte" de las Planillas Provinciales
  OcultarBotonesGenerarReportePlanillasProvinciales;

  //Oculto el SpeedButton de "Generar Reporte"
  SpeedButtonGenerarReportePlanilla.Visible:= False;

  //Oculto la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;


  //---------- *** Esta es la parte donde debo implementar la generación de Reportes *** ----------
  //Relleno la planilla temporal para el evento OnPrint del rvSystem
  RellenarPlanillaDBTemporalPlanillasProvinciales;

  //No está implementado
  //DptoCapacitacion.GenerarReportePlanillaProvincialPorAnnoYProvincia(TempPlanilla);

  //Impido que pueda salvar en el Preview a otra cosa que no sea PDF  (no sirve)
  //RvSystemPlanillasProvinciales.SystemOptions := RvSystemPlanillasProvinciales.SystemOptions + [soNoGenerate];
  //RvSystemPlanillasProvinciales.SystemFiler.FileName:= '*.pdf';

  //Especifico que el destino sea como Vista Previa
  RvSystemPlanillasProvinciales.DefaultDest    := rdPreview;

  //Ejecuto el rvSystem
  RvSystemPlanillasProvinciales.Execute;


  //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
  MostrarBotonesGenerarReportePlanillasProvinciales;

  //Muestro el SpeedButton de "Generar Reporte"
  SpeedButtonGenerarReportePlanilla.Visible:= True;

  //Muestro la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';

  //Pongo el Focus en los DBGrids de las Planillas Provinciales
  PonerFocusEnDBGridsPlanillasProvinciales;
end;

procedure TfrmPrincipal.Desconectarse1Click(Sender: TObject);
begin
  if (ModuloActivo= 'PlanillasProvinciales')
    then SpeedButtonDesconectarsePlanillas.Click;

  if (ModuloActivo= 'PuestosDeTrabajo')
    then SpeedButtonDesconectarsePuestosDeTrabajo.Click;

  if (ModuloActivo= 'HospitalesDeExcelencia')
    then SpeedButtonDesconectarseHospitalesDeExcelencia.Click;
end;

procedure TfrmPrincipal.SpeedButtonConectarseTodosClick(Sender: TObject);
var
  id_Planilla: Integer;
begin
  //Debo mostrar una forma para la conexión, con IP (o nombre PC), usuario, pass, etc.
  frmConectarse.Position:= poDesktopCenter;
  frmConectarse.ShowModal;

  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Muestro la forma de Loggeo
        frmValidacionPuestoDeTrabajo.Position:= poDesktopCenter;
        frmValidacionPuestoDeTrabajo.ShowModal;

        //Verifico de nuevo la conexión, por si se canceló el Loggeo
        if (DptoCapacitacion.ExisteConexionConLaBD)
          then
            begin
              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Entró al sistema HC-CAP 2008.');

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;

              //Decido qué componentes mostrar en dependencia de los privilegios del Loggeado
              if ( DptoCapacitacion.ElTrabajadorEsAdministrador = False)
                then
                  begin //Se trata de un Operador

                    if (PestannaActiva = 'PuestosDeTrabajo')
                      then
                        begin
                          ValidarComponentesPuestosDeTrabajo;
                        end;

                    if (PestannaActiva = 'TrazasDelSistema')
                      then
                        begin
                          ValidarComponentesTrazasDelSistema;
                        end;

                    //Oculto el PageControl de Control del Sistema
                    PageControlControlDelSistema.Visible:= False;

                    //Oculto el ToolBar de la pestaña de Control del Sistema
                    ToolBarControlDelSistema.Visible:= False;

                    //Oculto la pestaña de Control del Sistema
                    TabSheetControlDelSistema.TabVisible:= False;
                  end                 
                    else
                      begin //Se trata de un Administrador

                        if (PestannaActiva = 'PuestosDeTrabajo')
                          then
                            begin
                              ValidarComponentesPuestosDeTrabajo;
                            end;

                        if (PestannaActiva = 'TrazasDelSistema')
                          then
                            begin
                              ValidarComponentesTrazasDelSistema;
                            end;
                          
                        //Muestro el PageControl de Control del Sistema
                        PageControlControlDelSistema.Visible:= True;

                        //Muestro el ToolBar de la pestaña de Control del Sistema
                        ToolBarControlDelSistema.Visible:= True;

                        //Muestro la pestaña de Control del Sistema
                        TabSheetControlDelSistema.TabVisible:= True;
                      end;
            end;//Fin de la segunda verificación de conexión, por posible cancelación de Loggeo

        if (   (PestannaActiva <> 'PuestosDeTrabajo') and (PestannaActiva <> 'TrazasDelSistema')   )
          then
            begin
              //Habilito las opciones de Edición y Ver del MainMenu
              MenuEdicion.Enabled:= True;
              MenuVer.Enabled:= True;
            end;

              //Muestro el Label de la Cantidad de Puestos de Trabajo
              lblCantidadPuestosDeTrabajo.Visible:= True;

              //Muestro los datos en el DBGrid del Módulo de Puestos de Trabajo
              DptoCapacitacion.MostrarPuestosDeTrabajo;

              //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
              lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

              //Muestro los datos en los DBGrids, DBEdits y DBMemos del Módulo de las Planillas Provinciales
              DptoCapacitacion.MostrarPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.Text);

              //Habilito los ComboBox de "Provincia" y "Período" de los Hospitales de Excelencia
              ComboBoxProvinciasHospitalesDeExcelencia.Enabled:= True;
              ComboBoxSemestreHospitalesDeExcelencia.Enabled:= True;

        //Muestro los nombres de los Hospitales de Excelencia en el DBLookupComboBox del Módulo de Hospitales de Excelencia
        if (ComboBoxProvinciasHospitalesDeExcelencia.Text= 'TODAS')
          then
            begin
              //Cambio la procedencia de los datos
              DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;

              //Selecciono todos los Hospitales de Excelencia del país
              DptoCapacitacion.MostrarHospitalesPorProvincia('TODAS');

              //Selecciono todos los Hospitales de Excelencia del país, para la administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

              //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
              lblCantidadDeHospitalesParaAdmin.Visible:= True;
              lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

              //Muestro el Capacitador con fines de administración
              DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

              //Selecciono todos los Tipos de Cursos, para la administración de Tipos de Cursos.
              DptoCapacitacion.MostrarTiposDeCursos;

              //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
              lblCantidadTiposDeCursos.Visible:= True;
              lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

              //Verifico la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
              if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                then
                  begin
                    //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                    DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                    //Oculto la información de que no existe capacitador para ese Hospital
                    lblNoTieneCapacitador.Visible:= False;

                    //Habilito todos los botones, para la administración de Hospitales y Capacitadores
                    btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnContactarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                    //Pongo el cursor del mouse como una mano, en el DBMemo
                    DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;

                    //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
                    lblCantidadDeHospitales.Visible:= True;
                    lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';
                  end
                    else {No hay hospitales en todo el país}
                      begin
                        //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                        //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la información de que no existen hospitales
                        lblCantidadDeHospitales.Visible:= True;
                        lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';

                        //Habilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
                        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                      end;

              //Valido el estado para los Componentes de la pestaña de Administración de Hospitales de Excelencia y sus Capacitadores                      
              if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
                then
                  ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

              //Valido el estado para los Componentes de la pestaña de Administración de Tipos de Cursos
              if (PestannaActiva = 'TiposDeCursos')
                then
                  ValidarComponentesTiposDeCursos;

              //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
              if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                then
                  begin
                    //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                    if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                      then
                        begin
                          //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                          DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Escondo la información de que no existe capacitador, pues sí lo hay
                          lblNoTieneCapacitador.Visible:= False;

                          //Muestro las Planillas de Excelencia asociadas a ese Hospital
                          DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                          if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                            then
                              begin
                                //Recojo el id_Planilla
                                id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                //Muestro el listado de Cursos Programados
                                DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                //Muestro el listado de Cursos Realizados
                                DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                              end
                                else
                                  begin
                                    //Intento mostrar el listado de Cursos Programados, para que se borren los componentes
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                    //Intento mostrar el listado de Cursos Realizados, para que se borren los componentes
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                  end;

                          //Pongo el cursor del mouse como una mano, en el DBMemo
                          DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                          //Cambio el focus si la pestaña adecuada está activa
                          if (   (PageControlTodo.ActivePageIndex= 2) and (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)   )
                            then
                              begin
                                //Cambio el focus para evitar el scroll
                                DBGridHospitalesDeExcelencia.SetFocus;
                              end;
                              
                          //Valido el estado para los Componentes de la pestaña
                          if (PestannaActiva = 'PlanillasDeExcelencia')
                            then
                              ValidarComponentesPlanillasDeExcelencia;
                        end
                          else {No hay Capacitador}
                            begin
                              //Muestro la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= True;

                              //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                              //Cambio el focus para evitar el scroll
                              DBGridHospitalesDeExcelencia.SetFocus;
                            end;
                  end
                    else  {No se escogió ningún Hospital}
                      begin
                        //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
                        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0 );

                        //Valido el estado para los Componentes de la pestaña
                        if (PestannaActiva = 'PlanillasDeExcelencia')
                          then
                            ValidarComponentesPlanillasDeExcelencia;

                        //Limpio los componentes (los que se pueden limpiar, por si acaso)
                        DBedtProvincia.Clear;
                        DBMemoDireccion.Clear;
                        DBedtNombreCapac.Clear;
                        DBedtPrimerApellidoCapac.Clear;
                        DBedtSegundoApellidoCapac.Clear;
                        DBedtCICapac.Clear;
                        DBMemoTelefonosCapac.Clear;

                        //Cambio el focus para evitar el scroll
                        if (   (PageControlTodo.TabIndex= 2) and (PageControlHospitalesDeExcelencia.TabIndex= 0)   )
                          then
                            DBGridHospitalesDeExcelencia.SetFocus;
                      end;
            end
              else   {No se escogió "TODAS", sino una provincia en específico} 
                begin
                  //Cambio la procedencia de los datos
                  DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;

                  //Selecciono todos los Hospitales de Excelencia de la provincia
                  DptoCapacitacion.MostrarHospitalesPorProvincia(ComboBoxProvinciasHospitalesDeExcelencia.Text);

                  //Selecciono todos los Hospitales de Excelencia del país, para la administración de Hospitales y Capacitadores
                  DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

                  //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
                  lblCantidadDeHospitalesParaAdmin.Visible:= True;
                  lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

                  //Muestro el Capacitador con fines de administración
                  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

                  //Selecciono todos los Tipos de Cursos, para la administración de Tipos de Cursos.
                  DptoCapacitacion.MostrarTiposDeCursos;

                  //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
                  lblCantidadTiposDeCursos.Visible:= True;
                  lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

                  //Verifico la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
                  if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                    then
                      begin
                        //Habilito todos los botones, para la administración de Hospitales y Capacitadores
                        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                        btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                        btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                        //Pongo el cursor del mouse como una mano, en el DBMemo
                        DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;
                      end
                        else
                          begin
                            //Habilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
                            btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                          end;

                  //Valido el estado para los Componentes de la pestaña de Administración de Hospitales de Excelencia y sus Capacitadores
                  if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
                    then
                      ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

                  //Valido el estado para los Componentes de la pestaña de Administración de Tipos de Cursos
                  if (PestannaActiva = 'TiposDeCursos')
                    then
                      ValidarComponentesTiposDeCursos;

                  //Muestro el Capacitador con fines de administración
                  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

                  //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                  if (DptoCapacitacion.CantidadDeHospitalesPorProvincia <> 0)
                    then
                      begin
                        //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                        //Oculto la información de que no existe capacitador para ese Hospital
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                        lblCantidadDeHospitales.Visible:= true;
                        lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesPorProvincia) + ' a escoger )'
                      end
                        else  {No hay hospitales en la provincia}
                          begin
                            //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                            DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                            //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                            lblNoTieneCapacitador.Visible:= False;

                            //Muestro la información de que no existen hospitales
                            lblCantidadDeHospitales.Visible:= true;
                            lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                          end;

                  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
                  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                    then
                      begin
                        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                         if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                          then
                            begin
                              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Escondo la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= False;

                              //Muestro las Planillas de Excelencia asociadas a ese Hospital
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                                then
                                  begin
                                    //Recojo el id_Planilla
                                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                    //Muestro el listado de Cursos Programados
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                    //Muestro el listado de Cursos Realizados
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                  end;

                              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                              //Cambio el focus si la pestaña adecuada está activa
                              if (   (PageControlTodo.ActivePageIndex= 2) and (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)   )
                                then
                                  begin
                                    //Cambio el focus para evitar el scroll
                                    DBGridHospitalesDeExcelencia.SetFocus;
                                  end;
                            end
                              else {No hay Capacitador para ese hospital}
                                begin
                                  //Muestro la información de que no hay Capacitador
                                  lblNoTieneCapacitador.Visible:= True;

                                  //Intento mostrar las planillas, para limpiar los componentes
                                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                                  //Pongo el cursor del mouse como una flecha (default), en el DBMemo de Correos
                                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                                  //Cambio el focus para evitar el scroll
                                  DBGridHospitalesDeExcelencia.SetFocus;

                                  //Valido el estado para los Componentes de la pestaña
                                  if (PestannaActiva = 'PlanillasDeExcelencia')
                                    then
                                      ValidarComponentesPlanillasDeExcelencia;
                                end;
                      end
                        else  {no seleccioné un hospital}
                          begin
                            //Intento mostrar las planillas, para limpiar los componentes
                            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                            //Valido el estado para los Componentes de la pestaña
                            if (PestannaActiva = 'PlanillasDeExcelencia')
                              then
                                ValidarComponentesPlanillasDeExcelencia;

                            //Limpio los componentes
                            DBedtProvincia.Clear;
                            DBMemoDireccion.Clear;
                            DBedtNombreCapac.Clear;
                            DBedtPrimerApellidoCapac.Clear;
                            DBedtSegundoApellidoCapac.Clear;
                            DBedtCICapac.Clear;
                            DBMemoTelefonosCapac.Clear;

                            //Cambio el focus para evitar el scroll
                            if (   (PageControlTodo.TabIndex= 2) and (PageControlHospitalesDeExcelencia.TabIndex= 0)   )
                              then
                                DBGridHospitalesDeExcelencia.SetFocus;
                          end;
                end;

        //Muestro los datos en el DBGrid, el ComboBox, el DBMemo y los DBEdits del Módulo de Hospitales de Excelencia

        //Se Habilita el SpeedButton de 'Desconectarse' de las Planillas Provinciales
        SpeedButtonDesconectarsePlanillas.Enabled:= True;

        //Se Habilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarsePuestosDeTrabajo.Enabled:= True;

        //Se Habilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarseHospitalesDeExcelencia.Enabled:= True;

        //Se Habilita la opción de 'Desconectarse' en el MainMenu
        Desconectarse1.Enabled:= True;

        //*** Agregación ***

        //Habilito los botones de "Nueva" de las Planillas Provinciales
        HabilitarBotonesNuevosPlanillasProvinciales;

        //Habilito el botón de "Nuevo" del Módulo de Puestos de Trabajo
        btnNuevoPuestosDeTrabajo.Enabled:= True;

        //Se Habilita el SpeedButton de 'Nueva' de las Planillas Provinciales
        SpeedButtonNuevaPlanilla.Enabled:= True;

        //Se Habilita el SpeedButton de "Nuevo" del Módulo de Puestos de Trabajo
        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

        //Se Habilita la opción de 'Nueva Planilla' en el MainMenu
        MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

        //Se Habilita la opción de 'Nuevo Usuario' en el MainMenu
        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

        //Se habilitan los ComboBox de provincias, de las Planillas Provinciales
        HabilitarComboBoxProvinciasPlanillasProvinciales;

        //Aseguro que, antes de mostrar los demás botones, los DBGrid de las Planillas Provinciales no estén vacios
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial = True)
          then
            begin
              //*** Modificación ***

              //Habilito los botones de  "Modificar" de las Planillas Provinciales
              HabilitarBotonesModificarValoresPlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Modificar' de las Planillas Provinciales
              SpeedButtonModificarPlanilla.Enabled:= True;

              //Se Habilita la opción de 'Modificar Planilla' en el MainMenu
              MenuOpcionModificarPlanillaProvincial.Enabled:= True;

              //*** Eliminación ***

              //Habilito los botones de  "Eliminar" de las Planillas Provinciales
              HabilitarBotonesEliminarValoresPlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Eliminar' de las Planillas Provinciales
              SpeedButtonEliminarPlanilla.Enabled:= True;

              //Se Habilita la opción de 'Eliminar Planilla' en el MainMenu
              MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

              //** Provisional ** Habilito los botones de  "Resúmenes" de las Planillas Provinciales
              HabilitarBotonesResumenesPlanillasProvinciales;
              
              //Habilito los botones de  "Generar Reporte" de las Planillas Provinciales
              HabilitarBotonesGenerarReportePlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Generar Reporte' de las Planillas Provinciales
              SpeedButtonGenerarReportePlanilla.Enabled:= True;

              //Se Habilita la opción de 'Generar Reporte' en el MainMenu
              MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;
            end;

        //Habilito el botón de 'Modificar' del Módulo de Puestos de Trabajo
        btnModificarPuestosDeTrabajo.Enabled:= True;

        //Habilito el SpeedButton de 'Modificar' del Módulo de Puestos de Trabajo
        SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

        //Habilito la opción de 'Modificar Usuario' en el MainMenu
        MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

        //Habilito el botón de 'Eliminar' del Módulo de Puestos de Trabajo
        btnEliminarPuestosDeTrabajo.Enabled:= True;

        //Habilito el SpeedButton de 'Eliminar' del Módulo de Puestos de Trabajo
        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

        //Habilito la opción de 'Eliminar Usuario' en el MainMenu
        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;


        //Habilito el botón de 'Detalles' de la Pestaña de Trazas del Sistema
        btnDetallesDeTraza.Enabled:= True;

      end
        else
          //ShowMessage('No se pudo establecer conexión con la base de datos.');
end;

procedure TfrmPrincipal.SpeedButtonDesconectarseTodosClick(Sender: TObject);
var
  id_Planilla: Integer;
begin
  //Se acciona uno de los botones de "Cancelar" de la Planilla de las Planillas Provinciales
  btnCancelarParte1PlanillasProvinciales.Click;
  
  //Inserto la Traza
  DptoCapacitacion.GuardarTrazaDelSistema('Salió del sistema HC-CAP 2008.');

  //Actualizo todas las trazas
  DptoCapacitacion.MostrarTodasLasTrazas;

  //Desloggeo al usuario
  DptoCapacitacion.DesloggearAlUsuario;

  //Me desconecto de la BD
  DptoCapacitacion.EliminarConexionConLaBD;

  if (PestannaActiva = 'PuestosDeTrabajo')
    then
      begin
        ValidarComponentesPuestosDeTrabajo;
      end;

  if (PestannaActiva = 'TrazasDelSistema')
    then
      begin
        ValidarComponentesTrazasDelSistema;
      end;

  if (DptoCapacitacion.ExisteConexionConLaBD = False)
    then
      begin
        //---------- *** Componentes: *** ----------

        //Deshabilito las opciones de Edición y Ver del MainMenu
        MenuEdicion.Enabled:= False;
        MenuVer.Enabled:= False;
        
        //Se limpian los DEEdits y DBMemos
        LimpiarDBEditsYMemosPlanillasProvinciales;

        //Deshabilito los ComboBox de provincia de las Planillas Provinciales
        DeshabilitarComboBoxProvinciasPlanillasProvinciales;

        //Escondo los labels informativos del Módulo de los Hospitales de Excelencia
        lblCantidadDeHospitales.Visible:= False;
        lblNoTieneCapacitador.Visible:= False;
        lblCantidadDeHospitalesParaAdmin.Visible:= False;
        lblCantidadTiposDeCursos.Visible:= False;

        //Escondo el label informativo de la Cantidad de Puestos de Trabajo
        lblCantidadPuestosDeTrabajo.Visible:= False;

        //Deshabilito los ComboBox de "Provincia" y "Período" de los Hospitales de Excelencia
        ComboBoxProvinciasHospitalesDeExcelencia.Enabled:= False;
        ComboBoxSemestreHospitalesDeExcelencia.Enabled:= False;

        //Pongo el cursor del mouse como una flechita (Default), en los DBMemo de correos
        DBMemoCorreosElectronicosCapac.Cursor:= crDefault;
        DBMemoCorreosElectronicosCapacActual.Cursor:= crDefault;


        //---------- *** Desconexión: *** ----------

        //Se Deshabilita el SpeedButton de 'Desconectarse' de las Planillas Provinciales
        SpeedButtonDesconectarsePlanillas.Enabled:= False;

        //Se Deshabilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarsePuestosDeTrabajo.Enabled:= False;

        //Se Deshabilita el SpeedButton de 'Desconectarse' del Módulo de Hospitales de Excelencia
        SpeedButtonDesconectarseHospitalesDeExcelencia.Enabled:= False;

        //Se Deshabilita la opción de 'Desconectarse' en el Main Menu
        Desconectarse1.Enabled:= False;


        //---------- *** Agregación: *** ----------

        //Deshabilito los botones de "Nueva" de las Planillas Provinciales
        DeshabilitarBotonesNuevosPlanillasProvinciales;

        //Se Deshabilita el SpeedButton de 'Nueva' de las Planillas Provinciales
        SpeedButtonNuevaPlanilla.Enabled:= False;

        //Se Deshabilita la opción de 'Nueva Planilla' del MainMenu
        MenuOpcionAgregarPlanillaProvincial.Enabled:= False;

        //Deshabilito el botón de 'Nuevo' del Módulo de Puestos de Trabajo
        btnNuevoPuestosDeTrabajo.Enabled:= False;
        
        //Se Deshabilita el SpeedButton de 'Nuevo' del Módulo de Puestos de Trabajo
        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= False;

        //Se Deshabilita la opción de 'Nuevo Puesto de Trabajo' del MainMenu
        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= False;

        //Deshabilito el botón de 'Nuevo' del Módulo de Hospitales de Excelencia
        btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;

        //Deshabilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= False;

        //Deshabilito el botón de "Nuevo", para la administración de Tipos de Cursos
        btnNuevoTipoDeCurso.Enabled:= False;

        //---------- *** Modificación: *** ----------

        //Deshabilito los botones de  "Modificar" de las Planillas Provinciales
        DeshabilitarBotonesModificarValoresPlanillasProvinciales;

        //Se Deshabilita el SpeedButton de 'Modificar' de las Planillas Provinciales
        SpeedButtonModificarPlanilla.Enabled:= False;

        //Se Deshabilita la opción de 'Modificar Planilla' del MainMenu
        MenuOpcionModificarPlanillaProvincial.Enabled:= False;

        //Deshabilito el botón de 'Modificar' del Módulo de Puestos de Trabajo
        btnModificarPuestosDeTrabajo.Enabled:= False;

        //Se Deshabilita el SpeedButton de 'Modificar' del Módulo de Puestos de Trabajo
        SpeedButtonModificarPuestosDeTrabajo.Enabled:= False;

        //Se Deshabilita la opción de 'Modificar Puesto de Trabajo' del MainMenu
        MenuOpcionModificarPuestoDeTrabajo.Enabled:= False;

        //Deshabilito el botón de 'Modificar' del Módulo de Hospitales de Excelencia
        btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;

        //Deshabilito el botón de "Modificar", para la administración de Hospitales y Capacitadores
        btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= False;

        //Deshabilito el botón de "Modificar", para la administración de Tipos de Cursos
        btnModificarTipoDeCurso.Enabled:= False;


        //---------- *** Eliminación: *** ----------

        //Deshabilito los botones de  "Eliminar" de las Planillas Provinciales
        DeshabilitarBotonesEliminarValoresPlanillasProvinciales;
                
        //Se Deshabilita el SpeedButton de 'Eliminar' de las Planillas Provinciales
        SpeedButtonEliminarPlanilla.Enabled:= False;

        //Se Deshabilita la opción de 'Eliminar Planilla' del MainMenu
        MenuOpcionEliminarPlanillaProvincial.Enabled:= False;

        //Deshabilito el botón de 'Eliminar' del Módulo de Puestos de Trabajo
        btnEliminarPuestosDeTrabajo.Enabled:= False;
        
        //Se Deshabilita el SpeedButton de 'Eliminar' del Módulo de Puestos de Trabajo
        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= False;

        //Se Deshabilita la opción de 'Eliminar Puesto de Trabajo' del MainMenu
        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= False;

        //Deshabilito el botón de 'Eliminar' del Módulo de Hospitales de Excelencia
        btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;

        //Deshabilito el botón de "Eliminar", para la administración de Hospitales y Capacitadores
        btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= False;

        //Deshabilito el botón de "Eliminar", para la administración de Tipos de Cursos
        btnEliminarTipoDeCurso.Enabled:= False;


        //---------- *** Resúmenes: *** ----------

        //Deshabilito los botones de 'Resúmenes' del Módulo de Planillas Provinciales
        DeshabilitarBotonesResumenesPlanillasProvinciales;

        //Deshabilito el botón de 'Resúmenes' del Módulo de Hospitales de Excelencia
        btnResumenesRegistroHospitalesDeExcelencia.Enabled:= False;


        //---------- *** Reportes: *** ----------

        //Deshabilito los botones de  "Generar Reporte" de las Planillas Provinciales
        DeshabilitarBotonesGenerarReportePlanillasProvinciales;

        //Se Deshabilita el SpeedButton de 'Generar Reporte' de las Planillas Provinciales
        SpeedButtonGenerarReportePlanilla.Enabled:= False;

        //Se Deshabilita la opción de 'Generar Reporte' de Planillas Provinciales, del MainMenu
        MenuOpcionGenerarReportePlanillaProvincial.Enabled:= False;

        //Deshabilito el botón de 'Generar Reporte' del Módulo de Hospitales de Excelencia
        btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;


         //---------- *** Otros: *** ----------

        //Deshabilito el botón de 'Detalles' de la Pestaña de Trazas del Sistema
        btnDetallesDeTraza.Enabled:= False;

        //Deshabilito el botón de 'Contactar', para la administración de Hospitales y Capacitadores
        btnContactarHospitalDeExcelenciaYCapacitador.Enabled:= False;
      end;

  if (PestannaActiva = 'PlanillasDeExcelencia')
   then
     begin
       ValidarComponentesPlanillasDeExcelencia;
     end
       else
         begin
           if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
             then
               begin
                 ValidarComponentesHospitalesDeExcelenciaYCapacitadores;
               end
                 else
                   begin
                     if (PestannaActiva = 'TiposDeCursos')
                       then
                         begin
                           ValidarComponentesTiposDeCursos;
                         end
                   end;
         end;

  //Material agregado
  if (DptoCapacitacion.ExisteConexionConLaBD = False)
    then
      begin
        frmPrincipal.Hide;
        frmValidacionPuestoDeTrabajo.ShowModal;
        





  //Material agregado
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin

        //Verifico de nuevo la conexión, por si se canceló el Loggeo
        if (DptoCapacitacion.ExisteConexionConLaBD)
          then
            begin
              //Especifico que ya no es la primera vez que se entra
              VecesEntrando:= VecesEntrando + 1;
              
              //Muestro la forma principal
              frmPrincipal.Show;
              
              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Entró al sistema HC-CAP 2008.');

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;

              //Decido qué componentes mostrar en dependencia de los privilegios del Loggeado
              if ( DptoCapacitacion.ElTrabajadorEsAdministrador = False)
                then
                  begin //Se trata de un Operador

                    if (PestannaActiva = 'PuestosDeTrabajo')
                      then
                        begin
                          ValidarComponentesPuestosDeTrabajo;
                        end;

                    if (PestannaActiva = 'TrazasDelSistema')
                      then
                        begin
                          ValidarComponentesTrazasDelSistema;
                        end;

                    //Oculto el PageControl de Control del Sistema
                    PageControlControlDelSistema.Visible:= False;

                    //Oculto el ToolBar de la pestaña de Control del Sistema
                    ToolBarControlDelSistema.Visible:= False;

                    //Oculto la pestaña de Control del Sistema
                    TabSheetControlDelSistema.TabVisible:= False;
                  end                 
                    else
                      begin //Se trata de un Administrador

                        if (PestannaActiva = 'PuestosDeTrabajo')
                          then
                            begin
                              ValidarComponentesPuestosDeTrabajo;
                            end;

                        if (PestannaActiva = 'TrazasDelSistema')
                          then
                            begin
                              ValidarComponentesTrazasDelSistema;
                            end;
                          
                        //Muestro el PageControl de Control del Sistema
                        PageControlControlDelSistema.Visible:= True;

                        //Muestro el ToolBar de la pestaña de Control del Sistema
                        ToolBarControlDelSistema.Visible:= True;

                        //Muestro la pestaña de Control del Sistema
                        TabSheetControlDelSistema.TabVisible:= True;
                      end;
            end;//Fin de la segunda verificación de conexión, por posible cancelación de Loggeo

        if (   (PestannaActiva <> 'PuestosDeTrabajo') and (PestannaActiva <> 'TrazasDelSistema')   )
          then
            begin
              //Habilito las opciones de Edición y Ver del MainMenu
              MenuEdicion.Enabled:= True;
              MenuVer.Enabled:= True;
            end;

              //Muestro el Label de la Cantidad de Puestos de Trabajo
              lblCantidadPuestosDeTrabajo.Visible:= True;

              //Muestro los datos en el DBGrid del Módulo de Puestos de Trabajo
              DptoCapacitacion.MostrarPuestosDeTrabajo;

              //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
              lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

              //Muestro los datos en los DBGrids, DBEdits y DBMemos del Módulo de las Planillas Provinciales
              DptoCapacitacion.MostrarPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.Text);

              //Habilito los ComboBox de "Provincia" y "Período" de los Hospitales de Excelencia
              ComboBoxProvinciasHospitalesDeExcelencia.Enabled:= True;
              ComboBoxSemestreHospitalesDeExcelencia.Enabled:= True;

        //Muestro los nombres de los Hospitales de Excelencia en el DBLookupComboBox del Módulo de Hospitales de Excelencia
        if (ComboBoxProvinciasHospitalesDeExcelencia.Text= 'TODAS')
          then
            begin
              //Cambio la procedencia de los datos
              DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;

              //Selecciono todos los Hospitales de Excelencia del país
              DptoCapacitacion.MostrarHospitalesPorProvincia('TODAS');

              //Selecciono todos los Hospitales de Excelencia del país, para la administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

              //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
              lblCantidadDeHospitalesParaAdmin.Visible:= True;
              lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

              //Muestro el Capacitador con fines de administración
              DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

              //Selecciono todos los Tipos de Cursos, para la administración de Tipos de Cursos.
              DptoCapacitacion.MostrarTiposDeCursos;

              //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
              lblCantidadTiposDeCursos.Visible:= True;
              lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

              //Verifico la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
              if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                then
                  begin
                    //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                    DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                    //Oculto la información de que no existe capacitador para ese Hospital
                    lblNoTieneCapacitador.Visible:= False;

                    //Habilito todos los botones, para la administración de Hospitales y Capacitadores
                    btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                    btnContactarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                    //Pongo el cursor del mouse como una mano, en el DBMemo
                    DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;

                    //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
                    lblCantidadDeHospitales.Visible:= True;
                    lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';
                  end
                    else {No hay hospitales en todo el país}
                      begin
                        //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                        //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la información de que no existen hospitales
                        lblCantidadDeHospitales.Visible:= True;
                        lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';

                        //Habilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
                        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                      end;

              //Valido el estado para los Componentes de la pestaña de Administración de Hospitales de Excelencia y sus Capacitadores                      
              if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
                then
                  ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

              //Valido el estado para los Componentes de la pestaña de Administración de Tipos de Cursos
              if (PestannaActiva = 'TiposDeCursos')
                then
                  ValidarComponentesTiposDeCursos;

              //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
              if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                then
                  begin
                    //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                    if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                      then
                        begin
                          //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                          DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Escondo la información de que no existe capacitador, pues sí lo hay
                          lblNoTieneCapacitador.Visible:= False;

                          //Muestro las Planillas de Excelencia asociadas a ese Hospital
                          DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                          if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                            then
                              begin
                                //Recojo el id_Planilla
                                id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                //Muestro el listado de Cursos Programados
                                DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                //Muestro el listado de Cursos Realizados
                                DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                              end
                                else
                                  begin
                                    //Intento mostrar el listado de Cursos Programados, para que se borren los componentes
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                    //Intento mostrar el listado de Cursos Realizados, para que se borren los componentes
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                  end;

                          //Pongo el cursor del mouse como una mano, en el DBMemo
                          DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                          //Cambio el focus si la pestaña adecuada está activa
                          if (   (PageControlTodo.ActivePageIndex= 2) and (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)   )
                            then
                              begin
                                //Cambio el focus para evitar el scroll
                                DBGridHospitalesDeExcelencia.SetFocus;
                              end;
                              
                          //Valido el estado para los Componentes de la pestaña
                          if (PestannaActiva = 'PlanillasDeExcelencia')
                            then
                              ValidarComponentesPlanillasDeExcelencia;
                        end
                          else {No hay Capacitador}
                            begin
                              //Muestro la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= True;

                              //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                              //Cambio el focus para evitar el scroll
                              DBGridHospitalesDeExcelencia.SetFocus;
                            end;
                  end
                    else  {No se escogió ningún Hospital}
                      begin
                        //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
                        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0 );

                        //Valido el estado para los Componentes de la pestaña
                        if (PestannaActiva = 'PlanillasDeExcelencia')
                          then
                            ValidarComponentesPlanillasDeExcelencia;

                        //Limpio los componentes (los que se pueden limpiar, por si acaso)
                        DBedtProvincia.Clear;
                        DBMemoDireccion.Clear;
                        DBedtNombreCapac.Clear;
                        DBedtPrimerApellidoCapac.Clear;
                        DBedtSegundoApellidoCapac.Clear;
                        DBedtCICapac.Clear;
                        DBMemoTelefonosCapac.Clear;

                        //Cambio el focus para evitar el scroll
                        if (   (PageControlTodo.TabIndex= 2) and (PageControlHospitalesDeExcelencia.TabIndex= 0)   )
                          then
                            DBGridHospitalesDeExcelencia.SetFocus;
                      end;
            end
              else   {No se escogió "TODAS", sino una provincia en específico} 
                begin
                  //Cambio la procedencia de los datos
                  DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;

                  //Selecciono todos los Hospitales de Excelencia de la provincia
                  DptoCapacitacion.MostrarHospitalesPorProvincia(ComboBoxProvinciasHospitalesDeExcelencia.Text);

                  //Selecciono todos los Hospitales de Excelencia del país, para la administración de Hospitales y Capacitadores
                  DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

                  //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
                  lblCantidadDeHospitalesParaAdmin.Visible:= True;
                  lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

                  //Muestro el Capacitador con fines de administración
                  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

                  //Selecciono todos los Tipos de Cursos, para la administración de Tipos de Cursos.
                  DptoCapacitacion.MostrarTiposDeCursos;

                  //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
                  lblCantidadTiposDeCursos.Visible:= True;
                  lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

                  //Verifico la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
                  if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                    then
                      begin
                        //Habilito todos los botones, para la administración de Hospitales y Capacitadores
                        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                        btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;
                        btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                        //Pongo el cursor del mouse como una mano, en el DBMemo
                        DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;
                      end
                        else
                          begin
                            //Habilito el botón de "Nuevo", para la administración de Hospitales y Capacitadores
                            btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
                          end;

                  //Valido el estado para los Componentes de la pestaña de Administración de Hospitales de Excelencia y sus Capacitadores
                  if (PestannaActiva = 'HospitalesDeExcelenciaYCapacitadores')
                    then
                      ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

                  //Valido el estado para los Componentes de la pestaña de Administración de Tipos de Cursos
                  if (PestannaActiva = 'TiposDeCursos')
                    then
                      ValidarComponentesTiposDeCursos;

                  //Muestro el Capacitador con fines de administración
                  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin( StrToInt(DBTextID_Hospital.Field.Text));

                  //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                  if (DptoCapacitacion.CantidadDeHospitalesPorProvincia <> 0)
                    then
                      begin
                        //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                        //Oculto la información de que no existe capacitador para ese Hospital
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                        lblCantidadDeHospitales.Visible:= true;
                        lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesPorProvincia) + ' a escoger )'
                      end
                        else  {No hay hospitales en la provincia}
                          begin
                            //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                            DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                            //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                            lblNoTieneCapacitador.Visible:= False;

                            //Muestro la información de que no existen hospitales
                            lblCantidadDeHospitales.Visible:= true;
                            lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                          end;

                  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
                  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                    then
                      begin
                        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                         if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                          then
                            begin
                              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Escondo la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= False;

                              //Muestro las Planillas de Excelencia asociadas a ese Hospital
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                                then
                                  begin
                                    //Recojo el id_Planilla
                                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                    //Muestro el listado de Cursos Programados
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                    //Muestro el listado de Cursos Realizados
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                  end;

                              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                              //Cambio el focus si la pestaña adecuada está activa
                              if (   (PageControlTodo.ActivePageIndex= 2) and (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)   )
                                then
                                  begin
                                    //Cambio el focus para evitar el scroll
                                    DBGridHospitalesDeExcelencia.SetFocus;
                                  end;
                            end
                              else {No hay Capacitador para ese hospital}
                                begin
                                  //Muestro la información de que no hay Capacitador
                                  lblNoTieneCapacitador.Visible:= True;

                                  //Intento mostrar las planillas, para limpiar los componentes
                                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                                  //Pongo el cursor del mouse como una flecha (default), en el DBMemo de Correos
                                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                                  //Cambio el focus para evitar el scroll
                                  DBGridHospitalesDeExcelencia.SetFocus;

                                  //Valido el estado para los Componentes de la pestaña
                                  if (PestannaActiva = 'PlanillasDeExcelencia')
                                    then
                                      ValidarComponentesPlanillasDeExcelencia;
                                end;
                      end
                        else  {no seleccioné un hospital}
                          begin
                            //Intento mostrar las planillas, para limpiar los componentes
                            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                            //Valido el estado para los Componentes de la pestaña
                            if (PestannaActiva = 'PlanillasDeExcelencia')
                              then
                                ValidarComponentesPlanillasDeExcelencia;

                            //Limpio los componentes
                            DBedtProvincia.Clear;
                            DBMemoDireccion.Clear;
                            DBedtNombreCapac.Clear;
                            DBedtPrimerApellidoCapac.Clear;
                            DBedtSegundoApellidoCapac.Clear;
                            DBedtCICapac.Clear;
                            DBMemoTelefonosCapac.Clear;

                            //Cambio el focus para evitar el scroll
                            if (   (PageControlTodo.TabIndex= 2) and (PageControlHospitalesDeExcelencia.TabIndex= 0)   )
                              then
                                DBGridHospitalesDeExcelencia.SetFocus;
                          end;
                end;

        //Muestro los datos en el DBGrid, el ComboBox, el DBMemo y los DBEdits del Módulo de Hospitales de Excelencia

        //Se Habilita el SpeedButton de 'Desconectarse' de las Planillas Provinciales
        SpeedButtonDesconectarsePlanillas.Enabled:= True;

        //Se Habilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarsePuestosDeTrabajo.Enabled:= True;

        //Se Habilita el SpeedButton de 'Desconectarse' del Módulo de Puestos de Trabajo
        SpeedButtonDesconectarseHospitalesDeExcelencia.Enabled:= True;

        //Se Habilita la opción de 'Desconectarse' en el MainMenu
        Desconectarse1.Enabled:= True;

        //*** Agregación ***

        //Habilito los botones de "Nueva" de las Planillas Provinciales
        HabilitarBotonesNuevosPlanillasProvinciales;

        //Habilito el botón de "Nuevo" del Módulo de Puestos de Trabajo
        btnNuevoPuestosDeTrabajo.Enabled:= True;

        //Se Habilita el SpeedButton de 'Nueva' de las Planillas Provinciales
        SpeedButtonNuevaPlanilla.Enabled:= True;

        //Se Habilita el SpeedButton de "Nuevo" del Módulo de Puestos de Trabajo
        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

        //Se Habilita la opción de 'Nueva Planilla' en el MainMenu
        MenuOpcionAgregarPlanillaProvincial.Enabled:= True;

        //Se Habilita la opción de 'Nuevo Usuario' en el MainMenu
        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

        //Se habilitan los ComboBox de provincias, de las Planillas Provinciales
        HabilitarComboBoxProvinciasPlanillasProvinciales;

        //Aseguro que, antes de mostrar los demás botones, los DBGrid de las Planillas Provinciales no estén vacios
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial = True)
          then
            begin
              //*** Modificación ***

              //Habilito los botones de  "Modificar" de las Planillas Provinciales
              HabilitarBotonesModificarValoresPlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Modificar' de las Planillas Provinciales
              SpeedButtonModificarPlanilla.Enabled:= True;

              //Se Habilita la opción de 'Modificar Planilla' en el MainMenu
              MenuOpcionModificarPlanillaProvincial.Enabled:= True;

              //*** Eliminación ***

              //Habilito los botones de  "Eliminar" de las Planillas Provinciales
              HabilitarBotonesEliminarValoresPlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Eliminar' de las Planillas Provinciales
              SpeedButtonEliminarPlanilla.Enabled:= True;

              //Se Habilita la opción de 'Eliminar Planilla' en el MainMenu
              MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

              //** Provisional ** Habilito los botones de  "Resúmenes" de las Planillas Provinciales
              HabilitarBotonesResumenesPlanillasProvinciales;
              
              //Habilito los botones de  "Generar Reporte" de las Planillas Provinciales
              HabilitarBotonesGenerarReportePlanillasProvinciales;

              //Se Habilita el SpeedButton de 'Generar Reporte' de las Planillas Provinciales
              SpeedButtonGenerarReportePlanilla.Enabled:= True;

              //Se Habilita la opción de 'Generar Reporte' en el MainMenu
              MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;
            end;

        //Habilito el botón de 'Modificar' del Módulo de Puestos de Trabajo
        btnModificarPuestosDeTrabajo.Enabled:= True;

        //Habilito el SpeedButton de 'Modificar' del Módulo de Puestos de Trabajo
        SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

        //Habilito la opción de 'Modificar Usuario' en el MainMenu
        MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

        //Habilito el botón de 'Eliminar' del Módulo de Puestos de Trabajo
        btnEliminarPuestosDeTrabajo.Enabled:= True;

        //Habilito el SpeedButton de 'Eliminar' del Módulo de Puestos de Trabajo
        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

        //Habilito la opción de 'Eliminar Usuario' en el MainMenu
        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;


        //Habilito el botón de 'Detalles' de la Pestaña de Trazas del Sistema
        btnDetallesDeTraza.Enabled:= True;

      end
        else
          //ShowMessage('No se pudo establecer conexión con la base de datos.');  






      end;

end;

  // ** Trabajo con Labels
procedure TfrmPrincipal.OcultarLabelsAnnoPlanillasProvinciales;
begin
  //Escondo los labels de las Planillas Provinciales
  lblAnnoParte1PlanillasProvinciales.Visible:= False;
  lblAnnoParte2PlanillasProvinciales.Visible:= False;
  lblAnnoParte3PlanillasProvinciales.Visible:= False;
  lblAnnoParte4PlanillasProvinciales.Visible:= False;
  lblAnnoParte5PlanillasProvinciales.Visible:= False;
  lblAnnoParte6PlanillasProvinciales.Visible:= False;
end;

procedure TfrmPrincipal.MostrarLabelsAnnoPlanillasProvinciales;
begin
  //Muestro los labels de las Planillas Provinciales
  lblAnnoParte1PlanillasProvinciales.Visible:= True;
  lblAnnoParte2PlanillasProvinciales.Visible:= True;
  lblAnnoParte3PlanillasProvinciales.Visible:= True;
  lblAnnoParte4PlanillasProvinciales.Visible:= True;
  lblAnnoParte5PlanillasProvinciales.Visible:= True;
  lblAnnoParte6PlanillasProvinciales.Visible:= True;
end;

procedure TfrmPrincipal.DeshabilitarLabelsAnnoPlanillasProvinciales;
begin
  //Deshabilito los labels de las Planillas Provinciales
  lblAnnoParte1PlanillasProvinciales.Enabled:= False;
  lblAnnoParte2PlanillasProvinciales.Enabled:= False;
  lblAnnoParte3PlanillasProvinciales.Enabled:= False;
  lblAnnoParte4PlanillasProvinciales.Enabled:= False;
  lblAnnoParte5PlanillasProvinciales.Enabled:= False;
  lblAnnoParte6PlanillasProvinciales.Enabled:= False;
end;

procedure TfrmPrincipal.HabilitarLabelsAnnoPlanillasProvinciales;
begin
  //Habilito los labels de las Planillas Provinciales
  lblAnnoParte1PlanillasProvinciales.Enabled:= True;
  lblAnnoParte2PlanillasProvinciales.Enabled:= True;
  lblAnnoParte3PlanillasProvinciales.Enabled:= True;
  lblAnnoParte4PlanillasProvinciales.Enabled:= True;
  lblAnnoParte5PlanillasProvinciales.Enabled:= True;
  lblAnnoParte6PlanillasProvinciales.Enabled:= True;
end;


  // ** Trabajo con DateTimes

procedure TfrmPrincipal.OcultarDateTimeAnnoPlanillasProvinciales;
begin
  //Escondo los DateTimes de las Planillas Provinciales
  DateTimeAnnoParte1PlanillasProvinciales.Visible:= False;
  DateTimeAnnoParte2PlanillasProvinciales.Visible:= False;
  DateTimeAnnoParte3PlanillasProvinciales.Visible:= False;
  DateTimeAnnoParte4PlanillasProvinciales.Visible:= False;
  DateTimeAnnoParte5PlanillasProvinciales.Visible:= False;
  DateTimeAnnoParte6PlanillasProvinciales.Visible:= False;
end;

procedure TfrmPrincipal.MostrarDateTimeAnnoPlanillasProvinciales;
begin
  //Muestro los DateTimes de las Planillas Provinciales
  DateTimeAnnoParte1PlanillasProvinciales.Visible:= True;
  DateTimeAnnoParte2PlanillasProvinciales.Visible:= True;
  DateTimeAnnoParte3PlanillasProvinciales.Visible:= True;
  DateTimeAnnoParte4PlanillasProvinciales.Visible:= True;
  DateTimeAnnoParte5PlanillasProvinciales.Visible:= True;
  DateTimeAnnoParte6PlanillasProvinciales.Visible:= True;
end;



procedure TfrmPrincipal.HabilitarDateTimeAnnoPlanillasProvinciales;
begin
  //Habilito los DateTimes de las Planillas Provinciales
  DateTimeAnnoParte1PlanillasProvinciales.Enabled:= True;
  DateTimeAnnoParte2PlanillasProvinciales.Enabled:= True;
  DateTimeAnnoParte3PlanillasProvinciales.Enabled:= True;
  DateTimeAnnoParte4PlanillasProvinciales.Enabled:= True;
  DateTimeAnnoParte5PlanillasProvinciales.Enabled:= True;
  DateTimeAnnoParte6PlanillasProvinciales.Enabled:= True;
end;


procedure TfrmPrincipal.DeshabilitarDateTimeAnnoPlanillasProvinciales;
begin
  //Deshabilito los DateTimes de las Planillas Provinciales
  DateTimeAnnoParte1PlanillasProvinciales.Enabled := False;
  DateTimeAnnoParte2PlanillasProvinciales.Enabled:= False;
  DateTimeAnnoParte3PlanillasProvinciales.Enabled:= False;
  DateTimeAnnoParte4PlanillasProvinciales.Enabled:= False;
  DateTimeAnnoParte5PlanillasProvinciales.Enabled:= False;
  DateTimeAnnoParte6PlanillasProvinciales.Enabled:= False;
end;

procedure TfrmPrincipal.ActualizarDateTimeAnnoPlanillasProvinciales(aDate: TDate);
begin
  //Actualizo los DateTimes de las Planillas Provinciales
  DateTimeAnnoParte1PlanillasProvinciales.Date:= aDate;
  DateTimeAnnoParte2PlanillasProvinciales.Date:= aDate;
  DateTimeAnnoParte3PlanillasProvinciales.Date:= aDate;
  DateTimeAnnoParte4PlanillasProvinciales.Date:= aDate;
  DateTimeAnnoParte5PlanillasProvinciales.Date:= aDate;
  DateTimeAnnoParte6PlanillasProvinciales.Date:= aDate;
end;


  // ** Trabajo con ComboBox

procedure TfrmPrincipal.ActualizarComboBoxProvinciasPlanillasProvinciales(aItemIndex: Integer);
var
  //anno: Integer;
  provincia: String;
begin
  //Actualizo los ComboBox de las Planillas Provinciales
  ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex:= aItemIndex;
  ComboBoxProvinciasParte2PlanillasProvinciales.ItemIndex:= aItemIndex;
  ComboBoxProvinciasParte3PlanillasProvinciales.ItemIndex:= aItemIndex;
  ComboBoxProvinciasParte4PlanillasProvinciales.ItemIndex:= aItemIndex;
  ComboBoxProvinciasParte5PlanillasProvinciales.ItemIndex:= aItemIndex;
  ComboBoxProvinciasParte6PlanillasProvinciales.ItemIndex:= aItemIndex;


  //anno:= StrToInt(   AnsiRightStr(DateToStr(DateTimeAnnoParte1PlanillasProvinciales.Date), 4 )   );
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

  if (DptoCapacitacion.ExisteConexionConLaBD)
    then
      //Actualizo los años en los DBGrids de las Planillas Provinciales (CMG)
      DptoCapacitacion.MostrarPlanillasProvinciales(provincia);

        //Se muestran o esconden los componentes si hay al menos una planilla
        if (DptoCapacitacion.ExisteConexionConLaBD)
          then
            begin
              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial)
                then
                  begin
                    //Habilito los botones de "Modificar" de las Planillas Provinciales
                    HabilitarBotonesModificarValoresPlanillasProvinciales;

                    //Muestro los botones de "Modificar" de las Planillas Provinciales
                    MostrarBotonesModificarValoresPlanillasProvinciales;

                    //Habilito el SpeedButton de "Modificar"
                    SpeedButtonModificarPlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Modificar"
                    SpeedButtonModificarPlanilla.Visible:= True;

                    //Habilito la opción de "Modificar Planilla" del MainMenu
                    MenuOpcionModificarPlanillaProvincial.Enabled:= True;

                    //Muestro la opción de "Modificar Planilla" del MainMenu
                    MenuOpcionModificarPlanillaProvincial.Visible:= True;

                    //Habilito los botones de "Eliminar Valores" de las Planillas Provinciales
                    HabilitarBotonesEliminarValoresPlanillasProvinciales;

                    //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
                    MostrarBotonesEliminarValoresPlanillasProvinciales;

                    //Habilito el SpeedButton de "Eliminar" de las Planillas Provinciales
                    SpeedButtonEliminarPlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Eliminar" de las Planillas Provinciales
                    SpeedButtonEliminarPlanilla.Visible:= True;

                    //Habilito la opción de "Eliminar Planilla" del MainMenu
                    MenuOpcionEliminarPlanillaProvincial.Enabled:= True;

                    //Muestro la opción de "Eliminar Planilla" del MainMenu
                    MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                    //Habilito los botones de "Generar Reporte" de las Planillas Provinciales
                    HabilitarBotonesGenerarReportePlanillasProvinciales;

                    //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
                    MostrarBotonesGenerarReportePlanillasProvinciales;

                    //Habilito el SpeedButton de "Generar Reporte" de las Planillas Provinciales
                    SpeedButtonGenerarReportePlanilla.Enabled:= True;

                    //Muestro el SpeedButton de "Generar Reporte" de las Planillas Provinciales
                    SpeedButtonGenerarReportePlanilla.Visible:= True;

                    //Habilito la opción de "Generar Reporte" del MainMenu
                    MenuOpcionGenerarReportePlanillaProvincial.Enabled:= True;

                    //Muestro la opción de "Generar Reporte" en el MainMenu
                    MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;
                  end
                    else
                      begin
                        //Deshabilito los botones de "Modificar" de las Planillas Provinciales
                        DeshabilitarBotonesModificarValoresPlanillasProvinciales;

                        //Muestro los botones de "Modificar" de las Planillas Provinciales
                        MostrarBotonesModificarValoresPlanillasProvinciales;

                        //Deshabilito el SpeedButton de "Modificar"
                        SpeedButtonModificarPlanilla.Enabled:= False;

                        //Muestro el SpeedButton de "Modificar"
                        SpeedButtonModificarPlanilla.Visible:= True;

                        //Deshabilito la opción de "Modificar Planilla" del MainMenu
                        MenuOpcionModificarPlanillaProvincial.Enabled:= False;

                        //Muestro la opción de "Modificar Planilla" del MainMenu
                        MenuOpcionModificarPlanillaProvincial.Visible:= True;

                        //Deshabilito los botones de "Eliminar Valores" de las Planillas Provinciales
                        DeshabilitarBotonesEliminarValoresPlanillasProvinciales;

                        //Muestro los botones de "Eliminar Valores" de las Planillas Provinciales
                        MostrarBotonesEliminarValoresPlanillasProvinciales;

                        //Deshabilito el SpeedButton de "Eliminar" de las Planillas Provinciales
                        SpeedButtonEliminarPlanilla.Enabled:= False;

                        //Muestro el SpeedButton de "Eliminar" de las Planillas Provinciales
                        SpeedButtonEliminarPlanilla.Visible:= True;

                        //Deshabilito la opción de "Eliminar Planilla" del MainMenu
                        MenuOpcionEliminarPlanillaProvincial.Enabled:= False;

                        //Muestro la opción de "Eliminar Planilla" del MainMenu
                        MenuOpcionEliminarPlanillaProvincial.Visible:= True;

                        //Deshabilito los botones de "Generar Reporte" de las Planillas Provinciales
                        DeshabilitarBotonesGenerarReportePlanillasProvinciales;

                        //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
                        MostrarBotonesGenerarReportePlanillasProvinciales;

                        //Deshabilito el SpeedButton de "Generar Reporte" de las Planillas Provinciales
                        SpeedButtonGenerarReportePlanilla.Enabled:= False;

                        //Muestro el SpeedButton de "Generar Reporte" de las Planillas Provinciales
                        SpeedButtonGenerarReportePlanilla.Visible:= True;

                        //Deshabilito la opción de "Generar Reporte" del MainMenu
                        MenuOpcionGenerarReportePlanillaProvincial.Enabled:= False;

                        //Muestro la opción de "Generar Reporte" en el MainMenu
                        MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;
                      end;
            end;
end;


procedure TfrmPrincipal.HabilitarComboBoxProvinciasPlanillasProvinciales;
begin
  //
  ComboBoxProvinciasParte1PlanillasProvinciales.Enabled:= True;
  ComboBoxProvinciasParte2PlanillasProvinciales.Enabled:= True;
  ComboBoxProvinciasParte3PlanillasProvinciales.Enabled:= True;
  ComboBoxProvinciasParte4PlanillasProvinciales.Enabled:= True;
  ComboBoxProvinciasParte5PlanillasProvinciales.Enabled:= True;
  ComboBoxProvinciasParte6PlanillasProvinciales.Enabled:= True;
end;

procedure TfrmPrincipal.DeshabilitarComboBoxProvinciasPlanillasProvinciales;
begin
  //
  ComboBoxProvinciasParte1PlanillasProvinciales.Enabled:= False;
  ComboBoxProvinciasParte2PlanillasProvinciales.Enabled:= False;
  ComboBoxProvinciasParte3PlanillasProvinciales.Enabled:= False;
  ComboBoxProvinciasParte4PlanillasProvinciales.Enabled:= False;
  ComboBoxProvinciasParte5PlanillasProvinciales.Enabled:= False;
  ComboBoxProvinciasParte6PlanillasProvinciales.Enabled:= False;
end;

procedure TfrmPrincipal.TabSheetPlanillasShow(Sender: TObject);
begin
  //Especifico en qué módulo estoy trabajando ahora (está activo)
  ModuloActivo:= 'PlanillasProvinciales';

  //Pongo el focus en los DBGrids de las Planillas Provinciales
  PonerFocusEnDBGridsPlanillasProvinciales;
end;

procedure TfrmPrincipal.TabSheetHospitalesDeExcelenciaShow(Sender: TObject);
begin
  //Especifico en qué módulo estoy trabajando ahora (está activo)
  ModuloActivo:= 'HospitalesDeExcelencia';
end;

procedure TfrmPrincipal.TabSheetControlDelSistemaShow(Sender: TObject);
begin
  //Especifico en qué módulo estoy trabajando ahora (está activo)
  ModuloActivo:= 'PuestosDeTrabajo';

 //Pongo el DBGrid de Puestos de Trabajo con scroll vertical nadamás
 SetScrollRange(DBGridPuestosDeTrabajo.Handle, SB_VERT, 0, 0, False);
end;

procedure TfrmPrincipal.SpeedButtonNuevaPlanillaClick(Sender: TObject);
begin
  if (ModuloActivo= 'PlanillasProvinciales')
    then btnNuevosValoresParte1PlanillasProvinciales.Click;
end;

procedure TfrmPrincipal.SpeedButtonModificarPlanillaClick(Sender: TObject);
begin
  if (ModuloActivo= 'PlanillasProvinciales')
    then btnModificarValoresParte1PlanillasProvinciales.Click;
end;

procedure TfrmPrincipal.SpeedButtonEliminarPlanillaClick(Sender: TObject);
begin
  if (ModuloActivo= 'PlanillasProvinciales')
    then btnEliminarValoresParte1PlanillasProvinciales.Click;
end;

procedure TfrmPrincipal.SpeedButtonGenerarReportePlanillaClick(Sender: TObject);
begin
  if (ModuloActivo= 'PlanillasProvinciales')
    then btnGenerarReporteParte1PlanillasProvinciales.Click;
end;

procedure TfrmPrincipal.SpeedButtonTemasDeAyudaPlanillasClick(Sender: TObject);
begin
  //Aquí hago una llamada a la ayuda previamente echa.
  //Application.HelpContext(1);
  ShellExecute(Handle, 'open', Pchar(ExtractFilePath(Application.ExeName) + 'HelpFiles\HC-CAP 2008.chm' ), nil,nil, SW_SHOWNORMAL); 
end;

procedure TfrmPrincipal.Ayuda1Click(Sender: TObject);
begin
  //Muestro la ayuda referente al módulo en cuestión que se encuentre activo en ese momento
  if (ModuloActivo= 'PlanillasProvinciales')
    then SpeedButtonTemasDeAyudaPlanillas.Click;

  if (ModuloActivo= 'PuestosDeTrabajo')
    then SpeedButtonTemasDeAyudaPuestosDeTrabajo.Click;

  if (ModuloActivo= 'HospitalesDeExcelencia')
    then SpeedButtonTemasDeAyudaHospitalesDeExcelencia.Click;
end;

procedure TfrmPrincipal.MenuOpcionAgregarPlanillaProvincialClick(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  SpeedButtonNuevaPlanilla.Click;
end;

procedure TfrmPrincipal.MenuOpcionModificarPlanillaProvincialClick(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  SpeedButtonModificarPlanilla.Click;
end;

procedure TfrmPrincipal.MenuOpcionEliminarPlanillaProvincialClick(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  SpeedButtonEliminarPlanilla.Click;
end;

procedure TfrmPrincipal.MenuOpcionGenerarReportePlanillaProvincialClick(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  SpeedButtonGenerarReportePlanilla.Click;
end;

procedure TfrmPrincipal.DateTimeAnnoParte1PlanillasProvincialesChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Llamo a la funcion que actualiza los DateTimes
  ActualizarDateTimeAnnoPlanillasProvinciales(DateTimeAnnoParte1PlanillasProvinciales.Date);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte1PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;
        
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + ComboBoxProvinciasParte1PlanillasProvinciales.Text + ' , año ' + anno + '.';
end;

procedure TfrmPrincipal.DateTimeAnnoParte2PlanillasProvincialesChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Llamo a la funcion que actualiza los DateTimes
  ActualizarDateTimeAnnoPlanillasProvinciales(DateTimeAnnoParte2PlanillasProvinciales.Date);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte2PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;  

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + ComboBoxProvinciasParte2PlanillasProvinciales.Text + ' , año ' + anno + '.';
end;

procedure TfrmPrincipal.DateTimeAnnoParte3PlanillasProvincialesChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Llamo a la funcion que actualiza los DateTimes
  ActualizarDateTimeAnnoPlanillasProvinciales(DateTimeAnnoParte3PlanillasProvinciales.Date);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte3PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;  

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + ComboBoxProvinciasParte3PlanillasProvinciales.Text + ' , año ' + anno + '.';
end;

procedure TfrmPrincipal.DateTimeAnnoParte4PlanillasProvincialesChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Llamo a la funcion que actualiza los DateTimes
  ActualizarDateTimeAnnoPlanillasProvinciales(DateTimeAnnoParte4PlanillasProvinciales.Date);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte4PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;  

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + ComboBoxProvinciasParte4PlanillasProvinciales.Text + ' , año ' + anno + '.';
end;

procedure TfrmPrincipal.DateTimeAnnoParte5PlanillasProvincialesChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Llamo a la funcion que actualiza los DateTimes
  ActualizarDateTimeAnnoPlanillasProvinciales(DateTimeAnnoParte5PlanillasProvinciales.Date);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte5PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;  

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + ComboBoxProvinciasParte5PlanillasProvinciales.Text + ' , año ' + anno + '.';
end;



procedure TfrmPrincipal.DateTimeAnnoParte6PlanillasProvincialesChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Llamo a la funcion que actualiza los DateTimes
  ActualizarDateTimeAnnoPlanillasProvinciales(DateTimeAnnoParte6PlanillasProvinciales.Date);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoParte6PlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoParte1PlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;
  

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Creando una nueva Planilla, provincia ' + ComboBoxProvinciasParte6PlanillasProvinciales.Text + ' , año ' + anno + '.';
end;

procedure TfrmPrincipal.ComboBoxProvinciasParte1PlanillasProvincialesChange(
  Sender: TObject);
begin
  //Llamo a la funcion que actualiza los ComboBox
  ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte1PlanillasProvinciales.ItemIndex);

  //Pongo el focus en el DBGrid cercano para evitar el scroll
  DBGridAnnoParte1PlanillasProvinciales.SetFocus;
end;

procedure TfrmPrincipal.ComboBoxProvinciasParte2PlanillasProvincialesChange(
  Sender: TObject);
begin
    //Llamo a la funcion que actualiza los ComboBox
    ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte2PlanillasProvinciales.ItemIndex);

    //Pongo el focus en el DBGrid cercano para evitar el scroll
    DBGridAnnoParte2PlanillasProvinciales.SetFocus;
end;

procedure TfrmPrincipal.ComboBoxProvinciasParte3PlanillasProvincialesChange(
  Sender: TObject);
begin
    //Llamo a la funcion que actualiza los ComboBox
    ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte3PlanillasProvinciales.ItemIndex);

    //Pongo el focus en el DBGrid cercano para evitar el scroll
    DBGridAnnoParte3PlanillasProvinciales.SetFocus;
end;

procedure TfrmPrincipal.ComboBoxProvinciasParte4PlanillasProvincialesChange(
  Sender: TObject);
begin
    //Llamo a la funcion que actualiza los ComboBox
    ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte4PlanillasProvinciales.ItemIndex);

    //Pongo el focus en el DBGrid cercano para evitar el scroll
    DBGridAnnoParte4PlanillasProvinciales.SetFocus;
end;

procedure TfrmPrincipal.ComboBoxProvinciasParte5PlanillasProvincialesChange(
  Sender: TObject);
begin
    //Llamo a la funcion que actualiza los ComboBox
    ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte5PlanillasProvinciales.ItemIndex);

    //Pongo el focus en el DBGrid cercano para evitar el scroll
    DBGridAnnoParte5PlanillasProvinciales.SetFocus;
end;



procedure TfrmPrincipal.ComboBoxProvinciasParte6PlanillasProvincialesChange(
  Sender: TObject);
begin
    //Llamo a la funcion que actualiza los ComboBox
    ActualizarComboBoxProvinciasPlanillasProvinciales(ComboBoxProvinciasParte6PlanillasProvinciales.ItemIndex);

    //Pongo el focus en el DBGrid cercano para evitar el scroll
    DBGridAnnoParte6PlanillasProvinciales.SetFocus;
end;

procedure TfrmPrincipal.btnNuevoPuestosDeTrabajoClick(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Puestos de Trabajo. Creando un nuevo Puesto.';

  //Muestro la forma de entrada de Puestos de Trabajo
  frmNuevoPuestoDeTrabajo.Position:= poScreenCenter;
  frmNuevoPuestoDeTrabajo.ShowModal;

  //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
  lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP';
end;

procedure TfrmPrincipal.DBGridPuestosDeTrabajoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
  clMoreStrongRed= TColor($004A4AFF);
begin

  if Column.Field.Dataset.FieldbyName('Privilegio').AsString = 'Operador'
    then
      if (gdSelected in State)
        then
          begin
            DBGridPuestosDeTrabajo.Canvas.Brush.Color := clGreen
          end
            else
              begin
                DBGridPuestosDeTrabajo.Canvas.Brush.Color := clPaleGreen;
              end;


  if (   (Column.Field.Dataset.FieldbyName('Privilegio').AsString = 'Administrador') and (Column.Field.Dataset.FieldbyName('id_Usuario').AsString <> 'hccap')   )
    then
      if (gdSelected in State)
        then
          begin
            DBGridPuestosDeTrabajo.Canvas.Brush.Color := clStrongRed
          end
            else
              begin
                DBGridPuestosDeTrabajo.Canvas.Brush.Color := clPaleRed;
              end;

  if (   (Column.Field.Dataset.FieldbyName('id_Usuario').AsString = 'hccap') and (Column.Field.Dataset.FieldbyName('Privilegio').AsString = 'Administrador')   )
    then
      if (gdSelected in State)
        then
          begin
            DBGridPuestosDeTrabajo.Canvas.Brush.Color := clRed;
            DBGridPuestosDeTrabajo.Canvas.Font.Style:=[fsBold];
          end
            else
              begin
                DBGridPuestosDeTrabajo.Canvas.Brush.Color := clMoreStrongRed;
                DBGridPuestosDeTrabajo.Canvas.Font.Style:=[fsBold];
              end;              


    //Esta línea es nueva
    
    DBGridPuestosDeTrabajo.DefaultDrawColumnCell(rect,DataCol,Column,State);

    {Column.FieldName:= '';
    DBGridPuestosDeTrabajo.DefaultDrawColumnCell(rect,DataCol,Column,State);

    DBGridPuestosDeTrabajo.DefaultDrawColumnCell(rect,DataCol,Column,State);

    DBGridPuestosDeTrabajo.DefaultDrawColumnCell(rect,DataCol,Column,State);

    DBGridPuestosDeTrabajo.DefaultDrawColumnCell(rect,DataCol,Column,State);

    DBGridPuestosDeTrabajo.DefaultDrawColumnCell(rect,DataCol,Column,State);}

    //Para eliminar el scroll vertical
 //SetScrollRange(DBGridPuestosDeTrabajo.Handle, SB_VERT, 0, 0, False);
// inherited Paint;
end;


procedure TfrmPrincipal.DBGridAnnoPlanillasProvincialesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin

  if Column.Field.Dataset.FieldbyName('año').AsInteger > 0
    then
      if (gdFocused in State)
        then
          begin
            DBGridAnnoParte1PlanillasProvinciales.Canvas.Brush.Color := clPaleBlue;
            DBGridAnnoParte2PlanillasProvinciales.Canvas.Brush.Color := clPaleBlue;
            DBGridAnnoParte3PlanillasProvinciales.Canvas.Brush.Color := clPaleBlue;
            DBGridAnnoParte4PlanillasProvinciales.Canvas.Brush.Color := clPaleBlue;
            DBGridAnnoParte5PlanillasProvinciales.Canvas.Brush.Color := clPaleBlue;
            DBGridAnnoParte6PlanillasProvinciales.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridAnnoParte1PlanillasProvinciales.Canvas.Brush.Color := clWhite;
                DBGridAnnoParte2PlanillasProvinciales.Canvas.Brush.Color := clWhite;
                DBGridAnnoParte3PlanillasProvinciales.Canvas.Brush.Color := clWhite;
                DBGridAnnoParte4PlanillasProvinciales.Canvas.Brush.Color := clWhite;
                DBGridAnnoParte5PlanillasProvinciales.Canvas.Brush.Color := clWhite;
                DBGridAnnoParte6PlanillasProvinciales.Canvas.Brush.Color := clWhite;
              end;
    //Esta línea es nueva
    DBGridAnnoParte1PlanillasProvinciales.DefaultDrawColumnCell(rect,DataCol,Column,State);
    DBGridAnnoParte2PlanillasProvinciales.DefaultDrawColumnCell(rect,DataCol,Column,State);
    DBGridAnnoParte3PlanillasProvinciales.DefaultDrawColumnCell(rect,DataCol,Column,State);
    DBGridAnnoParte4PlanillasProvinciales.DefaultDrawColumnCell(rect,DataCol,Column,State);
    DBGridAnnoParte5PlanillasProvinciales.DefaultDrawColumnCell(rect,DataCol,Column,State);
    DBGridAnnoParte6PlanillasProvinciales.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;


procedure TfrmPrincipal.btnEliminarPuestosDeTrabajoClick(Sender: TObject);
var
  usuario: AnsiString;
  NombreCompleto: String;
  Privilegios: String;
begin
  //Lleno las variables con el usuario seleccionado en el DBGrid del Módulo de Puestos de Trabajo del HC-CAP
  usuario:= DBGridPuestosDeTrabajo.SelectedField.Value;

  if (usuario <> 'hccap')
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HC-CAP 2008, Puestos de Trabajo. Eliminando el Puesto, con el usuario: ' + usuario + '.';

        //Deshabilito el botón de 'Nuevo' de los Puestos de Trabajo
        btnNuevoPuestosDeTrabajo.Enabled:= False;

        //Deshabilito el SpeedButton de "Nuevo" de los Puestos de Trabajo
        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= False;

        //Deshabilito la opción de "Nuevo Puesto de Trabajo" en el MainMenu
        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= False;

        //Deshabilito el botón de "Modificar" de los Puestos de Trabajo
        btnModificarPuestosDeTrabajo.Enabled:= False;

        //Deshabilito el SpeedButton de "Modificar" de los Puestos de Trabajo
        SpeedButtonModificarPuestosDeTrabajo.Enabled:= False;

        //Deshabilito la opción de "Modificar Puesto de Trabajo" del MainMenu
        MenuOpcionModificarPuestoDeTrabajo.Enabled:= False;

        //Deshabilito el botón de "Eliminar" de los Puestos de Trabajo
        btnEliminarPuestosDeTrabajo.Enabled:= False;

        //Deshabilito el SpeedButton de "Eliminar" de los Puestos de Trabajo
        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= False;

        //Deshabilito la opción de "Eliminar Puesto de Trabajo" del MainMenu
        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= False;

        //Verifico que el Puesto de Trabajo que se borrará no sea el mismo Loggeado
        if (DptoCapacitacion.ElUsuarioEstaLoggeado(usuario) = False)
          then
            begin //No es el usuario loggeado
              //Muestro mensaje al usuario una confirmación de borrado
              if MessageDlg('¿Desea eliminar el Puesto de Trabajo seleccionado, con el usuario: ' + usuario + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                then
                  begin
                    //Relleno los otros campos que integran la traza
                    NombreCompleto:= DBTextNombre.Field.Text + ' ' + DBTextPrimerApellido.Field.Text + ' ' + DBTextSegundoApellido.Field.Text;
                    Privilegios:= DBTextPrivilegios.Field.Text;
              
                    //Realizo el borrado del Puesto de Trabajo en la BD
                    DptoCapacitacion.EliminarPuestoDeTrabajo(usuario);

                    //Actualizar el DBGrid de los Puestos de Trabajo
                    DptoCapacitacion.MostrarPuestosDeTrabajo;

                    //Inserto la Traza
                    DptoCapacitacion.GuardarTrazaDelSistema('Eliminó el Puesto de Trabajo ' + '"' + usuario + '"' + ' con privilegios de ' + Privilegios + ' y perteneciente a ' + NombreCompleto + '.');

                    //Actualizo todas las trazas
                    DptoCapacitacion.MostrarTodasLasTrazas;

                    //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
                    lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

                    //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                    frmPrincipal.Caption:= 'HC-CAP 2008';

                    //Muestro mensaje de información del borrado ya realizado
                    MessageDlg('El Puesto de Trabajo, con el usuario ' + usuario + ', ha sido eliminado.', mtInformation, [mbOk], 0);  //, mbOk

                    //Habilito el botón de 'Nuevo' de los Puestos de Trabajo
                    btnNuevoPuestosDeTrabajo.Enabled:= True;

                    //Habilito el SpeedButton de "Nuevo" de los Puestos de Trabajo
                    SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                    //Habilito la opción de "Nuevo Puesto de Trabajo" en el MainMenu
                    MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                    //Habilito el botón de "Modificar" de los Puestos de Trabajo
                    btnModificarPuestosDeTrabajo.Enabled:= True;

                    //Habilito el SpeedButton de "Modificar" de los Puestos de Trabajo
                    SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                    //Habilito la opción de "Modificar Puesto de Trabajo" del MainMenu
                    MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                    //Habilito el botón de "Eliminar" de los Puestos de Trabajo
                    btnEliminarPuestosDeTrabajo.Enabled:= True;

                    //Habilito el SpeedButton de "Eliminar" de los Puestos de Trabajo
                    SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                    //Habilito la opción de "Eliminar Puesto de Trabajo" del MainMenu
                    MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;
                  end
                    else
                      begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
                        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                        frmPrincipal.Caption:= 'HC-CAP 2008';

                        //Habilito el botón de 'Nuevo' de los Puestos de Trabajo
                        btnNuevoPuestosDeTrabajo.Enabled:= True;

                        //Habilito el SpeedButton de "Nuevo" de los Puestos de Trabajo
                        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                        //Habilito la opción de "Nuevo Puesto de Trabajo" en el MainMenu
                        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                        //Habilito el botón de "Modificar" de los Puestos de Trabajo
                        btnModificarPuestosDeTrabajo.Enabled:= True;

                        //Habilito el SpeedButton de "Modificar" de los Puestos de Trabajo
                        SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                        //Habilito la opción de "Modificar Puesto de Trabajo" del MainMenu
                        MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                        //Habilito el botón de "Eliminar" de los Puestos de Trabajo
                        btnEliminarPuestosDeTrabajo.Enabled:= True;

                        //Habilito el SpeedButton de "Eliminar" de los Puestos de Trabajo
                        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                        //Habilito la opción de "Eliminar Puesto de Trabajo" del MainMenu
                        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;
                      end;
            end
              else
                begin //Es el mismo usuario que está loggeado
                  //Muestro mensaje al usuario una confirmación de borrado
                  if MessageDlg('¿Desea realmente eliminar el Puesto de Trabajo seleccionado, con el usuario: ' + usuario + '?' + ' Usted está loggeado usando ese Puesto de Trabajo, por lo que automáticamente saldrá del sistema.', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                    then
                      begin
                        //Relleno los otros campos que integran la traza
                        NombreCompleto:= DBTextNombre.Field.Text + ' ' + DBTextPrimerApellido.Field.Text + ' ' + DBTextSegundoApellido.Field.Text;
                        Privilegios:= DBTextPrivilegios.Field.Text;

                        //Realizo el borrado del Puesto de Trabajo en la BD
                        DptoCapacitacion.EliminarPuestoDeTrabajo(usuario);

                        //Actualizar el DBGrid de los Puestos de Trabajo
                        DptoCapacitacion.MostrarPuestosDeTrabajo;

                        //Inserto la Traza
                        DptoCapacitacion.GuardarTrazaDelSistema('Eliminó el Puesto de Trabajo ' + '"' + usuario + '"' + ' con privilegios de ' + Privilegios + ' y perteneciente a ' + NombreCompleto + '. Como estaba loggeado usando ese mismo Puesto de Trabajo, fue automáticamente expulsado del sistema.');

                        //Actualizo todas las trazas
                        DptoCapacitacion.MostrarTodasLasTrazas;

                        //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
                        lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

                        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                        frmPrincipal.Caption:= 'HC-CAP 2008';

                        //Muestro mensaje de información del borrado ya realizado
                        MessageDlg('El Puesto de Trabajo, con el usuario ' + usuario + ', ha sido eliminado.', mtInformation, [mbOk], 0);  //, mbOk

                        //Habilito el botón de 'Nuevo' de los Puestos de Trabajo
                        btnNuevoPuestosDeTrabajo.Enabled:= True;

                        //Habilito el SpeedButton de "Nuevo" de los Puestos de Trabajo
                        SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                        //Habilito la opción de "Nuevo Puesto de Trabajo" en el MainMenu
                        MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                        //Habilito el botón de "Modificar" de los Puestos de Trabajo
                        btnModificarPuestosDeTrabajo.Enabled:= True;

                        //Habilito el SpeedButton de "Modificar" de los Puestos de Trabajo
                        SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                        //Habilito la opción de "Modificar Puesto de Trabajo" del MainMenu
                        MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                        //Habilito el botón de "Eliminar" de los Puestos de Trabajo
                        btnEliminarPuestosDeTrabajo.Enabled:= True;

                        //Habilito el SpeedButton de "Eliminar" de los Puestos de Trabajo
                        SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                        //Habilito la opción de "Eliminar Puesto de Trabajo" del MainMenu
                        MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;

                        //Salgo del sistema
                        SpeedButtonDesconectarsePuestosDeTrabajo.Click;
                      end
                        else
                          begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
                            //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                            frmPrincipal.Caption:= 'HC-CAP 2008';

                            //Habilito el botón de 'Nuevo' de los Puestos de Trabajo
                            btnNuevoPuestosDeTrabajo.Enabled:= True;

                            //Habilito el SpeedButton de "Nuevo" de los Puestos de Trabajo
                            SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                            //Habilito la opción de "Nuevo Puesto de Trabajo" en el MainMenu
                            MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                            //Habilito el botón de "Modificar" de los Puestos de Trabajo
                            btnModificarPuestosDeTrabajo.Enabled:= True;

                            //Habilito el SpeedButton de "Modificar" de los Puestos de Trabajo
                            SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                            //Habilito la opción de "Modificar Puesto de Trabajo" del MainMenu
                            MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                            //Habilito el botón de "Eliminar" de los Puestos de Trabajo
                            btnEliminarPuestosDeTrabajo.Enabled:= True;

                            //Habilito el SpeedButton de "Eliminar" de los Puestos de Trabajo
                            SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                            //Habilito la opción de "Eliminar Puesto de Trabajo" del MainMenu
                            MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;
                          end;
                end;
      end
        else
          Application.MessageBox('Usted no puede eliminar el Puesto de Trabajo "hccap", pues es' + #13 + 'básico para el funcionamiento y administración del sistema.','Información',mb_Ok + MB_ICONINFORMATION);
end;

procedure TfrmPrincipal.btnModificarPuestosDeTrabajoClick(Sender: TObject);
var
  usuario: AnsiString;
begin
  //Tomo el usuario del que está seleccionado en el DBGrid
  usuario := DBGridPuestosDeTrabajo.SelectedField.Value;
  
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Puestos de Trabajo. Modificando el Puesto, con el usuario: ' + usuario + '.';

  //Envio el id_Usuario desde el DBGrid de Puestos de Trabajo hacia la forma de modificación de Puestos de Trabajo
  frmModificarPuestoDeTrabajo.TempViejoUsuario:= usuario;

  //Muestro la forma de Modificación de Puestos de Trabajo
  frmModificarPuestoDeTrabajo.Position:= poScreenCenter;
  frmModificarPuestoDeTrabajo.ShowModal;

  //Se verifica nuevamente los privilegios del loggeado, por si acaso el mismo se los cambió
  if (DptoCapacitacion.ElLoggeadoEsAdministrador = False)
    then
      begin
        if (PestannaActiva = 'PuestosDeTrabajo')
          then
            begin
              ValidarComponentesPuestosDeTrabajo;
            end;

        if (PestannaActiva = 'TrazasDelSistema')
          then
            begin
              ValidarComponentesTrazasDelSistema;
            end;

        //Oculto el PageControl de Control del Sistema
        PageControlControlDelSistema.Visible:= False;

        //Oculto el ToolBar de la pestaña de Control del Sistema
        ToolBarControlDelSistema.Visible:= False;

        //Oculto la pestaña de Control del Sistema
        TabSheetControlDelSistema.TabVisible:= False;
      end;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;

procedure TfrmPrincipal.SpeedButtonNuevoPuestosDeTrabajoClick(
  Sender: TObject);
begin
  if (ModuloActivo= 'PuestosDeTrabajo')
    then btnNuevoPuestosDetrabajo.Click;
end;

procedure TfrmPrincipal.SpeedButtonModificarPuestosDeTrabajoClick(
  Sender: TObject);
begin
  if (ModuloActivo= 'PuestosDeTrabajo')
    then btnModificarPuestosDetrabajo.Click;
end;

procedure TfrmPrincipal.SpeedButtonEliminarPuestosDeTrabajoClick(
  Sender: TObject);
begin
  if (ModuloActivo= 'PuestosDeTrabajo')
    then btnEliminarPuestosDeTrabajo.Click;
end;

procedure TfrmPrincipal.PageControlTodoChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  //Aqui se decide si sepermiten cambios depágina o no.
  AllowChange:= Ocioso;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  wVersionRequested : WORD;
  wsaData : TWSAData;
begin
  //Llamo al procedimiento que impide que se levante el salvapantallas, cuando trate de mostrarse.
  Application.OnMessage:=appmessage;
  VecesEntrando:= 1;

  //Determino la resolución inicial de la pantalla
  DeterminarResolucionInicial;

  //Creo una instancia de la clase pantalla
  Pantalla:= TPantalla.Create;

  //Guardo los valores inicales de la pantalla
  Pantalla.AnchoOriginalPantalla:= AnchoOriginalPantalla;
  Pantalla.AltoOriginalPantalla:= AltoOriginalPantalla;

  //Para poder obtener el IP y nombre de la PC
  {Start up WinSock}
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);
end;



procedure TfrmPrincipal.ComboBoxProvinciasPlanillasProvincialesDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var 
   bTemp:TBitmap;
begin 
  bTemp:=TBitmap.Create;
  if Index<ImageListProvincias.Count then
  begin 
    ImageListProvincias.GetBitmap(Index, bTemp);
  end; 
 
  with (Control as TComboBox) do 
  begin 
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left+ImageListProvincias.Height + 2, Rect.Top, Items[Index]);
    Canvas.Draw(Rect.Left, Rect.Top, bTemp);
  end;
  bTemp.Free;
end;


procedure TfrmPrincipal.btnResumenesPlanillasProvincialesClick(
  Sender: TObject);
var
  anno: string;
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Mostrando Resumen.';
    
  //Verifico que haya al menos una planilla seleccionada
  if (DptoCapacitacion.ExisteAlMenosUnaPlanillaProvincial = True)
    then
      begin
        //Tomo el año que está seleccionado en el DBGrid
        anno:= IntToStr(DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value);

        //Envio el año desde el DateTimePicker de Planillas Provinciales hacia la forma de Resúmenes
        frmResumenPlanillasProvinciales.TempAnno:= anno;
      end
        else
          begin
            //Envio el año actual hacia la forma de Resúmenes
            frmResumenPlanillasProvinciales.TempAnno:= '2007';
          end;

  //Muestro la forma de los resúmenes
  frmResumenPlanillasProvinciales.Position:= poScreenCenter;
  frmResumenPlanillasProvinciales.ShowModal;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;



    //---------- *** Programación de los Hospitales De Excelencia *** ----------


{---------------------------------------------------------------------}
  // ** Trabajo con ComboBox de los Hospitales de Excelencia





procedure TfrmPrincipal.btnNuevoRegistroHospitalesDeExcelenciaClick(Sender: TObject);
var
  ProvinciaIndex: integer;
  id_hospital: Integer;
  Nombre_Hospital: AnsiString;
begin
  //Tomo la provincia desde el ComboBox de Hospitales de Excelencia
  ProvinciaIndex:= ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex;

  //Tomo el id_hospital desde el DBLookUpComboBox
  id_hospital:= DBLookupComboBoxHospitalesDeExcelencia.KeyValue;

  //Tomo el Nombre_Hospital desde el DBLookUpComboBox
  Nombre_Hospital:= DBLookupComboBoxHospitalesDeExcelencia.Text;

  //Envio la provincia hacia la forma de nueva Planilla de Excelencia
  frmNuevaPlanillaDeExcelencia.FProvinciaIndex:= ProvinciaIndex;

  //Envio el id_hospital hacia la forma de nueva Planilla de Excelencia
  frmNuevaPlanillaDeExcelencia.FID_Hospital:= id_hospital;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Agregando una Planilla de Excelencia, centro ' + Nombre_Hospital + '.';

  //Muestro la forma de Nueva Planilla de Excelencia
  frmNuevaPlanillaDeExcelencia.Position:= poDesktopCenter;
  frmNuevaPlanillaDeExcelencia.ShowModal;

  //Valido el estado de los componentes de la pestaña
  ValidarComponentesPlanillasDeExcelencia;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;



procedure TfrmPrincipal.btnModificarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
var
  id_Planilla: Integer;
  id_Hospital: Integer;
  Nombre_Hospital: AnsiString;
begin
  //Recojo el valor de id_Planilla
  id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

  //Recojo el valor de id_Hospital
  id_Hospital:= DBLookupComboBoxHospitalesDeExcelencia.KeyValue;

  //Tomo el Nombre_Hospital desde el DBLookUpComboBox
  Nombre_Hospital:= DBLookupComboBoxHospitalesDeExcelencia.Text;  

  //Mando a copiar los cursos hacia las tablas temporales
  DptoCapacitacion.CopiarCursosProgramadosPorID_Planilla(id_Planilla);
  DptoCapacitacion.CopiarCursosRealizadosPorID_Planilla(id_Planilla);

  //Le envio el id_Planilla a la forma de modificación
  frmModificarPlanillaDeExcelencia.FID_Planilla:= id_Planilla;

  //Le envio el id_hospital a la forma de modificación
  frmModificarPlanillaDeExcelencia.FID_Hospital:= id_Hospital;
  
  frmModificarPlanillaDeExcelencia.FAnno:= DBGridHospitalesDeExcelencia.SelectedField.Value;
  frmModificarPlanillaDeExcelencia.FPeriodo:= ComboBoxSemestreHospitalesDeExcelencia.ItemIndex;

  //Mando a que se visualicen los datos del Hospital de Excelencia
  DptoCapacitacion.MostrarHospitalDeExcelencia(id_Hospital);

  //Mando a que se muestren los Cursos temporales en la Forma de Modificación
  DptoCapacitacion.MostrarCursosProgramadosTemporalesPorID_Planilla(id_Planilla);
  DptoCapacitacion.MostrarCursosRealizadosTemporalesPorID_Planilla(id_Planilla);

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Modificando una Planilla de Excelencia, centro ' + Nombre_Hospital + '.';

  //Muestro la forma de Modificar Planilla de Excelencia
  frmModificarPlanillaDeExcelencia.Position:= poDesktopCenter;
  frmModificarPlanillaDeExcelencia.ShowModal;

  //Valido el estado de los componentes de la pestaña
  ValidarComponentesPlanillasDeExcelencia;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;



procedure TfrmPrincipal.btnEliminarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
var
  id_Hospital: Integer;
  anno: Integer;
  periodo: Integer;
  id_Planilla: Integer;
  NombreHospital: AnsiString;
  semestre: AnsiString;

  Provincia, Direccion, NombreCapac, PrimerApellido, SegundoApellido, NumeroCI, Telefonos, Correos: AnsiString;
  CantCursosProgramados, CantCursosRealizados: AnsiString;
begin
  //Lleno las variables.
  id_Hospital:= DBLookupComboBoxHospitalesDeExcelencia.KeyValue;
  anno:= DBGridHospitalesDeExcelencia.SelectedField.Value;
  periodo:= ComboBoxSemestreHospitalesDeExcelencia.ItemIndex;
  id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);
  NombreHospital:= DBLookupComboBoxHospitalesDeExcelencia.Text;

  if (periodo= 0)
    then
      begin
        //Lleno la variable coloquial del semestre
        semestre:= '1er semestre';

        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Eliminando una Planilla de Excelencia del centro ' + NombreHospital + ', ' +  semestre + ' del año ' + IntToStr(anno) + '.';
      end
        else
          begin
            //Lleno la variable coloquial del semestre
            semestre:= '2do semestre';
            
            //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Eliminando una Planilla de Excelencia del centro ' + NombreHospital + ', ' + semestre + ' del año ' + IntToStr(anno) + '.';
          end;

  //Relleno los otros componentes de la traza
  Provincia:= DBedtProvincia.Field.Text;

  if (DBMemoDireccion.Field.Text<>'')
    then
      Direccion:= DBMemoDireccion.Text
        else
          Direccion:= 'una dirección desconocida';

  if (DBedtNombreCapac.Field.Text<>'')
    then
      NombreCapac:= DBedtNombreCapac.Field.Text
        else
          NombreCapac:= 'desconocido';

  if (DBedtPrimerApellidoCapac.Field.Text<>'')
    then
      PrimerApellido:= ' ' + DBedtPrimerApellidoCapac.Field.Text
        else
          PrimerApellido:= '';

  if (DBedtSegundoApellidoCapac.Field.Text<>'')
    then
      SegundoApellido:= ' ' + DBedtSegundoApellidoCapac.Field.Text
        else
          SegundoApellido:= '';

  if (DBedtCICapac.Field.Text<>'')
    then
      NumeroCI:= DBedtCICapac.Field.Text
        else
          NumeroCI:= 'desconocido';

  if (DBMemoTelefonosCapac.Field.Text<>'')
    then
      Telefonos:= DBMemoTelefonosCapac.Text
        else
                  Telefonos:= 'desconocido';

  if (DBMemoCorreosElectronicosCapac.Field.Text<>'')
    then
      Correos:= DBMemoCorreosElectronicosCapac.Text
        else
          Correos:= 'desconocido';

  if (DptoCapacitacion.CantidadDeCursosProgramados<>0)
    then
      CantCursosProgramados:= IntToStr(DptoCapacitacion.CantidadDeCursosProgramados)
        else
          CantCursosProgramados:='ninguna información en cuanto a';

  if (DptoCapacitacion.CantidadDeCursosRealizados<>0)
    then
      CantCursosRealizados:= IntToStr(DptoCapacitacion.CantidadDeCursosRealizados)
        else
          CantCursosRealizados:='ninguna información en cuanto a';

  //Deshabilito el botón de "Nuevas" del Módulo de Hospitales de Excelencia
  btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;


  //Deshabilito el SpeedButton de "Nueva" del Módulo de Hospitales de Excelencia
  SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= False;

  //Deshabilito la opción de "Nueva Planilla de Excelencia" en el MainMenu


  //Deshabilito el botón de "Modificar" del Módulo de Hospitales de Excelencia
  btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;

  //Deshabilito el SpeedButton de "Modificar" del Módulo de Hospitales de Excelencia
  SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

  //Deshabilito la opción de "Modificar Planilla de Excelencia" del MainMenu


  //Deshabilito el botón de "Eliminar" del Módulo de Hospitales de Excelencia
  btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;

  //Deshabilito el SpeedButton de "Eliminar" del Módulo de Hospitales de Excelencia
  SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

  //Deshabilito la opción de "Eliminar Planilla de Excelencia" del MainMenu


  //Deshabilito el botón de "Previsualizar Reporte" del Módulo de Hospitales de Excelencia
  btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;
  
  //Deshabilito el SpeedButton de "Previsualizar Reporte" del Módulo de Hospitales de Excelencia
  SpeedButtonGenerarReporteHospitalesDeExcelencia.Enabled:= False;
  
  //Deshabilito la opción de "Generar Reporte de Excelencia" en el MainMenu

  //Deshabilito el botón de 'Exportar Reporte a PDF' en la pestaña de Planillas de Excelencia
  btnExportarPDFPlanillaDeExcelencia.Enabled:= False;

  //Muestro mensaje al usuario una confirmación de borrado
  if MessageDlg('¿Desea eliminar la Planilla de Excelencia seleccionada (año ' + IntToStr(anno) + ', ' + semestre + ')?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      begin
        //Realizo el borrado de la Planilla de Excelencia en la BD
        DptoCapacitacion.EliminarPlanillaDeExcelencia(id_Hospital, anno, periodo);

        //Realizo el borrado de los Cursos Programados asociados a esa Planilla de Excelencia
        DptoCapacitacion.EliminarCursosProgramadosPorID_Planilla(id_Planilla);

        //Realizo el borrado de los Cursos Realizados asociados a esa Planilla de Excelencia
        DptoCapacitacion.EliminarCursosRealizadosPorID_Planilla(id_Planilla);

        //Inserto la Traza
        DptoCapacitacion.GuardarTrazaDelSistema('Eliminó una Planilla de Excelencia referente al ' + semestre + ' del año ' + IntToStr(Anno) + ', la cual contenía ' + CantCursosProgramados + ' Cursos Programados y ' + CantCursosRealizados + ' Cursos Realizados.' + ' Esta información se refería al Plan de Capacitación del Hospital de Excelencia de nombre ' + NombreHospital + ', perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. El mismo tiene asociado un Capacitador de nombre ' + NombreCapac + PrimerApellido + SegundoApellido + ', con carné de identidad ' + NumeroCI + ', su teléfono es ' + Telefonos + ' y su correo electrónico es ' + Correos + '.');

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;

        //Actualizo el DBGrid, mostrando las Planillas de Excelencia restantes asociadas a ese Hospital
        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(periodo, id_Hospital);

        //Verifico que aun exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
        then
          begin
            //Recojo nuevamente el id_Planilla
            id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

            //Muestro el listado de Cursos Programados
            DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

            //Muestro el listado de Cursos Realizados
            DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
          end
            else
              begin
                //Intento mostrar el listado de Cursos Programados, para que se borren los componentes
                DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                //Intento mostrar el listado de Cursos Realizados, para que se borren los componentes
                DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
              end;

        //Pongo el Focus en el DBGrid del Módulo de Hospitales de Excelencia
        DBGridHospitalesDeExcelencia.SetFocus;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HC-CAP 2008';

        //Muestro mensaje de información del borrado ya realizado
        MessageDlg('La Planilla de Excelencia del ' + semestre + ', año ' + IntToStr(anno) + ', ha sido eliminada.', mtInformation, [mbOk], 0);  //, mbOk

        //Habilito el botón de "Nuevas" del Módulo de Hospitales de Excelencia
        btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;

        //Habilito el SpeedButton de "Nueva" del Módulo de Hospitales de Excelencia
        SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

        //Habilito la opción de "Nueva Planilla de Excelencia" en el MainMenu

        //Aseguro que, antes de mostrar los demás botones, aun exista al menos una Planilla de Excelencia
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
        then
          begin
            //Habilito el botón de "Modificar" del Módulo de Hospitales de Excelencia
            btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Modificar" del Módulo de Hospitales de Excelencia
            SpeedButtonModificarHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Modificar Planilla de Excelencia" del MainMenu


            //Habilito el botón de "Eliminar" del Módulo de Hospitales de Excelencia
            btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Eliminar" del Módulo de Hospitales de Excelencia
            SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Eliminar Planilla de Excelencia" del MainMenu


            //Habilito el botón de "Generar Reporte" del Módulo de Hospitales de Excelencia
            btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Generar Reporte" del Módulo de Hospitales de Excelencia
            SpeedButtonGenerarReporteHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Generar Reporte de Excelencia" en el MainMenu
          end;
      end

        else //Se elige no borrar.

          begin   // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
            //Habilito el botón de "Nuevas" del Módulo de Hospitales de Excelencia
            btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Nueva" del Módulo de Hospitales de Excelencia
            SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Nueva Planilla de Excelencia" en el MainMenu

            //Habilito el botón de "Modificar" del Módulo de Hospitales de Excelencia
            btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Modificar" del Módulo de Hospitales de Excelencia
            SpeedButtonModificarHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Modificar Planilla de Excelencia" del MainMenu


            //Habilito el botón de "Eliminar" del Módulo de Hospitales de Excelencia
            btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Eliminar" del Módulo de Hospitales de Excelencia
            SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Eliminar Planilla de Excelencia" del MainMenu


            //Habilito el botón de "Generar Reporte" del Módulo de Hospitales de Excelencia
            btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;

            //Habilito el SpeedButton de "Generar Reporte" del Módulo de Hospitales de Excelencia
            SpeedButtonGenerarReporteHospitalesDeExcelencia.Enabled:= True;

            //Habilito la opción de "Generar Reporte de Excelencia" en el MainMenu

            //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmPrincipal.Caption:= 'HC-CAP 2008';
          end;
end;



procedure TfrmPrincipal.btnResumenesRegistroHospitalesDeExcelenciaClick(
  Sender: TObject);
var
  anno: string;
  periodo: string;
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas de Excelencia. Mostrando Resumen.';
    
  //Verifico que haya al menos una planilla seleccionada
  if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
    then
      begin
        //Tomo el año que está seleccionado en el DBGrid
        anno:= IntToStr(DBGridHospitalesDeExcelencia.SelectedField.Value);

        //Tomo el periodo que está seleccionado en el ComboBox
        periodo:= IntToStr(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex);

        //Envio el año hacia la forma de Resúmenes
        frmResumenPlanillasDeExcelencia.TempAnno:= anno;

        //Envio el periodo hacia la forma de Resúmenes
        frmResumenPlanillasDeExcelencia.TempPeriodo:= periodo;
      end
        else
          begin
            //Envio el año actual hacia la forma de Resúmenes
            frmResumenPlanillasDeExcelencia.TempAnno:= '2007';

            //Envio el primer periodo hacia la forma de Resúmenes
            frmResumenPlanillasDeExcelencia.TempPeriodo:= '0';
          end;

  //Muestro la forma de los resúmenes
  frmResumenPlanillasDeExcelencia.Position:= poScreenCenter;
  frmResumenPlanillasDeExcelencia.ShowModal;

  //Elimino posibles balances de excelencia remanentes
  DptoCapacitacion.EliminarResumenDeExcelencia;  

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;



procedure TfrmPrincipal.btnGenerarReporteRegistroHospitalesDeExcelenciaClick(
  Sender: TObject);
begin
    try
         //QuickReportPlanillaDeExcelencia:=TQuickReportPlanillaDeExcelencia.Create(self);

         //Relleno los valores adicionales en el reporte
         QuickReportCursosRealizados.QRLabelReferente.Caption:= 'Referente al ' + ComboBoxSemestreHospitalesDeExcelencia.Text + ' del año ' + IntToStr(DBGridHospitalesDeExcelencia.SelectedField.Value) + '.';
         QuickReportCursosRealizados.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + DptoCapacitacion.ObtenerFechaDelSistema;

         QuickReportCursosRealizados.QRLabelNombreHospital.Caption:= 'Centro: ' + DBLookupComboBoxHospitalesDeExcelencia.Text;
         QuickReportCursosRealizados.QRLabelProvincia.Caption:= 'Provincia: ' + DBedtProvincia.Field.Text;
         QuickReportCursosRealizados.QRMemoDireccion.Caption:= 'Radicado en: ' + DBMemoDireccion.Field.Text;

         //Muestro el reporte
         //QuickReportPlanillaDeExcelenciaCompuesto.QRCompositeReportPlanillaDeExcelencia.Prepare;
         //QuickReportPlanillaDeExcelenciaCompuesto.QRCompositeReportPlanillaDeExcelencia.Reports.Add(QuickReportCursosRealizados);
         //QuickReportPlanillaDeExcelenciaCompuesto.QRCompositeReportPlanillaDeExcelencia.Reports.Add(QuickReportCursosProgramados);

         //QuickReportPlanillaDeExcelenciaCompuesto.PreviewModal;
         QuickReportPlanillaDeExcelenciaCompuesto.QRCompositeReportPlanillaDeExcelencia.PrinterSettings.Title:= 'ja ja ';
         QuickReportPlanillaDeExcelenciaCompuesto.QRCompositeReportPlanillaDeExcelencia.Preview;

      finally
         //QuickReportPlanillaDeExcelencia.Free;
      end;

  //Actualizo el DBGrid de Cursos Programados en la forma principal
  //DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(FID_Planilla);

  //Actualizo el DBGrid de Cursos Realizados en la forma principal
  //DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(FID_Planilla);
end;



procedure TfrmPrincipal.ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender: TObject);
Var
  id_Planilla: Integer;
begin
        //Muestro los nombres de los Hospitales de Excelencia en el DBLookupComboBox del Módulo de Hospitales de Excelencia
        if (ComboBoxProvinciasHospitalesDeExcelencia.Text= 'TODAS')
          then
            begin
              //Cambio la procedencia de los datos
              DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;

              //Selecciono todos los Hospitales de Excelencia del país
              DptoCapacitacion.MostrarHospitalesPorProvincia('TODAS');

              //Muestro la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
              if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                then
                  begin
                    //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                    DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                    //Oculto la información de que no existe capacitador para ese Hospital
                    lblNoTieneCapacitador.Visible:= False;

                    //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
                    lblCantidadDeHospitales.Visible:= True;
                    lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';
                  end
                    else {No hay hospitales en todo el país}
                      begin
                        //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                        //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la información de que no existen hospitales
                        lblCantidadDeHospitales.Visible:= True;
                        lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                      end;

              //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
              if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                then
                  begin
                    //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                    if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                      then
                        begin
                          //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                          DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Escondo la información de que no existe capacitador, pues sí lo hay
                          lblNoTieneCapacitador.Visible:= False;

                          //Muestro las Planillas de Excelencia asociadas a ese Hospital
                          DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Valido el estado para los Componentes de la pestaña
                          ValidarComponentesPlanillasDeExcelencia;

                            //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                            if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                              then
                                begin
                                  //Recojo el id_Planilla
                                  id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                  //Muestro el listado de Cursos Programados
                                  DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                  //Muestro el listado de Cursos Realizados
                                  DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                end
                                  else
                                    begin
                                      //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                                      DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                      //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                                      DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                    end;

                          //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                          DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                          //Cambio el focus para evitar el scroll
                          DBGridHospitalesDeExcelencia.SetFocus;
                        end
                          else {No hay Capacitador}
                            begin
                              //Muestro la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= True;

                              //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                              DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                              //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                              DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                              //Valido el estado para los Componentes de la pestaña
                              ValidarComponentesPlanillasDeExcelencia;

                              //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                              //Cambio el focus para evitar el scroll
                              DBGridHospitalesDeExcelencia.SetFocus;
                            end;
                  end
                    else  {No se escogió ningún Hospital}
                      begin
                        //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
                        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                        //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                        //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                        //Valido el estado para los Componentes de la pestaña
                        ValidarComponentesPlanillasDeExcelencia;

                        //Limpio los componentes (los que se pueden limpiar, por si acaso)
                        DBedtProvincia.Clear;
                        DBMemoDireccion.Clear;
                        DBedtNombreCapac.Clear;
                        DBedtPrimerApellidoCapac.Clear;
                        DBedtSegundoApellidoCapac.Clear;
                        DBedtCICapac.Clear;
                        DBMemoTelefonosCapac.Clear;
                        DBMemoCorreosElectronicosCapac.Clear;

                        //Cambio el focus para evitar el scroll
                        DBGridHospitalesDeExcelencia.SetFocus;
                      end;
            end
              else   {No se escogió "TODAS", sino una provincia en específico} 
                begin
                  //Cambio la procedencia de los datos
                  DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;

                  //Selecciono todos los Hospitales de Excelencia de la provincia
                  DptoCapacitacion.MostrarHospitalesPorProvincia(ComboBoxProvinciasHospitalesDeExcelencia.Text);

                  //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                  if (DptoCapacitacion.CantidadDeHospitalesPorProvincia <> 0)
                    then
                      begin
                        //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                        //Oculto la información de que no existe capacitador para ese Hospital
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                        lblCantidadDeHospitales.Visible:= true;
                        lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesPorProvincia) + ' a escoger )'
                      end
                        else  {No hay hospitales en la provincia}
                          begin
                            //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                            DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                            //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                            lblNoTieneCapacitador.Visible:= False;

                            //Muestro la información de que no existen hospitales
                            lblCantidadDeHospitales.Visible:= true;
                            lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                          end;

                  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
                  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                    then
                      begin
                        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                         if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                          then
                            begin
                              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Escondo la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= False;

                              //Muestro las Planillas de Excelencia asociadas a ese Hospital
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Valido el estado para los Componentes de la pestaña
                              ValidarComponentesPlanillasDeExcelencia;

                              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                                then
                                  begin
                                    //Recojo el id_Planilla
                                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                    //Muestro el listado de Cursos Programados
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                    //Muestro el listado de Cursos Realizados
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                  end
                                    else
                                      begin
                                        //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                                        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                        //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                                        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                      end;
                                  
                              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                              //Cambio el focus para evitar el scroll
                              DBGridHospitalesDeExcelencia.SetFocus;
                            end
                              else {No hay Capacitador para ese hospital}
                                begin
                                  //Muestro la información de que no hay Capacitador
                                  lblNoTieneCapacitador.Visible:= True;

                                  //Intento mostrar las planillas, para limpiar los componentes
                                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                                  //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                                  DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                  //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                                  DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                                  //Valido el estado para los Componentes de la pestaña
                                  ValidarComponentesPlanillasDeExcelencia;

                                  //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                                  //Cambio el focus para evitar el scroll
                                  DBGridHospitalesDeExcelencia.SetFocus;
                                end;
                      end
                        else  {no seleccioné un hospital}
                          begin
                            //Intento mostrar las planillas, para limpiar los componentes
                            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                            //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                            DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                            //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                            DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                            //Valido el estado para los Componentes de la pestaña
                            ValidarComponentesPlanillasDeExcelencia;

                            //Limpio los componentes
                            DBedtProvincia.Clear;
                            DBMemoDireccion.Clear;
                            DBedtNombreCapac.Clear;
                            DBedtPrimerApellidoCapac.Clear;
                            DBedtSegundoApellidoCapac.Clear;
                            DBedtCICapac.Clear;
                            DBMemoTelefonosCapac.Clear;
                            DBMemoCorreosElectronicosCapac.Clear;
                            
                            //Cambio el focus para evitar el scroll
                            DBGridHospitalesDeExcelencia.SetFocus;
                          end;
                end;
end;



procedure TfrmPrincipal.DBGridAnnoHospitalesDeExcelenciaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Anno').AsInteger > 0
    then
      if (gdFocused in State)
        then
          begin
            DBGridHospitalesDeExcelencia.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridHospitalesDeExcelencia.Canvas.Brush.Color := clWhite;
              end;
    //Esta línea es nueva
    DBGridHospitalesDeExcelencia.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;



procedure TfrmPrincipal.DBLookupComboBoxHospitalesDeExcelenciaClick(Sender: TObject);
Var
  id_Planilla: Integer;
begin
  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
    then
      begin
        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
        if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
          then
            begin
              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);
                          
              //Escondo la información de que no existe capacitador, pues sí lo hay
              lblNoTieneCapacitador.Visible:= False;

              //Muestro las Planillas de Excelencia asociadas a ese Hospital
              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                then
                  begin
                    //Recojo el id_Planilla
                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                    //Muestro el listado de Cursos Programados
                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                    //Muestro el listado de Cursos Realizados
                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                  end
                    else
                      begin
                        //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                        //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                      end;

              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

              //Cambio el focus para evitar el scroll
              DBGridHospitalesDeExcelencia.SetFocus;

              //Valido el estado para los Componentes de la pestaña
              ValidarComponentesPlanillasDeExcelencia;
            end
              else {No hay Capacitador}
                begin
                  //Muestro la información de que no existe Capacitador
                  lblNoTieneCapacitador.Visible:= True;

                  //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                  //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                  DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                  //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                  DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                  //Valido el estado para los Componentes de la pestaña
                  ValidarComponentesPlanillasDeExcelencia;

                  //Pongo el cursor del mouse como en default (flechita), en el DBMemo de Correos
                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                  //Cambio el focus para evitar el scroll
                  DBGridHospitalesDeExcelencia.SetFocus;
                end;
      end //Fin de verificación de Hospital de Excelencia ya seleccionado

        else  {No se escogió ningún Hospital}

          begin
            //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

            //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
            DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

            //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
            DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

            //Valido el estado para los Componentes de la pestaña
            ValidarComponentesPlanillasDeExcelencia;

            //Limpio los componentes (los que se pueden limpiar, por si acaso)
            DBedtProvincia.Clear;
            DBMemoDireccion.Clear;
            DBedtNombreCapac.Clear;
            DBedtPrimerApellidoCapac.Clear;
            DBedtSegundoApellidoCapac.Clear;
            DBedtCICapac.Clear;
            DBMemoTelefonosCapac.Clear;

            //Cambio el focus para evitar el scroll
            DBGridHospitalesDeExcelencia.SetFocus;
          end; 
end;



procedure TfrmPrincipal.ComboBoxSemestreHospitalesDeExcelenciaChange(Sender: TObject);
var
  id_Planilla: Integer;
begin
  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
    then
      begin
        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
        if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
          then
            begin
              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

              //Escondo la información de que no existe capacitador, pues sí lo hay
              lblNoTieneCapacitador.Visible:= False;

              //Muestro las Planillas de Excelencia asociadas a ese Hospital
              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

              //Valido el estado para los Componentes de la pestaña
              ValidarComponentesPlanillasDeExcelencia;
                                  
              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                then
                  begin
                    //Recojo el id_Planilla
                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                    //Muestro el listado de Cursos Programados
                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                    //Muestro el listado de Cursos Realizados
                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                  end
                    else
                      begin
                        //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                        //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                      end;

              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

              //Cambio el focus para evitar el scroll
              DBGridHospitalesDeExcelencia.SetFocus;
            end
              else {No hay Capacitador}
                begin
                  //Muestro la información de que no existe Capacitador
                  lblNoTieneCapacitador.Visible:= True;

                  //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                  //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                  DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                  //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                  DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                  //Valido el estado para los Componentes de la pestaña
                  ValidarComponentesPlanillasDeExcelencia;

                  //Pongo el cursor del mouse en dafault (flechita), en el DBMemo de Correos
                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;

                  //Cambio el focus para evitar el scroll
                  DBGridHospitalesDeExcelencia.SetFocus;
                end;
      end//Fin de verificación de Hospital de Excelencia ya seleccionado
        else  {No se escogió ningún Hospital}
          begin
            //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

            //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
            DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

            //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
            DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

            //Valido el estado para los Componentes de la pestaña
            ValidarComponentesPlanillasDeExcelencia;

            //Limpio los componentes (los que se pueden limpiar, por si acaso)
            DBedtProvincia.Clear;
            DBMemoDireccion.Clear;
            DBedtNombreCapac.Clear;
            DBedtPrimerApellidoCapac.Clear;
            DBedtSegundoApellidoCapac.Clear;
            DBedtCICapac.Clear;
            DBMemoTelefonosCapac.Clear;

            //Cambio el focus para evitar el scroll
            DBGridHospitalesDeExcelencia.SetFocus;
          end;
end;





procedure TfrmPrincipal.DBMemoCorreosElectronicosCapacClick(
  Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (DBMemoCorreosElectronicosCapac.Text <> '')
    then
      begin
       DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       TDBMemo(Sender).Text),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            DBMemoCorreosElectronicosCapac.Cursor:= crDefault;
          end;
end;



procedure TfrmPrincipal.btnEliminarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
Var
  id_hospital: Integer;
  Nombre_Hospital: String;

  Provincia, Direccion, NombreCapac, PrimerApellido, SegundoApellido, NumeroCI, Telefonos, Correos: AnsiString;
begin
  //Lleno las variables con el id_Hospital que se encuentra en el DBText, y el nombre seleccionado en el DBGrid
  id_hospital:= DBTextID_Hospital.Field.Value;
  Nombre_Hospital:= DBGridListadoDeHospitales.SelectedField.Value;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Eliminando un Hospital de Excelencia y su Capacitador, centro ' + Nombre_Hospital + '.';

  //Deshabilito en botón de "Nuevo",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
  btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= False;

  //Deshabilito en botón de "Modificar",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
  btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= False;

  //Deshabilito en botón de "Eliminar",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores  
  btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= False;

  //Muestro mensaje al usuario una confirmación de borrado
  if MessageDlg('¿Desea eliminar el Hospital de Excelencia y su Capacitador seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      begin
        //Relleno los componentes de la traza
        Provincia:= DBTextProvincia.Field.Text;
        
        if (DBMemoDireccionAdmin.Field.Text<>'')
          then
            Direccion:= DBMemoDireccionAdmin.Text
              else
                Direccion:= 'una dirección desconocida';

        if (DBedtNombreCapacActual.Field.Text<>'')
          then
            NombreCapac:= DBedtNombreCapacActual.Field.Text
              else
                NombreCapac:= 'desconocido';

        if (DBedtPrimerApellidoCapacActual.Field.Text<>'')
          then
            PrimerApellido:= ' ' + DBedtPrimerApellidoCapacActual.Field.Text
              else
                PrimerApellido:= '';

        if (DBedtSegundoApellidoCapacActual.Field.Text<>'')
          then
              SegundoApellido:= ' ' + DBedtSegundoApellidoCapacActual.Field.Text
                else
                  SegundoApellido:= '';

        if (DBedtCICapacActual.Field.Text<>'')
          then
              NumeroCI:= DBedtCICapacActual.Field.Text
                else
                  NumeroCI:= 'desconocido';

        if (DBMemoTelefonosCapacActual.Field.Text<>'')
          then
              Telefonos:= DBMemoTelefonosCapacActual.Text
                else
                  Telefonos:= 'desconocido';

        if (DBMemoCorreosElectronicosCapacActual.Field.Text<>'')
          then
              Correos:= DBMemoCorreosElectronicosCapacActual.Text
                else
                  Correos:= 'desconocido';

        //Inserto la Traza
        DptoCapacitacion.GuardarTrazaDelSistema('Eliminó un Hospital de Excelencia de nombre ' + Nombre_Hospital + ', perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. El mismo tenía asociado un Capacitador de nombre ' + NombreCapac + PrimerApellido + SegundoApellido + ', con carné de identidad ' + NumeroCI + ', su teléfono era ' + Telefonos + ' y su correo electrónico era ' + Correos + '. Estos datos también fueron eliminados.');

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;
                
        //Realizo el borrado del Hospital de Excelencia en la BD
        DptoCapacitacion.EliminarHospitalDeExcelencia(id_hospital);

        //Realizo el borrado del Capacitador del Hospital Excelencia, en la BD
        DptoCapacitacion.EliminarCapacitador(id_hospital);

        //Actualizar los DBGrids de los Hospitales de Excelencia
        DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

        //Muestro al lado del DBGrid los datos del Capacitador del Hospital de Excelencia seleccionado
        DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(StrToInt(DBTextID_Hospital.Field.Text));

        //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
        lblCantidadDeHospitalesParaAdmin.Visible:= True;
        lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

        //Actualizo la información de la pestaña de Registros de Excelencia
        ActualizarRegistrosDExcelencia;

        //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
        lblCantidadDeHospitales.Visible:= True;
        lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HC-CAP 2008';

        //Muestro mensaje de información del borrado ya realizado
        MessageDlg('El Centro Hospitalario de Excelencia, ' + Nombre_Hospital + ', junto con su Capacitador, han sido ambos eliminados.', mtInformation, [mbOk], 0);  //, mbOk

        //Habilito en botón de "Nuevo",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
        btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;
        
        //Aseguro que, antes de mostrar los demás botones, el DBGrid no esté vacío
        if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
          then
            begin
              //Habilito en botón de "Modificar",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
              btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Habilito en botón de "Eliminar",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
              btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Pongo el cursor del mouse como una mano, en el DBMemo
              DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;
            end
              else
                begin
                  //Pongo el cursor del mouse como una flechita (Default), en el DBMemo
                  DBMemoCorreosElectronicosCapacActual.Cursor:= crDefault;
                end;

      end
        else
          begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
            //Habilito en botón de "Nuevo",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
            btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;

            //Habilito en botón de "Modificar",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
            btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;

            //Habilito en botón de "Eliminar",  de la pestaña de Administración de Hosp. de Excelencia y Capacitadores
            btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;

            //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmPrincipal.Caption:= 'HC-CAP 2008';
          end;
end;



procedure TfrmPrincipal.btnModificarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
Var
  id_hospital: Integer;
  Nombre_Hospital: String;
begin
  //Lleno las variables con el id_Hospital que se encuentra en el DBText, y el nombre seleccionado en el DBGrid
  id_hospital:= DBTextID_Hospital.Field.Value;
  Nombre_Hospital:= DBGridListadoDeHospitales.SelectedField.Value;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Modificando el centro ' + Nombre_Hospital + ' y su Capacitador.';

  //Envio el id_Hospital desde el DBGrid  hacia la forma de modificación del Hospital de Excelencia y su Capacitador
  frmModificarHospitalDeExcelenciaYCapacitador.TempID_Hospital:= id_hospital;

  //Muestro la forma de modificación de un Hospital de Excelencia y su Capacitador
  frmModificarHospitalDeExcelenciaYCapacitador.Position:= poDesktopCenter;
  frmModificarHospitalDeExcelenciaYCapacitador.ShowModal;

  //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
  lblCantidadDeHospitalesParaAdmin.Visible:= True;
  lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

  //Lleno nuevamente la variable con el id_Hospital que se encuentra en el DBText
  id_hospital:= DBTextID_Hospital.Field.Value;

  //Busco el Capacitador que debo modificar, en la BD.
  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(id_hospital);

  //Actualizo la información de la pestaña de Registros de Excelencia
  ActualizarRegistrosDExcelencia;  
  
  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;



procedure TfrmPrincipal.btnNuevoHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Agregando un Hospital de Excelencia y su Capacitador.';

  //Muestro la forma de inserción de un nuevo Hospital de Excelencia y su Capacitador
  frmNuevoHospitalDeExcelenciaYCapacitador.Position:= poDesktopCenter;
  frmNuevoHospitalDeExcelenciaYCapacitador.ShowModal;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';

  //Muestro la cantidad de Hospitales de Excelencia, para la administración de Hospitales y Capacitadores
  lblCantidadDeHospitalesParaAdmin.Visible:= True;
  lblCantidadDeHospitalesParaAdmin.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' Hospitales.';

  //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
  lblCantidadDeHospitales.Visible:= True;
  lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';

  //Actualizo la información de la pestaña de Registros de Excelencia
  ActualizarRegistrosDExcelencia;
end;



procedure TfrmPrincipal.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  //Muestro al lado del DBGrid los datos del Capacitador del Hospital de Excelencia seleccionado
  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(StrToInt(DBTextID_Hospital.Field.Text));
end;

procedure TfrmPrincipal.btnNuevoTipoDeCursoClick(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Agregando un Tipo de Curso.';

  //Muestro la forma de inserción de un nuevo Tipo de Curso
  frmNuevoTipoDeCurso.Position:= poDesktopCenter;
  frmNuevoTipoDeCurso.ShowModal;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';

  //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
  lblCantidadTiposDeCursos.Visible:= True;
  lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

  //Pongo el focus en el DBGrid
  DBGridTiposDeCursos.SetFocus;
end;

procedure TfrmPrincipal.btnModificarTipoDeCursoClick(Sender: TObject);
Var
  id_TipoDeCurso: Integer;
  Nombre_TipoDeCurso: String;
begin
  //Lleno las variables con el id_TipoDeCurso que se encuentra en el DBText, y el nombre seleccionado en el DBGrid
  id_TipoDeCurso:= StrToInt(DBTextID_TipoDeCurso.Field.Value);
  Nombre_TipoDeCurso:= DBGridTiposDeCursos.SelectedField.Value;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Modificando un Tipo de Curso, de nombre ' + Nombre_TipoDeCurso + '.';

  //Envio el id_TipoDeCurso desde el DBGrid  hacia la forma de modificación del Tipo de Curso
  frmModificarTipoDeCurso.TempID_TipoDeCurso:= id_TipoDeCurso;

  //Muestro la forma de modificación del Tipo de Curso
  frmModificarTipoDeCurso.Position:= poDesktopCenter;
  frmModificarTipoDeCurso.ShowModal;

  //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
  lblCantidadTiposDeCursos.Visible:= True;
  lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

  //Pongo el focus en el DBGrid
  DBGridTiposDeCursos.SetFocus;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';
end;

procedure TfrmPrincipal.btnEliminarTipoDeCursoClick(Sender: TObject);
Var
  id_TipoDeCurso: Integer;
  Nombre_TipoDeCurso: String;
begin
  //Lleno las variables con el id_TipoDeCurso que se encuentra en el DBText, y el nombre seleccionado en el DBGrid
  id_TipoDeCurso:= StrToInt(DBTextID_TipoDeCurso.Field.Value);
  Nombre_TipoDeCurso:= DBGridTiposDeCursos.SelectedField.Value;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Hospitales de Excelencia. Eliminando un Tipo de Curso, de nombre ' + Nombre_TipoDeCurso + '.';

  //Deshabilito en botón de "Nuevo",  de la pestaña de Administración de Tipos de Cursos
  btnNuevoTipoDeCurso.Enabled:= False;

  //Deshabilito en botón de "Modificar",  de la pestaña de Administración de Tipos de Cursos
  btnModificarTipoDeCurso.Enabled:= False;

  //Deshabilito en botón de "Eliminar",  de la pestaña de Administración de Tipos de Cursos
  btnEliminarTipoDeCurso.Enabled:= False;

  //Muestro mensaje al usuario una confirmación de borrado
  if MessageDlg('¿Desea eliminar el Tipo de Curso seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      begin
        //Realizo el borrado del Tipo de Curso en la BD
        DptoCapacitacion.EliminarTipoDeCurso(id_TipoDeCurso);

        //Actualizar los DBGrids de los Tipos de Cursos
        DptoCapacitacion.MostrarTiposDeCursos;

        //Inserto la Traza
        DptoCapacitacion.GuardarTrazaDelSistema('Eliminó el Tipo de Curso ' + '"' + Nombre_TipoDeCurso + '"' + '.');

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;
                      
        //Muestro la cantidad de Tipos de Cursos, para la administración de Tipos de Cursos
        lblCantidadTiposDeCursos.Visible:= True;
        lblCantidadTiposDeCursos.Caption:= 'TOTAL = ' + IntToStr(DptoCapacitacion.CantidadDeTiposDeCursos) + ' Cursos.';

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HC-CAP 2008';

        //Muestro mensaje de información del borrado ya realizado
        MessageDlg('El Tipo de Curso, denominado ' + Nombre_TipoDeCurso + ', ha sido eliminado.', mtInformation, [mbOk], 0);  //, mbOk

        //Habilito en botón de "Nuevo",  de la pestaña de Administración de Tipos de Cursos
        btnNuevoTipoDeCurso.Enabled:= True;

        //Pongo el focus en el DBGrid
        DBGridTiposDeCursos.SetFocus;
        
        //Aseguro que, antes de mostrar los demás botones, el DBGrid no esté vacío
        //Verifico la cantidad de Tipos de Cursos Existentes
        if (DptoCapacitacion.CantidadDeTiposDeCursos <> 0)
          then
            begin
              //Habilito todos los botones para la administración de Tipos de Cursos
              btnNuevoTipoDeCurso.Enabled:= True;
              btnModificarTipoDeCurso.Enabled:= True;
              btnEliminarTipoDeCurso.Enabled:= True;
            end
              else
                begin
                  //Habilito el botón de "Nuevo" para la administración de Tipos de Cursos
                  btnNuevoTipoDeCurso.Enabled:= True;
                  btnModificarTipoDeCurso.Enabled:= False;
                  btnEliminarTipoDeCurso.Enabled:= False;
                end;
      end
        else
          begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
            //Habilito en botón de "Nuevo",  de la pestaña de Administración de Tipos de Cursos
            btnNuevoTipoDeCurso.Enabled:= True;

            //Habilito en botón de "Modificar",  de la pestaña de Administración de Tipos de Cursos
            btnModificarTipoDeCurso.Enabled:= True;

            //Habilito en botón de "Eliminar",  de la pestaña de Administración de Tipos de Cursos
            btnEliminarTipoDeCurso.Enabled:= True;

            //Pongo el focus en el DBGrid
            DBGridTiposDeCursos.SetFocus;

            //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmPrincipal.Caption:= 'HC-CAP 2008';
          end;
end;



procedure TfrmPrincipal.DBGridTiposDeCursosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFB66C);
  clStrongRed=TColor($006C6CFF);
begin
  //Pinto de color rojo pálido las filas habilitadas, y si las selecciono se ponen de color rojo fuerte
  if Column.Field.Dataset.FieldbyName('Estado').AsString = 'Habilitado'
    then
      if (gdSelected in State)
        then
          begin
            DBGridTiposDeCursos.Canvas.Brush.Color := clStrongRed;
          end
            else
              begin
                DBGridTiposDeCursos.Canvas.Brush.Color := clPaleRed;
              end;

  //Pinto de color verde pálido las filas habilitadas, y si las selecciono se ponen de color verde fuerte              
  if Column.Field.Dataset.FieldbyName('Estado').AsString = 'Deshabilitado'
    then
      if (gdSelected in State)
        then
          begin
            DBGridTiposDeCursos.Canvas.Brush.Color := clGreen;
          end
            else
              begin
                DBGridTiposDeCursos.Canvas.Brush.Color := clPaleGreen;
              end;
              
    //Esta línea es nueva
    DBGridTiposDeCursos.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;



procedure TfrmPrincipal.DBGridHospitalesDeExcelenciaCellClick(Column: TColumn);
var
  id_Planilla: Integer;
begin
  //Verifico primero que haya conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
          then
            begin
              //Recojo el id_Planilla
              id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

              //Muestro el listado de Cursos Programados
              DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

              //Muestro el listado de Cursos Realizados
              DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
            end;
      end;
end;



procedure TfrmPrincipal.DBMemoCorreosElectronicosCapacActualClick(
  Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (DBMemoCorreosElectronicosCapacActual.Text <> '')
    then
      begin
       DBMemoCorreosElectronicosCapacActual.Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       TDBMemo(Sender).Text),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            DBMemoCorreosElectronicosCapacActual.Cursor:= crDefault;
          end;
end;



procedure TfrmPrincipal.DBGridListadoDeHospitalesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_Hospital').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridListadoDeHospitales.Canvas.Brush.Color := clPaleBlue;
            //Muestro al lado del DBGrid los datos del Capacitador del Hospital de Excelencia seleccionado
            DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(StrToInt(DBTextID_Hospital.Field.Text));
          end
            else
              begin
                DBGridListadoDeHospitales.Canvas.Brush.Color := clWhite;
              end;
    //Esta línea es nueva
    DBGridListadoDeHospitales.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;



procedure TfrmPrincipal.DBGridCursosProgramadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_TipoDeCurso').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridCursosProgramados.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridCursosProgramados.Canvas.Brush.Color := clWhite;
              end;
    //Esta línea es nueva
    DBGridCursosProgramados.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;



procedure TfrmPrincipal.DBGridCursosRealizadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_TipoDeCurso').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridCursosRealizados.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridCursosRealizados.Canvas.Brush.Color := clWhite;
              end;
    //Esta línea es nueva
    DBGridCursosRealizados.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;

procedure TfrmPrincipal.TabSheetDatosDelHospitalShow(Sender: TObject);
begin
  //Le cambio los Hints a los SpeedButtons del Módulo de Planillas de Excelencia
  SpeedButtonNuevaHospitalesDeExcelencia.Hint:= 'Crear una nueva Planilla de Excelencia';
  SpeedButtonModificarHospitalesDeExcelencia.Hint:= 'Modificar una Planilla de Excelencia ya existente';
  SpeedButtonEliminarHospitalesDeExcelencia.Hint:= 'Eliminar una Planilla de Excelencia';
  SpeedButtonGenerarReporteHospitalesDeExcelencia.Hint:= 'Generar un Reporte a partir de una Planilla de Excelencia';

  //Intento diferenciar la imagen de los SpeedButtons de edición
  SpeedButtonNuevaHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Add_red.bmp');
  SpeedButtonModificarHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Redo_red.bmp');
  SpeedButtonEliminarHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Remove_red.bmp');

  PestannaActiva:= 'PlanillasDeExcelencia';

  //Valido el estado de los componentes de la pestaña
  ValidarComponentesPlanillasDeExcelencia;
end;

procedure TfrmPrincipal.TabSheetHospitalesDeExcelenciaYCapacitadoresShow(
  Sender: TObject);
begin
  //Le cambio los Hints a los SpeedButtons del Módulo de Planillas de Excelencia
  SpeedButtonNuevaHospitalesDeExcelencia.Hint:= 'Crear un nuevo Hospital de Excelencia y su Capacitador';
  SpeedButtonModificarHospitalesDeExcelencia.Hint:= 'Modificar un Hospital de Excelencia y/o su Capacitador, ya existentes ambos';
  SpeedButtonEliminarHospitalesDeExcelencia.Hint:= 'Eliminar un Hospital de Excelencia y su Capacitador';

  //Intento diferenciar la imagen de los SpeedButtons de edición
  SpeedButtonNuevaHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Add_yellow.bmp');
  SpeedButtonModificarHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Redo_yellow.bmp');
  SpeedButtonEliminarHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Remove_yellow.bmp');

  PestannaActiva:= 'HospitalesDeExcelenciaYCapacitadores';

  //Valido el estado de los componentes de la pestaña
  ValidarComponentesHospitalesDeExcelenciaYCapacitadores;
end;

procedure TfrmPrincipal.TabSheetTiposDeCursosShow(Sender: TObject);
begin
  //Le cambio los Hints a los SpeedButtons del Módulo de Planillas de Excelencia
  SpeedButtonNuevaHospitalesDeExcelencia.Hint:= 'Crear un nuevo Tipo de Curso';
  SpeedButtonModificarHospitalesDeExcelencia.Hint:= 'Modificar un Tipo de Curso ya existente';
  SpeedButtonEliminarHospitalesDeExcelencia.Hint:= 'Eliminar un Tipo de Curso';

  //Intento diferenciar la imagen de los SpeedButtons de edición
  SpeedButtonNuevaHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Add_green.bmp');
  SpeedButtonModificarHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Redo_green.bmp');
  SpeedButtonEliminarHospitalesDeExcelencia.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\mod_hex\16x16\Remove_green.bmp');

  PestannaActiva:= 'TiposDeCursos';

  //Valido el estado de los componentes de la pestaña
  ValidarComponentesTiposDeCursos;
end;

procedure TfrmPrincipal.MenuOpcionAgregarPuestoDeTrabajoClick(
  Sender: TObject);
begin
  SpeedButtonNuevoPuestosDeTrabajo.Click;
end;

procedure TfrmPrincipal.MenuOpcionModificarPuestoDeTrabajoClick(
  Sender: TObject);
begin
  SpeedButtonModificarPuestosDeTrabajo.Click;
end;

procedure TfrmPrincipal.MenuOpcionEliminarPuestoDeTrabajoClick(
  Sender: TObject);
begin
  SpeedButtonEliminarPuestosDeTrabajo.Click;
end;

procedure TfrmPrincipal.DBGridListadoDeHospitalesCellClick(Column: TColumn);
begin
  //Verifico primero que haya conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD)
    then
      begin
        //Muestro al lado del DBGrid los datos del Capacitador del Hospital de Excelencia seleccionado
        DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(StrToInt(DBTextID_Hospital.Field.Text));
      end;
end;

procedure TfrmPrincipal.ActualizarRegistrosDExcelencia;
var
  id_Planilla: Integer;
begin
        //Muestro los nombres de los Hospitales de Excelencia en el DBLookupComboBox del Módulo de Hospitales de Excelencia
        if (ComboBoxProvinciasHospitalesDeExcelencia.Text= 'TODAS')
          then
            begin
              //Cambio la procedencia de los datos
              DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;
              DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecTodosLosHospitales;

              //Selecciono todos los Hospitales de Excelencia del país
              DptoCapacitacion.MostrarHospitalesPorProvincia('TODAS');

              //Muestro la cantidad de Hospitales de Excelencia encontrados en total (todo el país)
              if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
                then
                  begin
                    //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                    DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                    //Oculto la información de que no existe capacitador para ese Hospital
                    lblNoTieneCapacitador.Visible:= False;

                    //Muestro la cantidad de Hospitales de Excelencia encontrados en todo el país
                    lblCantidadDeHospitales.Visible:= True;
                    lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesTotales) + ' a escoger )';
                  end
                    else {No hay hospitales en todo el país}
                      begin
                        //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                        //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la información de que no existen hospitales
                        lblCantidadDeHospitales.Visible:= True;
                        lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                      end;

              //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
              if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                then
                  begin
                    //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                    if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                      then
                        begin
                          //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                          DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Escondo la información de que no existe capacitador, pues sí lo hay
                          lblNoTieneCapacitador.Visible:= False;

                          //Muestro las Planillas de Excelencia asociadas a ese Hospital
                          DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                          //Verifico si hay al menos una Planilla de Excelencia para mostrar u ocultar algunos componentes
                          if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia)
                            then
                              begin
                                btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;
                                btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;
                                btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;
                              end
                                else
                                  begin
                                    btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;
                                    btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;
                                    btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;
                                  end;

                            //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                            if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                              then
                                begin
                                  //Recojo el id_Planilla
                                  id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                  //Muestro el listado de Cursos Programados
                                  DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                  //Muestro el listado de Cursos Realizados
                                  DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                end
                                  else
                                    begin
                                      //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                                      DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                      //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                                      DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                    end;

                          //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                          DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;
                        end
                          else {No hay Capacitador}
                            begin
                              //Muestro la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= True;

                              //Intento mostrar las Planillas de Excelencia, para limpiar los componentes
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                              DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                              //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                              DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                              //Verifico si hay al menos una Planilla de Excelencia para mostrar u ocultar algunos componentes
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia)
                                then
                                  begin
                                    btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;
                                  end
                                    else
                                      begin
                                        btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;
                                        btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;
                                        btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;
                                      end;

                              //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crDefault;
                            end;
                  end
                    else  {No se escogió ningún Hospital}
                      begin
                        //Intento mostrar las Planillas de Excelencia, para que se borren los componentes
                        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                        //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                        //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                        //Verifico si hay al menos una Planilla de Excelencia para mostrar u ocultar algunos componentes
                        if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia)
                          then
                            begin
                              btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                              btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;
                              btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;
                              btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                              btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;
                            end
                              else
                                begin
                                  btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;
                                  btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;
                                  btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;
                                  btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                  btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;
                                end;

                        //Limpio los componentes (los que se pueden limpiar, por si acaso)
                        DBedtProvincia.Clear;
                        DBMemoDireccion.Clear;
                        DBedtNombreCapac.Clear;
                        DBedtPrimerApellidoCapac.Clear;
                        DBedtSegundoApellidoCapac.Clear;
                        DBedtCICapac.Clear;
                        DBMemoTelefonosCapac.Clear;
                        DBMemoCorreosElectronicosCapac.Clear;
                      end;
            end
              else   {No se escogió "TODAS", sino una provincia en específico} 
                begin
                  //Cambio la procedencia de los datos
                  DBLookupComboBoxHospitalesDeExcelencia.ListSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBedtProvincia.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;
                  DBMemoDireccion.DataSource:= DataModuleHospitalesDeExcelencia.DataSourceSelecHospitalesPorProvincia;

                  //Selecciono todos los Hospitales de Excelencia de la provincia
                  DptoCapacitacion.MostrarHospitalesPorProvincia(ComboBoxProvinciasHospitalesDeExcelencia.Text);

                  //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                  if (DptoCapacitacion.CantidadDeHospitalesPorProvincia <> 0)
                    then
                      begin
                        //Habilito el DBLookupComboBox para poder seleccionar algún Hospital
                        DBLookupComboBoxHospitalesDeExcelencia.Enabled:= True;

                        //Oculto la información de que no existe capacitador para ese Hospital
                        lblNoTieneCapacitador.Visible:= False;

                        //Muestro la cantidad de Hospitales de Excelencia encontrados en la provincia
                        lblCantidadDeHospitales.Visible:= true;
                        lblCantidadDeHospitales.Caption:= '( ' + IntToStr(DptoCapacitacion.CantidadDeHospitalesPorProvincia) + ' a escoger )'
                      end
                        else  {No hay hospitales en la provincia}
                          begin
                            //Deshabilito el DBLookupComboBox para no intentar seleccionar un Hospital que no existe
                            DBLookupComboBoxHospitalesDeExcelencia.Enabled:= False;

                            //Escondo la información de que no existe capacitador, pues ni siquiera está el hospital 
                            lblNoTieneCapacitador.Visible:= False;

                            //Muestro la información de que no existen hospitales
                            lblCantidadDeHospitales.Visible:= true;
                            lblCantidadDeHospitales.Caption:= '( Ninguno a escoger )';
                          end;

                  //Ejecuto la búsqueda de las Planillas de Excelencia si se muestra algún hospital
                  if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
                    then
                      begin
                        //Verifico que el Hospital seleccionado en el DBLookupComboBox tenga asignado un Capacitador
                         if (DptoCapacitacion.ExisteCapacitadorEnElHospital(DBLookupComboBoxHospitalesDeExcelencia.KeyValue) = True)
                          then
                            begin
                              //Muestro los datos del Capacitador del Hospital de Excelencia seleccionado
                              DptoCapacitacion.MostrarCapacitadorPorHospitalDeExcelencia(DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Escondo la información de que no existe Capacitador
                              lblNoTieneCapacitador.Visible:= False;

                              //Muestro las Planillas de Excelencia asociadas a ese Hospital
                              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                              //Verifico si hay al menos una Planilla de Excelencia para mostrar u ocultar algunos componentes
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia)
                                then
                                  begin
                                    btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                    btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;
                                  end
                                    else
                                      begin
                                        btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;
                                        btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;
                                        btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;
                                      end;
                              //Verifico que exista al menos una Planilla de Excelencia asociada al Hospital de Excelencia seleccionado
                              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia = True)
                                then
                                  begin
                                    //Recojo el id_Planilla
                                    id_Planilla:= StrToInt(DBTextID_Planilla.Field.Text);

                                    //Muestro el listado de Cursos Programados
                                    DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

                                    //Muestro el listado de Cursos Realizados
                                    DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);
                                  end
                                    else
                                      begin
                                        //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                                        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                        //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                                        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);
                                      end;

                              //Pongo el cursor del mouse como una mano, en el DBMemo de Correos
                              DBMemoCorreosElectronicosCapac.Cursor:= crHandPoint;

                              //Cambio el focus para evitar el scroll
                              DBGridHospitalesDeExcelencia.SetFocus;
                            end
                              else {No hay Capacitador para ese hospital}
                                begin
                                  //Muestro la información de que no hay Capacitador
                                  lblNoTieneCapacitador.Visible:= True;

                                  //Intento mostrar las planillas, para limpiar los componentes
                                  DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, DBLookupComboBoxHospitalesDeExcelencia.KeyValue);

                                  //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                                  DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                                  //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                                  DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                                  //Verifico si hay al menos una Planilla de Excelencia para mostrar u ocultar algunos componentes
                                  if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia)
                                    then
                                      begin
                                        btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                        btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;
                                      end
                                        else
                                          begin
                                            btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;
                                            btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;
                                            btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;
                                            btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;
                                            btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;
                                          end;

                                  //Pongo el cursor del mouse en default (flechita), en el DBMemo de Correos
                                  DBMemoCorreosElectronicosCapac.Cursor:= crDefault;
                                end;
                      end
                        else  {no seleccioné un hospital}
                          begin
                            //Intento mostrar las planillas, para limpiar los componentes
                            DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(ComboBoxSemestreHospitalesDeExcelencia.ItemIndex, 0);

                            //Intento mostrar el listado de Cursos Programados, para limpiar los componentes
                            DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(0);

                            //Intento mostrar el listado de Cursos Realizados, para limpiar los componentes
                            DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(0);

                            //Limpio los componentes
                            DBedtProvincia.Clear;
                            DBMemoDireccion.Clear;
                            DBedtNombreCapac.Clear;
                            DBedtPrimerApellidoCapac.Clear;
                            DBedtSegundoApellidoCapac.Clear;
                            DBedtCICapac.Clear;
                            DBMemoTelefonosCapac.Clear;
                            DBMemoCorreosElectronicosCapac.Clear;
                          end;
                end;
end;


procedure TfrmPrincipal.DBGridListadoDeHospitalesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //Verifico primero que haya conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD)
    then
      begin
        //Muestro al lado del DBGrid los datos del Capacitador del Hospital de Excelencia seleccionado
        DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(StrToInt(DBTextID_Hospital.Field.Text));
      end;
end;

procedure TfrmPrincipal.MenuOpcionModificarTipoDeCursoClick(Sender: TObject);
begin
  btnModificarTipoDeCurso.Click;
end;

procedure TfrmPrincipal.MenuOpcionAgregarTipoDeCursoClick(Sender: TObject);
begin
  btnNuevoTipoDeCurso.Click;
end;

procedure TfrmPrincipal.MenuOpcionEliminarTipoDeCursoClick(Sender: TObject);
begin
  btnEliminarTipoDeCurso.Click;
end;

procedure TfrmPrincipal.MenuOpcionAgregarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
begin
  btnNuevoHospitalDeExcelenciaYCapacitador.Click;
end;

procedure TfrmPrincipal.MenuOpcionModificarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
begin
  btnModificarHospitalDeExcelenciaYCapacitador.Click;
end;

procedure TfrmPrincipal.MenuOpcionEliminarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
begin
  btnEliminarHospitalDeExcelenciaYCapacitador.Click;
end;

procedure TfrmPrincipal.MenuOpcionAgregarPlanillaDeExcelenciaClick(Sender: TObject);
begin
  btnNuevoRegistroHospitalesDeExcelencia.Click;
end;

procedure TfrmPrincipal.MenuOpcionModificarPlanillaDeExcelenciaClick(Sender: TObject);
begin
  btnModificarRegistroHospitalesDeExcelencia.Click;
end;

procedure TfrmPrincipal.MenuOpcionEliminarPlanillaDeExcelenciaClick(Sender: TObject);
begin
  btnEliminarRegistroHospitalesDeExcelencia.Click;
end;


procedure TfrmPrincipal.ValidarComponentesPuestosDeTrabajo;
begin
  //Muestro los SpeedButtons de edición del Módulo de Control del Sistema
  SpeedButtonNuevoPuestosDeTrabajo.Visible:= True;
  SpeedButtonModificarPuestosDeTrabajo.Visible:= True;
  SpeedButtonEliminarPuestosDeTrabajo.Visible:= True;
  
  //Escondo el SpeedButton de "Detalles" de la pestaña de Puestos de Trabajo
  SpeedButtonDetallesDeTraza.Visible:= False;

  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Decido qué componentes mostrar en dependencia de los privilegios del Loggeado
        if ( DptoCapacitacion.ElLoggeadoEsAdministrador = False)
          then
            begin //Se trata de un Operador
              //Oculto el PageControl de Control del Sistema
              PageControlControlDelSistema.Visible:= False;

              //Oculto el ToolBar de la pestaña de Control del Sistema
              ToolBarControlDelSistema.Visible:= False;

              //Oculto la pestaña de Control del Sistema
              TabSheetControlDelSistema.TabVisible:= False;

              //Coloco al usuario en la pestaña de Planillas Provinciales
              PageControlTodo.ActivePageIndex:= 1;

              //Escondo el botón de "Nuevo" del Módulo de Puestos de Trabajo
              btnNuevoPuestosDeTrabajo.Visible:= False;

              //Escondo el SpeedButton de "Nuevo" del Módulo de Puestos de Trabajo
              SpeedButtonNuevoPuestosDeTrabajo.Visible:= False;

              //Escondo la opción de "Nuevo Puesto de Trabajo" del MainMenu
              MenuOpcionAgregarPuestoDeTrabajo.Visible:= False;

              //Escondo el botón de "Modificar" del Módulo de Puestos de Trabajo
              btnModificarPuestosDeTrabajo.Visible:= False;

              //Escondo el SpeedButton de "Modificar" del Módulo de Puestos de Trabajo
              SpeedButtonModificarPuestosDeTrabajo.Visible:= False;

              //Escondo la opción de "Modificar Puesto de Trabajo" del MainMenu
              MenuOpcionModificarPuestoDeTrabajo.Visible:= False;
                    
              //Escondo el botón de "Eliminar" del Módulo de Puestos de Trabajo
              btnEliminarPuestosDeTrabajo.Visible:= False;

              //Escondo el SpeedButton de "Eliminar" del Módulo de Puestos de Trabajo
              SpeedButtonEliminarPuestosDeTrabajo.Visible:= False;

              //Escondo la opción de "Eliminar Puesto de Trabajo" del MainMenu
              MenuOpcionEliminarPuestoDeTrabajo.Visible:= False;
            end
              else
                begin //Se trata de un Administrador
                  //Muestro el PageControl de Control del Sistema
                  PageControlControlDelSistema.Visible:= True;

                  //Muestro el ToolBar de la pestaña de Control del Sistema
                  ToolBarControlDelSistema.Visible:= True;

                  //Muestro la pestaña de Control del Sistema
                  TabSheetControlDelSistema.TabVisible:= True;

                  //Muestro el botón de "Nuevo" del Módulo de Puestos de Trabajo
                  btnNuevoPuestosDeTrabajo.Visible:= True;

                  //Muestro el SpeedButton de "Nuevo" del Módulo de Puestos de Trabajo
                  SpeedButtonNuevoPuestosDeTrabajo.Visible:= True;

                  //Muestro la opción de "Nuevo Puesto de Trabajo" del MainMenu
                  MenuOpcionAgregarPuestoDeTrabajo.Visible:= True;

                  //Muestro el botón de "Modificar" del Módulo de Puestos de Trabajo
                  btnModificarPuestosDeTrabajo.Visible:= True;

                  //Muestro el SpeedButton de "Modificar" del Módulo de Puestos de Trabajo
                  SpeedButtonModificarPuestosDeTrabajo.Visible:= True;

                  //Muestro la opción de "Modificar Puesto de Trabajo" del MainMenu
                  MenuOpcionModificarPuestoDeTrabajo.Visible:= True;

                  //Muestro el botón de "Eliminar" del Módulo de Puestos de Trabajo
                  btnEliminarPuestosDeTrabajo.Visible:= True;

                  //Muestro el SpeedButton de "Eliminar" del Módulo de Puestos de Trabajo
                  SpeedButtonEliminarPuestosDeTrabajo.Visible:= True;

                  //Muestro la opción de "Eliminar Puesto de Trabajo" del MainMenu
                  MenuOpcionEliminarPuestoDeTrabajo.Visible:= True;

                  //Escondo el SpeedButton de "Detalles" de la pestaña de Puestos de Trabajo
                  SpeedButtonDetallesDeTraza.Visible:= False;
                end;
      end
        else
          begin
            //Deshabilito las opciones de Edición y Ver del MainMenu
            MenuEdicion.Enabled:= False;
            MenuVer.Enabled:= False;
          end;
end;

procedure TfrmPrincipal.ValidarComponentesTrazasDelSistema;
begin
  //Oculto los SpeedButtons de edición del Módulo de Control del Sistema
  SpeedButtonNuevoPuestosDeTrabajo.Visible:= False;
  SpeedButtonModificarPuestosDeTrabajo.Visible:= False;
  SpeedButtonEliminarPuestosDeTrabajo.Visible:= False;

  //Muestro el SpeedButton de "Detalles" de la pestaña de Puestos de Trabajo
  SpeedButtonDetallesDeTraza.Visible:= True;

  //Después verifico si existe conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Habilito el SpeedButton de "Detalles" de la pestaña de Puestos de Trabajo
        SpeedButtonDetallesDeTraza.Enabled:= True;
      end
        else
          begin
            //Deshabilito las opciones de Edición y Ver del MainMenu
            MenuEdicion.Enabled:= False;
            MenuVer.Enabled:= False;
                      
            //Deshabilito el SpeedButton de "Detalles" de la pestaña de Puestos de Trabajo
            SpeedButtonDetallesDeTraza.Enabled:= False;
          end;
end;


procedure TfrmPrincipal.ValidarComponentesPlanillasDeExcelencia;
begin
  //Muestro el SpeedButton de Generar Reporte del Módulo de Planillas de Excelencia
  SpeedButtonGenerarReporteHospitalesDeExcelencia.Visible:= True;

  //Después verifico si existe conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico si se escogió ya a un Hospital de excelencia
        if (DBLookupComboBoxHospitalesDeExcelencia.Text <> '')
          then
            begin
              //Por último verifico si hay al menos una Planilla de Excelencia para mostrar u ocultar algunos componentes
              if (DptoCapacitacion.ExisteAlMenosUnaPlanillaDeExcelencia)
                then
                  begin
                    //Habilito el botón de 'Nuevo' en la pestaña de Planillas de Excelencia
                    btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;

                    //Habilito el SpeedButton de 'Nuevo' en la pestaña de Planillas de Excelencia
                    SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

                    //Habilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
                    MenuOpcionAgregarPlanillaDeExcelencia.Enabled:= True;

                    //Habilito el botón de 'Modificar' en la pestaña de Planillas de Excelencia
                    btnModificarRegistroHospitalesDeExcelencia.Enabled:= True;

                    //Habilito el SpeedButton de 'Modificar' en la pestaña de Planillas de Excelencia
                    SpeedButtonModificarHospitalesDeExcelencia.Enabled:= True;

                    //Habilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
                    MenuOpcionModificarPlanillaDeExcelencia.Enabled:= True;

                    //Habilito el botón de 'Eliminar' en la pestaña de Planillas de Excelencia
                    btnEliminarRegistroHospitalesDeExcelencia.Enabled:= True;

                    //Habilito el SpeedButton de 'Eliminar' en el Módulo de Planillas de Excelencia
                    SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= True;

                    //Habilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
                    MenuOpcionEliminarPlanillaDeExcelencia.Enabled:= True;

                    //Habilito el botón de 'Resúmenes' en la pestaña de Planillas de Excelencia
                    btnResumenesRegistroHospitalesDeExcelencia.Enabled:= True;

                    //Habilito el SpeedButton de 'Resúmenes' en la pestaña de Planillas de Excelencia


                    //Habilito la opción de 'Resúmenes' en el Menú Principal del Módulo de Planillas de Excelencia


                    //Habilito el botón de 'Previsualizar Reporte' en la pestaña de Planillas de Excelencia
                    btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= True;

                    //Habilito el botón de 'Exportar Reporte a PDF' en la pestaña de Planillas de Excelencia
                    btnExportarPDFPlanillaDeExcelencia.Enabled:= True;



                    //Habilito el SpeedButton de 'Generar Reporte' en la pestaña de Planillas de Excelencia


                    //Habilito la opción de 'Generar Reporte' en el Menú Principal del Módulo de Planillas de Excelencia
                    SpeedButtonGenerarReporteHospitalesDeExcelencia.Enabled:= True;
                  end
                    else
                      begin
                        //Habilito el botón de 'Nuevo' en la pestaña de Planillas de Excelencia
                        btnNuevoRegistroHospitalesDeExcelencia.Enabled:= True;

                        //Habilito el SpeedButton de 'Nuevo' en la pestaña de Planillas de Excelencia
                        SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

                        //Habilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
                        MenuOpcionAgregarPlanillaDeExcelencia.Enabled:= True;

                        //Deshabilito el botón de 'Modificar' en la pestaña de Planillas de Excelencia
                        btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;

                        //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Planillas de Excelencia
                        SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

                        //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
                        MenuOpcionModificarPlanillaDeExcelencia.Enabled:= False;

                        //Deshabilito el botón de 'Eliminar' en la pestaña de Planillas de Excelencia
                        btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;

                        //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Planillas de Excelencia
                        SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

                        //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
                        MenuOpcionEliminarPlanillaDeExcelencia.Enabled:= False;

                        //Deshabilito el botón de 'Resúmenes' en la pestaña de Planillas de Excelencia
                        btnResumenesRegistroHospitalesDeExcelencia.Enabled:= False;

                        //Deshabilito el SpeedButton de 'Resúmenes' en la pestaña de Planillas de Excelencia


                        //Deshabilito la opción de 'Resúmenes' en el Menú Principal del Módulo de Planillas de Excelencia


                        //Deshabilito el botón de 'Previsualizar Reporte' en la pestaña de Planillas de Excelencia
                        btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;

                        //Deshabilito el botón de 'Exportar Reporte a PDF' en la pestaña de Planillas de Excelencia
                        btnExportarPDFPlanillaDeExcelencia.Enabled:= False;

                        //Deshabilito el SpeedButton de 'Generar Reporte' en la pestaña de Planillas de Excelencia


                        //Deshabilito la opción de 'Generar Reporte' en el Menú Principal del Módulo de Planillas de Excelencia

                      end;
            end//Fin de verificación de Hospital de Excelencia ya seleccionado

              else

                begin//No se ha seleccionado Hospital de Excelencia alguno
                  //Deshabilito el botón de 'Nuevo' en la pestaña de Planillas de Excelencia
                  btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Nuevo' en la pestaña de Planillas de Excelencia
                  SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionAgregarPlanillaDeExcelencia.Enabled:= False;

                  //Deshabilito el botón de 'Modificar' en la pestaña de Planillas de Excelencia
                  btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Planillas de Excelencia
                  SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionModificarPlanillaDeExcelencia.Enabled:= False;

                  //Deshabilito el botón de 'Eliminar' en la pestaña de Planillas de Excelencia
                  btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Planillas de Excelencia
                  SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionEliminarPlanillaDeExcelencia.Enabled:= False;

                  //Deshabilito el botón de 'Resúmenes' en la pestaña de Planillas de Excelencia
                  btnResumenesRegistroHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Resúmenes' en la pestaña de Planillas de Excelencia


                  //Deshabilito la opción de 'Resúmenes' en el Menú Principal del Módulo de Planillas de Excelencia


                  //Deshabilito el botón de 'Previsualizar Reporte' en la pestaña de Planillas de Excelencia
                  btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito el botón de 'Exportar Reporte a PDF' en la pestaña de Planillas de Excelencia
                  btnExportarPDFPlanillaDeExcelencia.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Generar Reporte' en la pestaña de Planillas de Excelencia


                  //Deshabilito la opción de 'Generar Reporte' en el Menú Principal del Módulo de Planillas de Excelencia

                end;
      end//Fin de verificación de conexión
        else
          begin
            //Deshabilito el botón de 'Nuevo' en la pestaña de Planillas de Excelencia
            btnNuevoRegistroHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito el SpeedButton de 'Nuevo' en la pestaña de Planillas de Excelencia
            SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionAgregarPlanillaDeExcelencia.Enabled:= False;

            //Deshabilito el botón de 'Modificar' en la pestaña de Planillas de Excelencia
            btnModificarRegistroHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Planillas de Excelencia
            SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionModificarPlanillaDeExcelencia.Enabled:= False;

            //Deshabilito el botón de 'Eliminar' en la pestaña de Planillas de Excelencia
            btnEliminarRegistroHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Planillas de Excelencia
            SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionEliminarPlanillaDeExcelencia.Enabled:= False;

            //Deshabilito el botón de 'Resúmenes' en la pestaña de Planillas de Excelencia
            btnResumenesRegistroHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito el SpeedButton de 'Resúmenes' en la pestaña de Planillas de Excelencia


            //Deshabilito la opción de 'Resúmenes' en el Menú Principal del Módulo de Planillas de Excelencia


            //Deshabilito el botón de 'Previsualizar Reporte' en la pestaña de Planillas de Excelencia
            btnGenerarReporteRegistroHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito el botón de 'Exportar Reporte a PDF' en la pestaña de Planillas de Excelencia
            btnExportarPDFPlanillaDeExcelencia.Enabled:= False;

            //Deshabilito el SpeedButton de 'Generar Reporte' en la pestaña de Planillas de Excelencia


            //Deshabilito la opción de 'Generar Reporte' en el Menú Principal del Módulo de Planillas de Excelencia

          end;
end;


procedure TfrmPrincipal.ValidarComponentesHospitalesDeExcelenciaYCapacitadores;

begin
  //Oculto el SpeedButton de Generar Reporte del Módulo de Planillas de Excelencia
  SpeedButtonGenerarReporteHospitalesDeExcelencia.Visible:= False;

  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Verifico si hay al menos un Hospital de Excelencia para mostrar u ocultar algunos componentes
        if (DptoCapacitacion.CantidadDeHospitalesTotales <> 0)
          then
            begin
              //Habilito el botón de 'Nuevo' en la pestaña de Hospitales de Excelencia y Capacitadores
              btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Habilito el SpeedButton de 'Nuevo' en la pestaña de Hospitales de Excelencia y Capacitadores
              SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

              //Habilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
              MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Habilito el botón de 'Modificar' en la pestaña de Hospitales de Excelencia y Capacitadores
              btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Habilito el SpeedButton de 'Modificar' en la pestaña de Hospitales de Excelencia y Capacitadores
              SpeedButtonModificarHospitalesDeExcelencia.Enabled:= True;

              //Habilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
              MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Habilito el botón de 'Eliminar' en la pestaña de Hospitales de Excelencia y Capacitadores
              btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;

              //Habilito el SpeedButton de 'Eliminar' en el Módulo de Planillas de Excelencia
              SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= True;

              //Habilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
              MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Enabled:= True;
            end
              else
                begin
                  //Habilito el botón de 'Nuevo' en la pestaña de Hospitales de Excelencia y Capacitadores
                  btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= True;

                  //Habilito el SpeedButton de 'Nuevo' en la pestaña de Hospitales de Excelencia y Capacitadores
                  SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

                  //Habilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Enabled:= True;

                  //Deshabilito el botón de 'Modificar' en la pestaña de Hospitales de Excelencia y Capacitadores
                  btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Hospitales de Excelencia y Capacitadores
                  SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Enabled:= False;

                  //Deshabilito el botón de 'Eliminar' en la pestaña de Hospitales de Excelencia y Capacitadores
                  btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Hospitales de Excelencia y Capacitadores
                  SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Enabled:= False;
                end;
      end//Fin de verificación de conexión
        else
          begin
            //Deshabilito el botón de 'Nuevo' en la pestaña de Hospitales de Excelencia y Capacitadores
            btnNuevoHospitalDeExcelenciaYCapacitador.Enabled:= False;

            //Deshabilito el SpeedButton de 'Nuevo' en la pestaña de Hospitales de Excelencia y Capacitadores
            SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionAgregarHospitalDeExcelenciaYCapacitador.Enabled:= False;

            //Deshabilito el botón de 'Modificar' en la pestaña de Hospitales de Excelencia y Capacitadores
            btnModificarHospitalDeExcelenciaYCapacitador.Enabled:= False;

            //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Hospitales de Excelencia y Capacitadores
            SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionModificarHospitalDeExcelenciaYCapacitador.Enabled:= False;

            //Deshabilito el botón de 'Eliminar' en la pestaña de Hospitales de Excelencia y Capacitadores
            btnEliminarHospitalDeExcelenciaYCapacitador.Enabled:= False;

            //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Hospitales de Excelencia y Capacitadores
            SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionEliminarHospitalDeExcelenciaYCapacitador.Enabled:= False;
          end;
end;


procedure TfrmPrincipal.ValidarComponentesTiposDeCursos;
begin
  //Oculto el SpeedButton de Generar Reporte del Módulo de Planillas de Excelencia
  SpeedButtonGenerarReporteHospitalesDeExcelencia.Visible:= False;

  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        //Verifico si hay al menos un Tipo de Curso para mostrar u ocultar algunos componentes
        if (DptoCapacitacion.CantidadDeTiposDeCursos <> 0)
          then
            begin
              //Habilito el botón de 'Nuevo' en la pestaña de Administración de Tipos de Cursos
              btnNuevoTipoDeCurso.Enabled:= True;

              //Habilito el SpeedButton de 'Nuevo' en la pestaña de Administración de Tipos de Cursos
              SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

              //Habilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
              MenuOpcionAgregarTipoDeCurso.Enabled:= True;

              //Habilito el botón de 'Modificar' en la pestaña de Administración de Tipos de Cursos
              btnModificarTipoDeCurso.Enabled:= True;

              //Habilito el SpeedButton de 'Modificar' en la pestaña de Administración de Tipos de Cursos
              SpeedButtonModificarHospitalesDeExcelencia.Enabled:= True;

              //Habilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
              MenuOpcionModificarTipoDeCurso.Enabled:= True;

              //Habilito el botón de 'Eliminar' en la pestaña de Administración de Tipos de Cursos
              btnEliminarTipoDeCurso.Enabled:= True;

              //Habilito el SpeedButton de 'Eliminar' en el Módulo de Planillas de Excelencia
              SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= True;

              //Habilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
              MenuOpcionEliminarTipoDeCurso.Enabled:= True;
            end
              else
                begin
                  //Habilito el botón de 'Nuevo' en la pestaña de Administración de Tipos de Cursos
                  btnNuevoTipoDeCurso.Enabled:= True;

                  //Habilito el SpeedButton de 'Nuevo' en la pestaña de Administración de Tipos de Cursos
                  SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= True;

                  //Habilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionAgregarTipoDeCurso.Enabled:= True;

                  //Deshabilito el botón de 'Modificar' en la pestaña de Administración de Tipos de Cursos
                  btnModificarTipoDeCurso.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Administración de Tipos de Cursos
                  SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionModificarTipoDeCurso.Enabled:= False;

                  //Deshabilito el botón de 'Eliminar' en la pestaña de Administración de Tipos de Cursos
                  btnEliminarTipoDeCurso.Enabled:= False;

                  //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Administración de Tipos de Cursos
                  SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

                  //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
                  MenuOpcionEliminarTipoDeCurso.Enabled:= False;
                end;
      end//Fin de verificación de conexión
        else
          begin
            //Deshabilito el botón de 'Nuevo' en la pestaña de Administración de Tipos de Cursos
            btnNuevoTipoDeCurso.Enabled:= False;

            //Deshabilito el SpeedButton de 'Nuevo' en la pestaña de Administración de Tipos de Cursos
            SpeedButtonNuevaHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Nuevo' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionAgregarTipoDeCurso.Enabled:= False;

            //Deshabilito el botón de 'Modificar' en la pestaña de Administración de Tipos de Cursos
            btnModificarTipoDeCurso.Enabled:= False;

            //Deshabilito el SpeedButton de 'Modificar' en la pestaña de Administración de Tipos de Cursos
            SpeedButtonModificarHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Modificar' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionModificarTipoDeCurso.Enabled:= False;

            //Deshabilito el botón de 'Eliminar' en la pestaña de Administración de Tipos de Cursos
            btnEliminarTipoDeCurso.Enabled:= False;

            //Deshabilito el SpeedButton de 'Eliminar' en la pestaña de Administración de Tipos de Cursos
            SpeedButtonEliminarHospitalesDeExcelencia.Enabled:= False;

            //Deshabilito la opción de 'Eliminar' en el Menú Principal del Módulo de Planillas de Excelencia
            MenuOpcionEliminarTipoDeCurso.Enabled:= False;
          end;
end;

procedure TfrmPrincipal.SpeedButtonNuevaHospitalesDeExcelenciaClick(Sender: TObject);
begin
  //Verifico de nuevo que exista conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        if (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)
          then
            begin
              //Agrego una Planilla de Excelencia
              btnNuevoRegistroHospitalesDeExcelencia.Click;
            end
              else
                begin
                  if (PageControlHospitalesDeExcelencia.ActivePageIndex= 1)
                    then
                      begin
                        //Agrego un Hospital de Excelencia y su Capacitador
                        btnNuevoHospitalDeExcelenciaYCapacitador.Click;
                      end
                        else
                          begin
                            if (PageControlHospitalesDeExcelencia.ActivePageIndex= 2)
                              then
                                begin
                                  //Agrego un Tipo de Curso
                                 btnNuevoTipoDeCurso.Click;
                                end;
                          end;
                end;
      end;//Fin de verificación de conexión
end;

procedure TfrmPrincipal.SpeedButtonModificarHospitalesDeExcelenciaClick(Sender: TObject);
begin
  //Verifico de nuevo que exista conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        if (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)
          then
            begin
              //Modifico una Planilla de Excelencia
              btnModificarRegistroHospitalesDeExcelencia.Click;
            end
              else
                begin
                  if (PageControlHospitalesDeExcelencia.ActivePageIndex= 1)
                    then
                      begin
                        //Modifico un Hospital de Excelencia y su Capacitador
                        btnModificarHospitalDeExcelenciaYCapacitador.Click;
                      end
                        else
                          begin
                            if (PageControlHospitalesDeExcelencia.ActivePageIndex= 2)
                              then
                                begin
                                  //Modifico un Tipo de Curso
                                  btnModificarTipoDeCurso.Click;
                                end;
                          end;
                end;
      end;//Fin de verificación de conexión
end;

procedure TfrmPrincipal.SpeedButtonEliminarHospitalesDeExcelenciaClick(Sender: TObject);
begin
  //Verifico de nuevo que exista conexión con la BD
  if (DptoCapacitacion.ExisteConexionConLaBD = True)
    then
      begin
        if (PageControlHospitalesDeExcelencia.ActivePageIndex= 0)
          then
            begin
              //Elimino una Planilla de Excelencia
              btnEliminarRegistroHospitalesDeExcelencia.Click;
            end
              else
                begin
                  if (PageControlHospitalesDeExcelencia.ActivePageIndex= 1)
                    then
                      begin
                        //Elimino un Hospital de Excelencia y su Capacitador
                        btnEliminarHospitalDeExcelenciaYCapacitador.Click;
                      end
                        else
                          begin
                            if (PageControlHospitalesDeExcelencia.ActivePageIndex= 2)
                              then
                                begin
                                  //Elimino un Tipo de Curso
                                  btnEliminarTipoDeCurso.Click;
                                end;
                          end;
                end;
      end;//Fin de verificación de conexión
end;



procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  {Shut down WinSock}
  WSACleanup;
end;

procedure TfrmPrincipal.DBGridTrazasDelSistemaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Fecha').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridTrazasDelSistema.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridTrazasDelSistema.Canvas.Brush.Color := clWhite;
              end;
    //Esta línea es nueva
    DBGridTrazasDelSistema.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TfrmPrincipal.DBGridTrazasDelSistemaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
var 
  Grid         : TStringGrid;
  Texto   : String;
  Rectangulo   : TRect;
begin 
  Rectangulo:=Rect;
  Grid := TStringGrid(Sender);
  
  if Field.IsBlob
    then
      begin
        Grid.Canvas.FillRect(Rect);
        Texto := Field.AsString;
        DrawText( Grid.Canvas.Handle,
                  PChar(Texto),
                  StrLen(PChar(Texto)),
                  Rectangulo,
                  DT_WORDBREAK);
      end;

    //Esta línea es nueva
    DBGridTrazasDelSistema.DefaultDrawDataCell(Rectangulo, Field, State);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (DptoCapacitacion.ExisteConexionConLaBD)
    then
      begin
        //Inserto la Traza
        DptoCapacitacion.GuardarTrazaDelSistema('Salió del sistema HC-CAP 2008.');

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;

        //Desloggeo al usuario
        DptoCapacitacion.DesloggearAlUsuario;
      end;
end;

procedure TfrmPrincipal.btnDetallesDeTrazaClick(Sender: TObject);
begin
  //Muestro la forma de detalles de la Traza seleccionada
  frmDetallesDeTrazasDelSistema.Position:= poScreenCenter;
  frmDetallesDeTrazasDelSistema.ShowModal;
end;

procedure TfrmPrincipal.TabSheetPuestosDeTrabajoShow(Sender: TObject);
begin
  PestannaActiva:= 'PuestosDeTrabajo';

  //Valido los componentes de la pestaña
  ValidarComponentesPuestosDeTrabajo;
end;

procedure TfrmPrincipal.TabSheetTrazasDelSistemaShow(Sender: TObject);
begin
  PestannaActiva:= 'TrazasDelSistema';

  //Valido los componentes de la pestaña
  ValidarComponentesTrazasDelSistema;
end;

procedure TfrmPrincipal.MenuOpcionVerDetallesClick(Sender: TObject);
begin
  //
  btnDetallesDeTraza.Click;
end;

procedure TfrmPrincipal.SpeedButtonAcercaDeHCCAPClick(
  Sender: TObject);
begin
  //Muestro la "propaganda" del programa
  frmAcercaDe.Position:= poDesktopCenter;
  frmAcercaDe.ShowModal;
end;

procedure TfrmPrincipal.N1Camaguey1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 0;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N2Ciegodevila1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 1;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N3Cienfuegos1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 2;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N4CiudaddelaHabana1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 3;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N5Granma1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 4;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N6Guantnamo1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 5;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N7Holgun1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 6;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N8IsladelaJuventud1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 7;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N9LaHabana2Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 8;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N10LasTunas2Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 9;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N11Matanzas1Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 10;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N12Pinardelrio2Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 11;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N13SanctiSpritus2Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 12;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N14SantiagodeCuba2Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 13;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.N15VillaClara2Click(Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:= 2;
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 14;
  ComboBoxProvinciasHospitalesDeExcelenciaChange(Sender);
end;

procedure TfrmPrincipal.btnContactarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
begin
  //Muestro la forma de Contacto Masivo
  frmContactoMasivo.Position:= poDesktopCenter;
  frmContactoMasivo.ShowModal;
end;

procedure TfrmPrincipal.SpeedButtonDetallesDeTrazaClick(Sender: TObject);
begin
  if (PestannaActiva= 'TrazasDelSistema')
    then btnDetallesDeTraza.Click;
end;

procedure TfrmPrincipal.RvSystemPlanillasProvincialesPrint(Sender: TObject);
var
  Bitmap : TBitmap;
  i: Integer;
begin
  with Sender as TBaseReport do
  begin
    Bold := True;
    GotoXY(31.7, 25.4);
    //Creamos un objeto BitMap (mapa de bits, o BMP)
    Bitmap := TBitmap.Create;

    //Cargamos la imagen del Logo del CENAPET de esta forma, para que permita exportar a PDF sin alterar el directorio
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'images\LogoCENAPET.bmp');

    //Imprimirla en el centro
    //PrintBitmap(96, 25.4, 0.85, 0.85, Bitmap);

    //Imprimirla a la izquierda
    PrintBitmap(31.7, 25.4, 0.85, 0.85, Bitmap);

    Bitmap.Free;
    //NewLine;

    ClearTabs;
    Bold := True;
    SetTab(92, pjLeft, 100, 0, 0, 0);
    NewLine;
    
    Bold := True;
    SetFont('Arial', 8);
    PrintTab('Calle 100 entre Perla y E, Altahabana');
    NewLine;
    PrintTab('Municipio Boyeros, La Habana, Cuba  C.P. 10 800');
    NewLine;
    PrintTab('Teléfonos 643-8782  y  643-8783   643-7489 (Dirección)');
    NewLine;
    PrintTab('Fax (537)333511  E. Mail: zaida@cenapet.sld.cu');
    NewLine;
    NewLine;

    SetFont('Arial', 11);
    Bold := True;
    PrintCenter('Centro Nacional de Perfeccionamiento Técnico y Profesional de la Salud', 105.95);
    NewLine;
    PrintCenter('"Dr. Fermín Valdés Domínguez"', 105.95);
    NewLine;
    ClearTabs;


    //Cargamos la imagen de la barrita
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'images\barrita.bmp');
    //Imprimirla
    //PrintBitmap(31.7, 48, 0.80, 0.80, Bitmap);    //Salía demasiado pegada a las letras
    //PrintBitmap(31.7, 50.5, 0.80, 0.80, Bitmap);    //De nuevo salía demasiado pegada a las letras
    PrintBitmap(31.7, 53, 0.80, 0.80, Bitmap);
    Bitmap.Free;

    //Configurando los titulares de la 1ra página
    SetFont('Arial', 14);
    Bold:= True;

    GotoXY(31.7, 70);
    PrintCenter('Información  sobre la capacitación y el  perfeccionamiento de', 105.95);
    NewLine;
    PrintCenter('los recursos humanos del sistema nacional de salud.', 105.95);
    NewLine;
    NewLine;

    //Ponemos el título identificador del reporte
    Bold:= True;
    PrintLeft('Provincia: ' + TempPlanilla.Provincia, 31.7);
    PrintRight('Año: ' + IntToStr(DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value), 180.2);
    SetFont('Arial', 12);
    NewLine;
    NewLine;

    //Comenzamos con los acápites de información (margen normal)
    Underline:= False;
    Bold:= True;
    PrintLeft('I.	Información de carácter general. ', 31.7);
    NewLine;
    NewLine;

    //Zona de viñetas de parte I

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('1.1 - Total de entidades del organismo: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.TotalEntOrg), 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.2 - De ellas con Plan Anual de Capacitación: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.EntOrgConPlanAnualCap), 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.3 - Total de trabajadores del organismo: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.TotalTrabOrg), 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.4 - Total de Graduados en acciones de capacitación: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.TotalGradAccCap), 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.5 - Relación de graduados en acciones de capacitación / Total de ', 38);
    NewLine;
    PrintLeft('trabajadores del organismo: ', 48.5); //Se le suma la sangría que es de 14 mm
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtRelacionGradXTotalCMG.Field.Text, 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= True;
    PrintLeft('II. Resultados de la capacitación y desarrollo de los recursos humanos en el', 31.7);
    NewLine;
    PrintLeft('organismo.', 37);
    Bold:= False;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.1 - Del total de graduados en acciones de capacitación:', 38);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.1.1 - Cuántos se graduaron internamente en las Empresas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnEmpInternas), 62);
    NewLine;
    NewLine;
    
    Underline:= False;
    Bold:= False;
    PrintLeft('2.1.2 - Cuántos se graduaron en instituciones Externas (Escuelas ramales,', 48.5);
    NewLine;
    PrintLeft('del organismo o de otros organismos, centros del MES o MINED)', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnInstExternas), 62);
    NewLine;
    NewLine;

    // ------ Aquí cambio hacia la segunda página --------
    NewPage;



    //----------------------------------------------------
    //                    Página 2
    //----------------------------------------------------

    //Configurando la 2da página
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('2.2 - Graduados por categoría ocupacional: ', 38);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.1 - Directivos: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.Directivos), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.2 - Técnicos: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.Tecnicos), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.3 - Administrativos: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.Administrativos), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.4 - Trabajadores de servicios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.TrabServicios), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.5 - Operarios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.Operarios), 62);
    NewLine;
    NewLine;
    NewLine;
    
    Underline:= False;
    Bold:= False;
    PrintLeft('2.3 - Graduados por Modos de Formación / Tipos de Curso:', 38);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.1 - En cursos Habilitación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurHab), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.2 - En cursos de Perfeccionamiento o Promoción: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurPerfec), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.3 - En Adiestramiento Laboral: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnAdiestLab), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.4 - En Entrenamiento en el puesto de trabajo: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnEntPTrab), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.5 - En cursos de Postgrados: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurPostGrado), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.6 - En Diplomados: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnDiplomados), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.7 - En Maestrías: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnMaestrias), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.8 - En Doctorados: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnDoctorados), 62);
    NewLine;
    NewLine;


    // ------ Aquí cambio hacia la tercera página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 3
    //----------------------------------------------------
    //Configurando la 3ra página
    Bold:= True;
    GotoXY(31.7, 25.4);    


    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.9 - En cursos de Formación completa del MINED: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurFormCompMINED), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.10 - En cursos de Formación completa del MES: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurFormCompMES), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.11 - En cursos de idioma extranjero: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurIdiomaExt), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.12 - En cursos de Computación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnCurComp), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.13 - En Entrenamiento en el extranjero: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnEntrenEnExt), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.14 - En otras acciones (Seminarios, conferencias, talleres, etc.): ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.GradEnOtrasAcc), 65);
    NewLine;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= True;
    PrintLeft('III. Utilización de los instructores en la capacitación (resolución 29/06, ', 31.7);
    NewLine;
    PrintLeft('artículo 31).', 38);
    Bold:= False;
    NewLine;
    NewLine;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('3.1 - Total: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.InstTotalUtilEnCapac), 48.5);
    NewLine;
    NewLine;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('3.2 - De ellos Eventuales: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.InstEventUtilEnCapac), 48.5);
    NewLine;
    NewLine;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('3.3 - De ellos Permanentes: ', 38);
    NewLine;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('(No son de centros de Capacitación ni de escuelas ramales).', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.InstPermUtilEnCapac), 48.5);
    NewLine;
    NewLine;
    

    // ------ Aquí cambio hacia la cuarta página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 4
    //----------------------------------------------------
    //Configurando la 4ta página
    Bold:= True;
    GotoXY(31.7, 25.4);


        
    Underline:= False;
    Bold:= True;
    PrintLeft('IV. Información sobre la capacitación y desarrollo de los recursos humanos ', 31.7);
    NewLine;
    PrintLeft('en las escuelas ramales.', 38);
    Bold:= False;
    NewLine;
    NewLine;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('4.1 - Información que se solicita sobre el trabajo de las Escuelas Ramales. ', 38);
    NewLine;
    NewLine;

    //Se omite puese esta palabra forma parte de una planilla genérica, pero como esto es solo para salud,... se quita.
    //Bold:= True;
    //PrintLeft('Organismo: ', 31.7);
    //NewLine;

    ClearTabs;
    SetTab(31.7, pjLeft, 31.7, 0, 0, 0);
    SetTab(42, pjLeft, 100, 0, 0, 0);
    SetTab(105, pjCenter, 85.75, 0, 0, 0);
    SetTab(115, pjCenter, 110.25, 0, 0, 0);
    NewLine;

    Bold := True;
    PrintTab('No');
    PrintTab('Tipo de acciones de Capacitación impartidas.');
    PrintTab('Matrícula');
    PrintTab('Graduados.');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab('Maestrías.');
    PrintTab(IntToStr(TempPlanilla.MaestriasXMatric));
    PrintTab(IntToStr(TempPlanilla.MaestriasXGrad));
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('Diplomados.');
    PrintTab(IntToStr(TempPlanilla.DiplomadosXMatric));
    PrintTab(IntToStr(TempPlanilla.DiplomadosXGrad));
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('Cursos de Postgrados.');
    PrintTab(IntToStr(TempPlanilla.CurPostgradosXMatric));
    PrintTab(IntToStr(TempPlanilla.CurPostgradosXGrad));
    NewLine;

    Bold := False;
    PrintTab('4');
    PrintTab('Cursos de Idiomas.');
    PrintTab(IntToStr(TempPlanilla.CurIdiomasXMatric));
    PrintTab(IntToStr(TempPlanilla.CurIdiomasXGrad));
    NewLine;

    Bold := False;
    PrintTab('5');
    PrintTab('Cursos de Computación.');
    PrintTab(IntToStr(TempPlanilla.CurCompXMatric));
    PrintTab(IntToStr(TempPlanilla.CurCompXGrad));
    NewLine;

    Bold := False;
    PrintTab('6');
    PrintTab('Habilitación.');
    PrintTab(IntToStr(TempPlanilla.HabilitacionXMatric));
    PrintTab(IntToStr(TempPlanilla.HabilitacionXGrad));
    NewLine;

    Bold := False;
    PrintTab('7');
    PrintTab('Perfeccionamiento.');
    PrintTab(IntToStr(TempPlanilla.PerfecXMatric));
    PrintTab(IntToStr(TempPlanilla.PerfecXGrad));
    NewLine;

    Bold := False;
    PrintTab('8');
    PrintTab('Talleres, Seminarios y Conferencias.');
    PrintTab(IntToStr(TempPlanilla.TallSemConfXMatric));
    PrintTab(IntToStr(TempPlanilla.TallSemConfXGrad));
    NewLine;

    Bold := False;
    PrintTab(' ');
    Bold := True;
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalXMatric));
    PrintTab(IntToStr(TempPlanilla.TotalXGrad));
    NewLine;
    NewLine;
    NewLine;
    
    ClearTabs;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('4.2 - Valoración del trabajo desarrollado por las Escuelas Ramales: ', 38);
    NewLine;
    NewLine;

    //Debo justificar una valoración
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaReportes.Clear;

    //Paso la info del DBMemo al Memo de muela de reportes
    MemoMuelaReportes.Text:= DBMemoValTrabDesPorEscRamalesCMG.Text;

    for i:=0 to MemoMuelaReportes.Lines.Count do
      begin
        PrintJustify(MemoMuelaReportes.Lines[i], 1.27, pjBlock, 0, 3.0);
        NewLine;
        if YPos>SectionBottom then NewPage;
      end;

      
    // ------ Aquí cambio hacia la quinta página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 5
    //----------------------------------------------------
    //Configurando la 5ta página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= True;
    PrintLeft('V.	Información sobre el personal declarado no idóneo en el', 31.7);
    NewLine;
    PrintLeft('proceso de la resolución 28/06.', 36);
    Bold:= False;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.1 - Total de trabajadores no idóneos al cierre de diciembre: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.TotalTrabNoIdoneos), 48.5);
    NewLine;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2 - De ellos: ', 38);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.1 - Por no tener calificación formal: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoIdoneosSinCalificFormal), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.2 - Por no realizar el trabajo con eficiencia, calidad y productividad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoIdoneosSinEficiencia), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.3 - Por no cumplir las normas de conducta exigidas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoIdoneosSinBConducta), 62);
    NewLine;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.3 - Del total de los declarados no idóneos por no tener el nivel de calificación formal', 38);
    NewLine;
    PrintLeft('exigido para el cargo que ocupan.', 48.5);
    NewLine;

    ClearTabs;
    SetTab(31.7, pjLeft, 50, 0, 0, 0);
    SetTab(44, pjLeft, 40, 0, 0, 0);
    SetTab(82, pjCenter, 40, 0, 0, 0);
    SetTab(116, pjCenter, 40, 0, 0, 0);
    SetTab(150, pjCenter, 40, 0, 0, 0);
        
    NewLine;
{
    Bold := True;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('Total de');
    PrintTab(' ');
    PrintTab(' ');
    NewLine;

    Bold := True;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('trabajadores');
    PrintTab(' ');
    PrintTab(' ');
    NewLine;
}
    Bold := True;
    PrintTab('No');
    PrintTab('Nivel a alcanzar');
    PrintTab('Total No Idóneos');
    PrintTab('Matriculados');
    PrintTab('No Matriculados');
    NewLine;
{
    Bold := True;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('Idóneos');
    PrintTab(' ');
    PrintTab(' ');
    NewLine;            
}
    Bold := False;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('I');
    PrintTab('II');
    PrintTab('III');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab('6to Grado');
    PrintTab(IntToStr(TempPlanilla.Grado6XTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.Grado6XMatric));
    PrintTab(IntToStr(TempPlanilla.Grado6XNoMatric));
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('9no Grado');
    PrintTab(IntToStr(TempPlanilla.Grado9XTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.Grado9XMatric));
    PrintTab(IntToStr(TempPlanilla.Grado9XNoMatric));
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('12 Grado');
    PrintTab(IntToStr(TempPlanilla.Grado12XTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.Grado12XMatric));
    PrintTab(IntToStr(TempPlanilla.Grado12XNoMatric));
    NewLine;

    Bold := False;
    PrintTab('4');
    PrintTab('Técnico Medio');
    PrintTab(IntToStr(TempPlanilla.TecMedioXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.TecMedioXMatric));
    PrintTab(IntToStr(TempPlanilla.TecMedioXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('5');
    PrintTab('Nivel Superior');
    PrintTab(IntToStr(TempPlanilla.NivSupXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.NivSupXMatric));
    PrintTab(IntToStr(TempPlanilla.NivSupXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('6');
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalNivelXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.TotalNivelXMatric));
    PrintTab(IntToStr(TempPlanilla.TotalNivelXNoMatric));
    NewLine;
    NewLine;
    NewLine;
    
    ClearTabs;


    Underline:= False;
    Bold:= False;
    PrintLeft('5.4 - En el caso de los trabajadores declarados no idóneos por no tener la calificación', 38);
    NewLine;
    PrintLeft('formal exigida para el cago, y que no están matriculados, precisar las causas y las', 48.5);
    NewLine;
    PrintLeft('cifras, según las siguientes situaciones:', 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.1 - Trabajadores próximos a la edad de jubilación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabProxEdadJub), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.2 - Trabajadores con  problemas de salud en el momento de concretar las', 48.5);
    NewLine;
    PrintLeft('matrículas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabProblemasSalud), 62);
    NewLine;
    NewLine;

    // ------ Aquí cambio hacia la sexta página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 6
    //----------------------------------------------------
    //Configurando la 6ta página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.3 - Licencias por enfermedad y de maternidad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalLicEnfermedadYMaternidad), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.4 - Trabajadores con problemas familiares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabProblemasFamiliares), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.5 - No disponibilidad de matrícula por el MINED de las especialidades', 48.5);
    NewLine;
    PrintLeft('requeridas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMINED), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.6 - No disponibilidad de matrícula por el MES (SUM) de las especialidades', 48.5);
    NewLine;
    PrintLeft('requeridas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMES), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.7 - Limitaciones de matrículas para el nivel superior, debido a que existen', 48.5);
    NewLine;
    PrintLeft('organismos que no están priorizados en las Sedes Universitarias', 62);
    NewLine;
    PrintLeft('Municipales (SUM): ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalLimMatricNivSup), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.8 - Imposibilidad de las entidades para abrir aulas propias por limitaciones', 48.5);
    NewLine;
    PrintLeft('materiales y de personal docente: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalImposibEntidAbrirAulas), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.9 - Trabajadores que no han logrado acreditar aún el nivel de calificación', 48.5);
    NewLine;
    PrintLeft('formal que poseen: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabNoAcredit), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.10 - Trabajadores que laboran en turnos rotativos o jornadas irregulares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabTurnosRotativos), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.11 - Trabajadores que se niegan a incorporarse al estudio a pesar de', 48.5);
    NewLine;
    PrintLeft('haber firmado el acta de compromiso: ', 65);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabNieganIncorp), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.12 - Movilizados en la construcción de viviendas por medios propios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalMovilConstruc), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.13 - Otras causas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalOtrasCausas), 65);
    NewLine;
    NewLine;
    NewLine;


    // ------ Aquí cambio hacia la séptima página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 7
    //----------------------------------------------------
    //Configurando la 7ma página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('5.5 - Explicar de los no matriculados para alcanzar el requisito de calificación formal', 38);
    NewLine;
    PrintLeft('requerido los cargos con cifras más significativas así como aquellos donde se', 48.5);
    NewLine;
    PrintLeft('considera que no existe correspondencia entre el nivel de calificación formal', 48.5);
    NewLine;
    PrintLeft('exigido y las funciones que se realizan en el cargo y que producto de ello son declarados', 48.5);
    NewLine;
    PrintLeft('No Idóneos.', 48.5);        
    NewLine;
    NewLine;    

    //Debo justificar una explicación
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaReportes.Clear;

    //Paso la info del DBMemo al Memo de muela de reportes
    MemoMuelaReportes.Text:= DBMemoExplicNoMatric.Text;

    for i:=0 to MemoMuelaReportes.Lines.Count do
      begin
        PrintJustify(MemoMuelaReportes.Lines[i], 1.27, pjBlock, 0, 3.0);
        NewLine;
        if YPos>SectionBottom then NewPage;
      end;
    NewLine;


    Underline:= False;
    Bold:= False;
    PrintLeft('5.6 - De los declarados no idóneos por no realizar el trabajo con eficiencia, calidad', 38);
    NewLine;
    PrintLeft('y productividad para el cargo que ocupan: ', 48.5);
    NewLine;
    NewLine;

    Bold:= True;
    ClearTabs;
    SetTab(31.7, pjLeft, 50, 0, 0, 0);
    SetTab(44, pjLeft, 45, 0, 0, 0);
    SetTab(86, pjCenter, 40, 0, 0, 0);
    SetTab(118, pjCenter, 40, 0, 0, 0);
    SetTab(150, pjCenter, 40, 0, 0, 0);

    Bold := True;
    PrintTab(' ');
    PrintTab('Acciones a');
    PrintTab('Total de');
    PrintTab(' ');
    PrintTab('No');
    NewLine;

    Bold := True;
    PrintTab('No.');
    PrintTab('desarrollar');
    PrintTab('No Idóneos');
    PrintTab('Matriculados');
    PrintTab('Matriculados');
    NewLine;

    Bold := False;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('I');
    PrintTab('II');
    PrintTab('III');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab('Cursos de habilitación');
    PrintTab(IntToStr(TempPlanilla.CurHabilXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.CurHabilXMatric));
    PrintTab(IntToStr(TempPlanilla.CurHabilXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('Entrenamiento');
    PrintTab(IntToStr(TempPlanilla.EntrenamientoXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.EntrenamientoXMatric));
    PrintTab(IntToStr(TempPlanilla.EntrenamientoXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalNoIdoneosXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.TotalNoIdoneosXMatric));
    PrintTab(IntToStr(TempPlanilla.TotalNoIdoneosXNoMatric));
    NewLine;
    NewLine;
    NewLine;

    ClearTabs;



    Underline:= False;
    Bold:= False;
    PrintLeft('5.7 - En el caso de los trabajadores declarados no idóneos por no realizar el trabajo', 38);
    NewLine;
    PrintLeft('con eficiencia, calidad y productividad, y que no se encuentran matriculados para', 48.5);
    NewLine;
    PrintLeft('alcanzar el requisito, precisar las causas y las cifras según las siguientes', 48.5);
    NewLine;
    PrintLeft('situaciones:', 48.5);
    NewLine;
    NewLine;
    
    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.1 - Trabajadores próximos a la edad de jubilación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabProxEdadJub), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.2 - Trabajadores con  problemas de salud en el momento de concretar las', 48.5);
    NewLine;
    PrintLeft('matrículas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabProblemasSalud), 62);
    NewLine;
    NewLine;


    // ------ Aquí cambio hacia la octava página --------
    NewPage;

    //----------------------------------------------------
    //                    Página 8
    //----------------------------------------------------
    //Configurando la 8va página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.3 - Licencias por enfermedad y de maternidad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficLicEnfermedadYMaternidad), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.4 - Trabajadores con problemas familiares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabProblemasFamiliares), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.5 - Trabajadores que laboran en turnos rotativos o jornadas irregulares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabTurnosRotativos), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.6 - Trabajadores que se niegan a incorporarse al estudio a pesar de haber: ', 48.5);
    NewLine;
    PrintLeft('firmado el acta de compromiso: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabNieganIncorp), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.7 - Movilizados en la construcción de viviendas por medios propios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficMovilConstruc), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.8 - Otras causas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficOtrasCausas), 62);
    NewLine;
    NewLine;
    NewLine;


    Underline:= False;
    Bold:= False;
    PrintLeft('5.8 -	De los declarados no idóneos por no cumplir las normas de conducta y', 38);
    NewLine;
    PrintLeft('disciplina exigidas exigidos: ', 48.5);
    NewLine;
    NewLine;


    Bold:= True;
    ClearTabs;
    SetTab(40, pjLeft, 50, 0, 0, 0);
    SetTab(65, pjCenter, 45, 0, 0, 0);
    SetTab(140, pjCenter, 40, 0, 0, 0);

    Bold := True;
    PrintTab(' ');
    PrintTab('Pendiente de');
    PrintTab(' ');
    NewLine;

    Bold := True;
    PrintTab('No.');
    PrintTab('alcanzar el requisito');
    PrintTab('Causas');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab(IntToStr(TempPlanilla.Casilla1XPendiente));
    PrintTab(TempPlanilla.Casilla1XCausas);
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab(IntToStr(TempPlanilla.Casilla2XPendiente));
    PrintTab(TempPlanilla.Casilla2XCausas);
    NewLine;

    Bold := False;
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalXPendiente));
    PrintTab(TempPlanilla.TotalXCausas);
    NewLine;
    NewLine;
    NewLine;

    ClearTabs;

    

    // ------ Aquí cambio hacia la novena página --------
    NewPage;

    //----------------------------------------------------
    //                    Página 9
    //----------------------------------------------------
    //Configurando la 9na página
    Bold:= True;
    GotoXY(31.7, 25.4);

    Underline:= False;
    Bold:= True;
    PrintLeft('VI.	Valoración cualitativa del proceso de capacitación y desarrollo en el ', 31.7);
    NewLine;
    PrintLeft('organismo, entidades nacionales y consejos de la administración ', 38);
    NewLine;
    PrintLeft('provincial (logros, deficiencias y resultados relevantes).', 38);
    NewLine;
    NewLine;

    //Debo justificar una valoración
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaReportes.Clear;

    //Paso la info del DBMemo al Memo de muela de reportes
    MemoMuelaReportes.Text:= DBMemoValoracionCualitativaDelProcesoCapacCMG.Text;

    for i:=0 to MemoMuelaReportes.Lines.Count do
      begin
        PrintJustify(MemoMuelaReportes.Lines[i], 1.27, pjBlock, 0, 3.0);
        NewLine;
        if YPos>SectionBottom then NewPage;
      end;
      
    //Fin del reporte.
  end;
end;

procedure TfrmPrincipal.RvSystemPlanillasProvincialesBeforePrint(
  Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetPaperSize(1, 215.9, 279.4);
  end;
end;

procedure TfrmPrincipal.MenuOpcionVerResumenesProvincialesClick(
  Sender: TObject);
begin
  frmPrincipal.PageControlTodo.ActivePageIndex:=1;
  btnResumenesParte1PlanillasProvinciales.Click;
end;


procedure TfrmPrincipal.DeterminarResolucionInicial;
begin
  //Determino la resolución inicial de la pantalla
  AnchoOriginalPantalla:= GetSysTemMetrics(SM_CXSCREEN);   {Ancho}
  AltoOriginalPantalla:= GetSysTemMetrics(SM_CYSCREEN);   {Alto}
end;



function TfrmPrincipal.CambiarResolucion(XRes, YRes: DWord):integer;
var
  lpDevMode : TDeviceMode;
begin
//Cambio la resolución de la pantalla a los valores
  EnumDisplaySettings(nil, 0, lpDevMode);
  lpDevMode.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
  lpDevMode.dmPelsWidth:=XRes;
  lpDevMode.dmPelsHeight:=YRes;
  CambiarResolucion:=ChangeDisplaySettings(lpDevMode, 0);
end;



procedure TfrmPrincipal.btnExportarReportePlanillasProvincialesClick(Sender: TObject);
var
  anno: integer;
  provincia: AnsiString;
  begin
  //Lleno las variables con el año seleccionado en el primer DBGrid y la provincia seleccionada en el primer ComboBox
  anno:= DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value;
  provincia:= ComboBoxProvinciasParte1PlanillasProvinciales.Text;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008, Planillas Provinciales. Generando Reporte para la provincia ' + provincia + ', en el año ' + IntToStr(anno) + '.';
  
  //Oculto los botones de "Generar Reporte" de las Planillas Provinciales
  OcultarBotonesGenerarReportePlanillasProvinciales;

  //Oculto el SpeedButton de "Generar Reporte"
  SpeedButtonGenerarReportePlanilla.Visible:= False;

  //Oculto la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Visible:= False;


  //---------- *** Esta es la parte donde debo implementar la generación de Reportes *** ----------

  //Relleno la planilla temporal para el evento OnPrint del rvSystem
  RellenarPlanillaDBTemporalPlanillasProvinciales;

  //Esto se quedó vacío, no está implementado así que no hace nada
  //DptoCapacitacion.GenerarReportePlanillaProvincialPorAnnoYProvincia(TempPlanilla);


  //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

  //Especifico que el destino sea como fichero
  RvSystemPlanillasProvinciales.DefaultDest    := rdFile;

  //Especifico que la salida nativa sea falsa (¿?)
  RvSystemPlanillasProvinciales.DoNativeOutput := false;

  //Le quito a la especificación del rvSystem el que salga el cartelito de Setup
  RvSystemPlanillasProvinciales.SystemSetups   :=   RvSystemPlanillasProvinciales.SystemSetups - [ssAllowSetup];

  //Le paso el rvRender como objeto renderizador del rvSystem 
  RvSystemPlanillasProvinciales.RenderObject   := RvRenderPDFPlanillasProvinciales;

  //Epecifico las características del SaveDialog
  SaveDialogPlanillasProvinciales.Filter       := 'Acrobat Reader|*.PDF';
  SaveDialogPlanillasProvinciales.DefaultExt   := 'PDF';

  if SaveDialogPlanillasProvinciales.Execute then
    begin
      //Limpio el SaveDialog
      //SaveDialogPlanillasProvinciales.Free;

      //La salida del rvSystem será la del SaveDialog
      RvSystemPlanillasProvinciales.OutputFileName  := SaveDialogPlanillasProvinciales.FileName;

      //Ejecuto el rvSystem
      RvSystemPlanillasProvinciales.Execute;
    end;

//Algo que me sirvió para hacer lo anterior    
{
Var RPRenderPDF1 : TRPRenderPDF;
begin
RPRenderPDF1 := TRPRenderPDF.Create(nil);
Try
RVSystem1.DefaultDest := rdFile;
RVSystem1.DoNativeOutput := false;
RVSystem1.RenderObject := RPRenderPDF1;
RVSystem1.OutputFileName := '.\\teste.pdf';
RVSystem1.SystemSetups := RVSystem1.SystemSetups - [ssAllowSetup];
RVSystem1.Execute;
ShellExecute(0,'open','.\\teste.pdf','',nil,sw_shownormal);
Finally
RPRenderPDF1.Free;
End;
end;
}

  //---- *** A partir de aquí restituyo el estado de los componentes *** ----

  //Muestro los botones de "Generar Reporte" de las Planillas Provinciales
  MostrarBotonesGenerarReportePlanillasProvinciales;

  //Muestro el SpeedButton de "Generar Reporte"
  SpeedButtonGenerarReportePlanilla.Visible:= True;

  //Muestro la opción de "Generar Reporte" en el MainMenu
  MenuOpcionGenerarReportePlanillaProvincial.Visible:= True;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HC-CAP 2008';

  //Pongo el Focus en los DBGrids de las Planillas Provinciales
  PonerFocusEnDBGridsPlanillasProvinciales;      
end;



procedure TfrmPrincipal.btnExportarPDFPlanillaDeExcelenciaClick(Sender: TObject);
begin
  //Aun por implementar, por problemas con el uso del RvSystem para el reporte con dos listados.
end;

end.
