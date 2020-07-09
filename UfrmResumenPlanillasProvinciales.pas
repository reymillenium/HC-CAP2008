unit UfrmResumenPlanillasProvinciales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  
  UDptoCapacitacion, UDataModulePlanillasProvinciales,
  UfrmQRResumenPlanillasProvinciales,
  UfrmPreviewResumenPlanillasProvinciales,
  ExportPack, RpRender, RpRenderPDF, RpDefine, RpBase, RpSystem, DBCtrls,
  ExtCtrls, Mask, Math;

type
  TfrmResumenPlanillasProvinciales = class(TForm)
    btnCerrar: TButton;
    GroupBox1: TGroupBox;
    DBGridResumen: TDBGrid;
    btnGenerarReporte: TButton;
    lblAnnoResumenPlanillasProvinciales: TLabel;
    DateTimeAnnoResumenPlanillasProvinciales: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    GroupBoxReportes: TGroupBox;
    btnExportarReporte: TButton;
    EXQR: TExportQR;
    GroupBoxReportesAmpliado: TGroupBox;
    btnGenerarReporteAmpliado: TButton;
    btnExportarReporteAmpliado: TButton;
    SaveDialogResumenAmpliadoProvincial: TSaveDialog;
    RvRenderPDFResumenAmpliadoProvincial: TRvRenderPDF;
    RvSystemResumenAmpliadoProvincial: TRvSystem;
    MemoMuelaReportes: TMemo;
    PageControlPlanillasProvinciales: TPageControl;
    TabSheetParte1PlanillasProvinciales: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBedtRelacionGradXTotalCMG: TDBEdit;
    DBedtTotalGradAccCapCMG: TDBEdit;
    DBedtTotalTrabOrgCMG: TDBEdit;
    DBedtEntOrgConPlanAnualCapCMG: TDBEdit;
    DBedtTotalEntOrgCMG: TDBEdit;
    TabSheetParte2PlanillasProvinciales: TTabSheet;
    ScrollBox1: TScrollBox;
    Label13: TLabel;
    Label17: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label50: TLabel;
    DBedtGradEnOtrasAccCMG: TDBEdit;
    DBedtGradEnEntrenEnExtCMG: TDBEdit;
    DBedtGradEnCurCompCMG: TDBEdit;
    DBedtGradEnCurIdiomaExtCMG: TDBEdit;
    DBedtGradEnCurFormCompMESCMG: TDBEdit;
    DBedtGradEnCurFormCompMINEDCMG: TDBEdit;
    DBedtGradEnDoctoradosCMG: TDBEdit;
    DBedtGradEnMaestriasCMG: TDBEdit;
    DBedtGradEnDiplomadosCMG: TDBEdit;
    DBedtGradEnCurPostGradoCMG: TDBEdit;
    DBedtGradEnEntPTrabCMG: TDBEdit;
    DBedtGradenAdiestLabCMG: TDBEdit;
    DBedtGradEnCurPerfecCMG: TDBEdit;
    DBedtGradEnCurHabCMG: TDBEdit;
    DBedtOperariosCMG: TDBEdit;
    DBedtTrabServiciosCMG: TDBEdit;
    DBedtAdministrativosCMG: TDBEdit;
    DBedtTecnicosCMG: TDBEdit;
    DBedtDirectivosCMG: TDBEdit;
    DBedtGradEnInstExternasCMG: TDBEdit;
    DBedtGradEnEmpInternasCMG: TDBEdit;
    TabSheetParte3PlanillasProvinciales: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBedtInstPermUtilEnCapacCMG: TDBEdit;
    DBedtInstEventUtilEnCapacCMG: TDBEdit;
    DBedtInstTotalUtilEnCapacCMG: TDBEdit;
    TabSheetParte4PlanillasProvinciales: TTabSheet;
    Label36: TLabel;
    Label60: TLabel;
    Label61: TLabel;
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
    DBMemoValTrabDesPorEscRamalesCMG: TDBMemo;
    Memo1: TMemo;
    TabSheetParte5_1PlanillasProvinciales: TTabSheet;
    ScrollBoxParte5PlanillasProvinciales: TScrollBox;
    Label43: TLabel;
    Label77: TLabel;
    Label46: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label48: TLabel;
    Label52: TLabel;
    Label47: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
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
    Label112: TLabel;
    DBPanelParte5_3PlanillasProvinciales: TPanel;
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
    Edit40: TEdit;
    DBedtTotalNivelXTotalNoIdoneos: TDBEdit;
    DBedtTotalNivelXMatric: TDBEdit;
    DBedtTotalNivelXNoMatric: TDBEdit;
    DBedtNoEficOtrasCausas: TDBEdit;
    DBedtNoEficMovilConstruc: TDBEdit;
    DBedtNoEficTrabNieganIncorp: TDBEdit;
    DBedtNoEficTrabTurnosRotativos: TDBEdit;
    DBedtNoEficTrabProblemasFamiliares: TDBEdit;
    DBedtNoEficLicEnfermedadYMaternidad: TDBEdit;
    DBedtNoEficTrabProblemasSalud: TDBEdit;
    DBedtNoEficTrabProxEdadJub: TDBEdit;
    DBedtNoFormalOtrasCausas: TDBEdit;
    DBedtNoFormalMovilConstruc: TDBEdit;
    DBedtNoFormalTrabNieganIncorp: TDBEdit;
    DBedtNoFormalTrabTurnosRotativos: TDBEdit;
    DBedtNoFormalTrabNoAcredit: TDBEdit;
    DBedtNoFormalImposibEntidAbrirAulas: TDBEdit;
    DBedtNoFormalLimMatricNivSup: TDBEdit;
    DBedtNoFormalNoDisponibMatricXMES: TDBEdit;
    DBedtNoFormalNoDisponibMatricXMINED: TDBEdit;
    DBedtNoFormalTrabProblemasFamiliares: TDBEdit;
    DBedtNoFormalLicEnfermedadYMaternidad: TDBEdit;
    DBedtNoFormalTrabProblemasSalud: TDBEdit;
    DBedtNoFormalTrabProxEdadJub: TDBEdit;
    DBedtNoIdoneosSinBConductaCMG: TDBEdit;
    DBedtNoIdoneosSinEficienciaCMG: TDBEdit;
    DBedtNoIdoneosSinCalificFormalCMG: TDBEdit;
    DBedtTotalTrabNoIdoneosCMG: TDBEdit;
    DBPanelParte5_8PlanillasProvinciales: TPanel;
    DBedtCasilla1XPendiente: TDBEdit;
    DBedtCasilla2XPendiente: TDBEdit;
    DBedtTotalXPendiente: TDBEdit;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    DBMemoCasilla1XCausas: TDBMemo;
    DBMemoCasilla2XCausas: TDBMemo;
    DBMemoTotalXCausas: TDBMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    Memo12: TMemo;
    DBPanelParte5_6PlanillasProvinciales: TPanel;
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
    Edit36: TEdit;
    DBedtTotalNoIdoneosXTotalNoIdoneos: TDBEdit;
    DBedtTotalNoIdoneosXMatric: TDBEdit;
    DBedtTotalNoIdoneosXNoMatric: TDBEdit;
    DBMemoExplicNoMatric: TDBMemo;
    TabSheetParte6PlanillasProvinciales: TTabSheet;
    Label58: TLabel;
    Label59: TLabel;
    DBMemoValoracionCualitativaDelProcesoCapacCMG: TDBMemo;
    
    procedure FormShow(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure DateTimeAnnoResumenPlanillasProvincialesChange(Sender: TObject);
    procedure btnGenerarReporteClick(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure btnExportarReporteClick(Sender: TObject);
    procedure btnExportarReporteAmpliadoClick(Sender: TObject);
    procedure btnGenerarReporteAmpliadoClick(Sender: TObject);
    procedure RvSystemResumenAmpliadoProvincialBeforePrint(Sender: TObject);
    procedure RvSystemResumenAmpliadoProvincialPrint(Sender: TObject);
    //procedure RvSystemResumenAmpliadoProvincialAfterPrint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    TempAnno: string;
  end;

var
  frmResumenPlanillasProvinciales: TfrmResumenPlanillasProvinciales;

implementation
var
      DptoCapacitacion: TDptoCapacitacion;
{$R *.dfm}

procedure TfrmResumenPlanillasProvinciales.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin

  //Busco el Resumen Provincial en la BD.
  DptoCapacitacion.MostrarResumen(TempAnno);

  //Tomo el año que está en TempAnno y actualizo el DateTimePicker
  DateTimeAnnoResumenPlanillasProvinciales.Date:= StrToDate('01/01/' + TempAnno);

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmResumenPlanillasProvinciales.Caption:= 'HC-CAP 2008, Resumúmenes de las Planillas Provinciales. Año ' + TempAnno + '.';

  //Verifico cuándo debo habilitar o deshabilitar los botones de los reportes
  if (DptoCapacitacion.ExisteAlMenosUnResumenProvincial = True)
    then
      begin
        //Habilito el botón de exportación a PDF del Reporte Corto
        btnExportarReporte.Enabled:= True;

        //Habilito el botón de previsualización del Reporte Corto
        btnGenerarReporte.Enabled:= True;

        //Habilito el botón de exportación a PDF del Reporte Ampliado
        btnExportarReporteAmpliado.Enabled:= True;

        //Habilito el botón de previsualización del Reporte Ampliado
        btnGenerarReporteAmpliado.Enabled:= True;
      end
        else
          begin
            //Deshabilito el botón de exportación a PDF del Reporte Corto
            btnExportarReporte.Enabled:= False;

            //Deshabilito el botón de de previsualización del Reporte Corto
            btnGenerarReporte.Enabled:= False;

            //Deshabilito el botón de exportación a PDF del Reporte Ampliado
            btnExportarReporteAmpliado.Enabled:= False;

            //Deshabilito el botón de de previsualización del Reporte Ampliado
            btnGenerarReporteAmpliado.Enabled:= False;
          end;
            
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmResumenPlanillasProvinciales.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;

procedure TfrmResumenPlanillasProvinciales.btnCerrarClick(Sender: TObject);
begin
  //Cierro la forma
  frmResumenPlanillasProvinciales.Close;
end;

procedure TfrmResumenPlanillasProvinciales.DateTimeAnnoResumenPlanillasProvincialesChange(Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;  
begin

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

  //Tomo el año que está seleccionado en el DBGrid
  TempAnno:= anno;

  //Busco el Resumen en la BD.
  DptoCapacitacion.MostrarResumen(TempAnno);

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmResumenPlanillasProvinciales.Caption:= 'HC-CAP 2008, Resúmenes de las Planillas Provinciales. Año ' + TempAnno + '.';

  //Verifico cuándo debo habilitar o deshabilitar los botones de los reportes
  if (DptoCapacitacion.ExisteAlMenosUnResumenProvincial = True)
    then
      begin
        //Habilito el botón de exportación a PDF del Reporte Corto
        btnExportarReporte.Enabled:= True;

        //Habilito el botón de previsualización del Reporte Corto
        btnGenerarReporte.Enabled:= True;

        //Habilito el botón de exportación a PDF del Reporte Ampliado
        btnExportarReporteAmpliado.Enabled:= True;

        //Habilito el botón de previsualización del Reporte Ampliado
        btnGenerarReporteAmpliado.Enabled:= True;
      end
        else
          begin
            //Deshabilito el botón de exportación a PDF del Reporte Corto
            btnExportarReporte.Enabled:= False;

            //Deshabilito el botón de de previsualización del Reporte Corto
            btnGenerarReporte.Enabled:= False;

            //Deshabilito el botón de exportación a PDF del Reporte Ampliado
            btnExportarReporteAmpliado.Enabled:= False;

            //Deshabilito el botón de de previsualización del Reporte Ampliado
            btnGenerarReporteAmpliado.Enabled:= False;
          end;
end;

procedure TfrmResumenPlanillasProvinciales.btnGenerarReporteClick(Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
    try
  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

         //Relleno los valores adicionales en el reporte
         QuickReportResumenPlanillasProvinciales.QRLabelReferente.Caption:= 'Referente al año ' + anno + '.';
         QuickReportResumenPlanillasProvinciales.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + DptoCapacitacion.ObtenerFechaDelSistema;

         //Muestro el reporte
         QuickReportResumenPlanillasProvinciales.PreviewModal;
      finally
         //QuickReportResumenPlanillasProvinciales.Free;
      end;

  //Busco nuevamente el Resumen Provincial en la BD.
  DptoCapacitacion.MostrarResumen(TempAnno);
end;

procedure TfrmResumenPlanillasProvinciales.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;

procedure TfrmResumenPlanillasProvinciales.btnExportarReporteClick(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasProvinciales.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasProvinciales.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

  //Relleno los valores adicionales en el reporte
  QuickReportResumenPlanillasProvinciales.QRLabelReferente.Caption:= 'Referente al año ' + anno + '.';
  QuickReportResumenPlanillasProvinciales.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + DptoCapacitacion.ObtenerFechaDelSistema;

  //Le envio el reporte hacia el ExportQR
  QuickReportResumenPlanillasProvinciales.Prepare;
  EXQR.Report := QuickReportResumenPlanillasProvinciales;

  //Mando a que el ExportQR exporte el reporte ya almacenado
  EXQR.ExportQR;

  //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
  //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
  //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

  QuickReportResumenPlanillasProvinciales.QRPrinter.Free;
  QuickReportResumenPlanillasProvinciales.QRPrinter := nil;

  //Busco nuevamente el Resumen Provincial en la BD.
  DptoCapacitacion.MostrarResumen(TempAnno);
end;

procedure TfrmResumenPlanillasProvinciales.btnExportarReporteAmpliadoClick(
  Sender: TObject);
begin
  //Mostrar el Resumen Ampliado Provicial
  DptoCapacitacion.MostrarReporteAmpliadoProvincial(StrToInt(TempAnno));

  //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

  //Especifico que el destino sea como fichero
  RvSystemResumenAmpliadoProvincial.DefaultDest    := rdFile;

  //Especifico que la salida nativa sea falsa (¿?)
  RvSystemResumenAmpliadoProvincial.DoNativeOutput := false;

  //Le quito a la especificación del rvSystem el que salga el cartelito de Setup
  RvSystemResumenAmpliadoProvincial.SystemSetups   :=   RvSystemResumenAmpliadoProvincial.SystemSetups - [ssAllowSetup];

  //Le paso el rvRender como objeto renderizador del rvSystem 
  RvSystemResumenAmpliadoProvincial.RenderObject   := RvRenderPDFResumenAmpliadoProvincial;

  //Epecifico las características del SaveDialog
  SaveDialogResumenAmpliadoProvincial.Filter       := 'Acrobat Reader|*.PDF';
  SaveDialogResumenAmpliadoProvincial.DefaultExt   := 'PDF';

  if SaveDialogResumenAmpliadoProvincial.Execute then
    begin
      //Limpio el SaveDialog
      //SaveDialogPlanillasProvinciales.Free;

      //La salida del rvSystem será la del SaveDialog
      RvSystemResumenAmpliadoProvincial.OutputFileName  := SaveDialogResumenAmpliadoProvincial.FileName;

      //Ejecuto el rvSystem
      RvSystemResumenAmpliadoProvincial.Execute;
    end;

end;

procedure TfrmResumenPlanillasProvinciales.btnGenerarReporteAmpliadoClick(
  Sender: TObject);
begin
  //Mostrar el Resumen Ampliado Provicial
  DptoCapacitacion.MostrarReporteAmpliadoProvincial(StrToInt(TempAnno));

  //Especifico que el destino sea como Vista Previa
  RvSystemResumenAmpliadoProvincial.DefaultDest    := rdPreview;

  //Ejecuto el rvSystem
  RvSystemResumenAmpliadoProvincial.Execute;
end;

procedure TfrmResumenPlanillasProvinciales.RvSystemResumenAmpliadoProvincialBeforePrint(
  Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetPaperSize(1, 215.9, 279.4);
  end;
end;

procedure TfrmResumenPlanillasProvinciales.RvSystemResumenAmpliadoProvincialPrint(
  Sender: TObject);
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
    PrintCenter('Resumen Ampliado sobre la capacitación y el perfeccionamiento de', 105.95);
    NewLine;
    PrintCenter('los recursos humanos del sistema nacional de salud.', 105.95);
    NewLine;
    NewLine;

    //Ponemos el título identificador del reporte
    Bold:= True;

    PrintLeft('Referente al año: ' + TempAnno, 31.7);
    PrintRight('Emitido en: ' + DptoCapacitacion.ObtenerFechaDelSistema, 180.2);
    NewLine;
    NewLine;

    if (DptoCapacitacion.CantidadDePlanillas = 1)
      then
        begin
          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Camaguey') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Camaguey.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Ciego de Ávila') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Ciego de Ávila.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Cienfuegos') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Cienfuegos.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Ciudad de la Habana') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Ciudad de la Habana.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Granma') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Granma.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Guantánamo') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Guantánamo.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Holguín') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Holguín.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Isla de la Juventud') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Isla de la Juventud.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'La Habana') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia La Habana.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Las Tunas') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Las Tunas.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Matanzas') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Matanzas.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Pinar del Rio') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Pinar del Rio.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Sancti Spíritus') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Sancti Spíritus.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Santiago de Cuba') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Santiago de Cuba.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'USN') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de las Unidades de Subordinación Nacional.', 31.7);
                NewLine;
              end;
              
          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Villa Clara') = True)
            then
              begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a una planilla, de la provincia Villa Clara.', 31.7);
                NewLine;
              end;
              
        end
          else
            begin
                SetFont('Arial', 12);
                Bold := True;

                PrintLeft('En base a ' + IntToStr(DptoCapacitacion.CantidadDePlanillas) + ' planillas recibidas. (ver listado al final)', 31.7);
              NewLine;
            end;


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
    PrintLeft(DBedtTotalEntOrgCMG.Field.Text, 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.2 - De ellas con Plan Anual de Capacitación: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtEntOrgConPlanAnualCapCMG.Field.Text, 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.3 - Total de trabajadores del organismo: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtTotalTrabOrgCMG.Field.Text, 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('1.4 - Total de Graduados en acciones de capacitación: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtTotalGradAccCapCMG.Field.Text, 48.5);
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
    //PrintLeft(  FloatToStr(  SimpleRoundTo( StrToFloat(DBedtRelacionGradXTotalCMG.Field.Text), -3  )   ) , 48.5);
    PrintLeft(  FloatToStr(  SimpleRoundTo( StrToFloat(DBedtTotalGradAccCapCMG.Field.Text) / StrToFloat(DBedtTotalTrabOrgCMG.Field.Text), -3  )   ) , 48.5);
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
    PrintLeft(DBedtGradEnEmpInternasCMG.Field.Text, 62);
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
    PrintLeft(DBedtGradEnInstExternasCMG.Field.Text, 62);
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
    PrintLeft(DBedtDirectivosCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.2 - Técnicos: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtTecnicosCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.3 - Administrativos: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtAdministrativosCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.4 - Trabajadores de servicios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtTrabServiciosCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.2.5 - Operarios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtOperariosCMG.Field.Text, 62);
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
    PrintLeft(DBedtGradEnCurHabCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.2 - En cursos de Perfeccionamiento o Promoción: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnCurPerfecCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.3 - En Adiestramiento Laboral: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnAdiestLabCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.4 - En Entrenamiento en el puesto de trabajo: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnEntPTrabCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.5 - En cursos de Postgrados: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnCurPostGradoCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.6 - En Diplomados: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnDiplomadosCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.7 - En Maestrías: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnMaestriasCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.8 - En Doctorados: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnDoctoradosCMG.Field.Text, 62);
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
    PrintLeft(DBedtGradEnCurFormCompMINEDCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.10 - En cursos de Formación completa del MES: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnCurFormCompMESCMG.Field.Text, 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.11 - En cursos de idioma extranjero: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnCurIdiomaExtCMG.Field.Text, 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.12 - En cursos de Computación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnCurCompCMG.Field.Text, 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.13 - En Entrenamiento en el extranjero: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnEntrenEnExtCMG.Field.Text, 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('2.3.14 - En otras acciones (Seminarios, conferencias, talleres, etc.): ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtGradEnOtrasAccCMG.Field.Text, 65);
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
    PrintLeft(DBedtInstTotalUtilEnCapacCMG.Field.Text, 48.5);
    NewLine;
    NewLine;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('3.2 - De ellos Eventuales: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtInstEventUtilEnCapacCMG.Field.Text, 48.5);
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
    PrintLeft(DBedtInstPermUtilEnCapacCMG.Field.Text, 48.5);
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
    PrintTab(DBedtMaestriasXMatricCMG.Field.Text);
    PrintTab(DBedtMaestriasXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('Diplomados.');
    PrintTab(DBedtDiplomadosXMatricCMG.Field.Text);
    PrintTab(DBedtDiplomadosXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('Cursos de Postgrados.');
    PrintTab(DBedtCurPostgradosXMatricCMG.Field.Text);
    PrintTab(DBedtCurPostgradosXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('4');
    PrintTab('Cursos de Idiomas.');
    PrintTab(DBedtCurIdiomasXMatricCMG.Field.Text);
    PrintTab(DBedtCurIdiomasXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('5');
    PrintTab('Cursos de Computación.');
    PrintTab(DBedtCurCompXMatricCMG.Field.Text);
    PrintTab(DBedtCurCompXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('6');
    PrintTab('Habilitación.');
    PrintTab(DBedtHabilitacionXMatricCMG.Field.Text);
    PrintTab(DBedtHabilitacionXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('7');
    PrintTab('Perfeccionamiento.');
    PrintTab(DBedtPerfecXMatricCMG.Field.Text);
    PrintTab(DBedtPerfecXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('8');
    PrintTab('Talleres, Seminarios y Conferencias.');
    PrintTab(DBedtTallSemConfXMatricCMG.Field.Text);
    PrintTab(DBedtTallSemConfXGradCMG.Field.Text);
    NewLine;

    Bold := False;
    PrintTab(' ');
    Bold := True;
    PrintTab('TOTAL');
    PrintTab(DBedtTotalXMatricCMG.Field.Text);
    PrintTab(DBedtTotalXGradCMG.Field.Text);
    NewLine;
    NewLine;
    NewLine;
    
    ClearTabs;
{
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
}
      
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
    PrintLeft(DBedtTotalTrabNoIdoneosCMG.Field.Text, 48.5);
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
    PrintLeft(DBedtNoIdoneosSinCalificFormalCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.2 - Por no realizar el trabajo con eficiencia, calidad y productividad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoIdoneosSinEficienciaCMG.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.3 - Por no cumplir las normas de conducta exigidas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoIdoneosSinBConductaCMG.Field.Text, 62);
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
    PrintTab(DBedtGrado6XTotalNoIdoneos.Field.Text);
    PrintTab(DBedtGrado6XMatric.Field.Text);
    PrintTab(DBedtGrado6XNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('9no Grado');
    PrintTab(DBedtGrado9XTotalNoIdoneos.Field.Text);
    PrintTab(DBedtGrado9XMatric.Field.Text);
    PrintTab(DBedtGrado9XNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('12 Grado');
    PrintTab(DBedtGrado12XTotalNoIdoneos.Field.Text);
    PrintTab(DBedtGrado12XMatric.Field.Text);
    PrintTab(DBedtGrado12XNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('4');
    PrintTab('Técnico Medio');
    PrintTab(DBedtTecMedioXTotalNoIdoneos.Field.Text);
    PrintTab(DBedtTecMedioXMatric.Field.Text);
    PrintTab(DBedtTecMedioXNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('5');
    PrintTab('Nivel Superior');
    PrintTab(DBedtNivSupXTotalNoIdoneos.Field.Text);
    PrintTab(DBedtNivSupXMatric.Field.Text);
    PrintTab(DBedtNivSupXNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('6');
    PrintTab('TOTAL');
    PrintTab(DBedtTotalNivelXTotalNoIdoneos.Field.Text);
    PrintTab(DBedtTotalNivelXMatric.Field.Text);
    PrintTab(DBedtTotalNivelXNoMatric.Field.Text);
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
    PrintLeft(DBedtNoFormalTrabProxEdadJub.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalTrabProblemasSalud.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalLicEnfermedadYMaternidad.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.4 - Trabajadores con problemas familiares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoFormalTrabProblemasFamiliares.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalNoDisponibMatricXMINED.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalNoDisponibMatricXMES.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalLimMatricNivSup.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalImposibEntidAbrirAulas.Field.Text, 62);
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
    PrintLeft(DBedtNoFormalTrabNoAcredit.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.10 - Trabajadores que laboran en turnos rotativos o jornadas irregulares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoFormalTrabTurnosRotativos.Field.Text, 65);
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
    PrintLeft(DBedtNoFormalTrabNieganIncorp.Field.Text, 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.12 - Movilizados en la construcción de viviendas por medios propios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoFormalMovilConstruc.Field.Text, 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.13 - Otras causas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoFormalOtrasCausas.Field.Text, 65);
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

    //Se quita la explicación por el momento. No hay modo de sumar las explicaciones.
{
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
}

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
    PrintTab(DBedtCurHabilXTotalNoIdoneos.Field.Text);
    PrintTab(DBedtCurHabilXMatric.Field.Text);
    PrintTab(DBedtCurHabilXNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('Entrenamiento');
    PrintTab(DBedtEntrenamientoXTotalNoIdoneos.Field.Text);
    PrintTab(DBedtEntrenamientoXMatric.Field.Text);
    PrintTab(DBedtEntrenamientoXNoMatric.Field.Text);
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('TOTAL');
    PrintTab(DBedtTotalNoIdoneosXTotalNoIdoneos.Field.Text);
    PrintTab(DBedtTotalNoIdoneosXMatric.Field.Text);
    PrintTab(DBedtTotalNoIdoneosXNoMatric.Field.Text);
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
    PrintLeft(DBedtNoEficTrabProxEdadJub.Field.Text, 62);
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
    PrintLeft(DBedtNoEficTrabProblemasSalud.Field.Text, 62);
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
    PrintLeft(DBedtNoEficLicEnfermedadYMaternidad.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.4 - Trabajadores con problemas familiares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoEficTrabProblemasFamiliares.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.5 - Trabajadores que laboran en turnos rotativos o jornadas irregulares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoEficTrabTurnosRotativos.Field.Text, 62);
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
    PrintLeft(DBedtNoEficTrabNieganIncorp.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.7 - Movilizados en la construcción de viviendas por medios propios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoEficMovilConstruc.Field.Text, 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.8 - Otras causas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(DBedtNoEficOtrasCausas.Field.Text, 62);
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
    //SetTab(140, pjCenter, 40, 0, 0, 0);

    Bold := True;
    PrintTab(' ');
    PrintTab('Pendiente de');
    //PrintTab(' ');
    NewLine;

    Bold := True;
    PrintTab('No.');
    PrintTab('alcanzar el requisito');
    //PrintTab('Causas');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab(DBedtCasilla1XPendiente.Field.Text);
    //PrintTab(TempPlanilla.Casilla1XCausas);
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab(DBedtCasilla2XPendiente.Field.Text);
    //PrintTab(TempPlanilla.Casilla2XCausas);
    NewLine;

    Bold := False;
    PrintTab('TOTAL');
    PrintTab(DBedtTotalXPendiente.Field.Text);
    //PrintTab(TempPlanilla.TotalXCausas);
    NewLine;
    NewLine;
    NewLine;

    ClearTabs;


    if (DptoCapacitacion.CantidadDePlanillas <> 1)
      then
        begin
          //Bold := True;
          SetFont('Arial', 14);
          Bold := True;

          PrintLeft('Este Resumen Ampliado estuvo conformado por planillas de:', 31.7);
          NewLine;
          NewLine;
          
          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Camaguey') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);
                
                PrintLeft('- Camaguey.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Ciego de Ávila') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);
                              
                PrintLeft('- Ciego de Ávila.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Cienfuegos') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Cienfuegos.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Ciudad de la Habana') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Ciudad de la Habana.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Granma') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Granma.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Guantánamo') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Guantánamo.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Holguín') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Holguín.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Isla de la Juventud') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Isla de la Juventud.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'La Habana') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- La Habana.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Las Tunas') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Las Tunas.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Matanzas') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Matanzas.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Pinar del Rio') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Pinar del Rio.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Sancti Spíritus') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Sancti Spíritus.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Santiago de Cuba') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Santiago de Cuba.', 31.7);
                NewLine;
              end;

          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'USN') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Unidades de Subordinación Nacional.', 31.7);
                NewLine;
              end;
              
          if (DptoCapacitacion.ExisteLaPlanilla(StrToInt(TempAnno), 'Villa Clara') = True)
            then
              begin
                Bold := False;
                SetFont('Arial', 12);

                PrintLeft('- Villa Clara.', 31.7);
                NewLine;
              end;
              
        end;



{

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
}      
    //Fin del reporte.
  end;
end;

end.
