unit UfrmResumenPlanillasDeExcelencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, StrUtils,

  UDptoCapacitacion, UDataModuleHospitalesDeExcelencia, UDataModulePlanillasDeExcelencia,
  dbcgrids, DBCtrls,
  UDataModuleReportesPlanillasDeExcelencia,
  UfrmQRResumenPlanillasDeExcelencia, AppEvnts,
  UfrmPreviewResumenPlanillasDeExcelencia, ExportPack;
  
type
  TfrmResumenPlanillasDeExcelencia = class(TForm)
    btnGenerarReporte: TButton;
    btnCerrar: TButton;
    lblAnnoResumenPlanillasProvinciales: TLabel;
    DateTimeAnnoResumenPlanillasDeExcelencia: TDateTimePicker;
    GroupBox1: TGroupBox;
    ComboBoxSemestreResumenesDeExcelencia: TComboBox;
    Label69: TLabel;
    DBGridResumenDeExcelenciaProgramados: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    btnExportarReporte: TButton;
    EXQR: TExportQR;
    GroupBoxReportes: TGroupBox;

    procedure FormShow(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnGenerarReporteClick(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure DateTimeAnnoResumenPlanillasDeExcelenciaChange(
      Sender: TObject);
    procedure ComboBoxSemestreResumenesDeExcelenciaChange(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnExportarReporteClick(Sender: TObject);
        
  private
    { Private declarations }
  public
    { Public declarations }
    TempAnno: string;
    TempPeriodo: string;
  end;

var
  frmResumenPlanillasDeExcelencia: TfrmResumenPlanillasDeExcelencia;

implementation
var
      DptoCapacitacion: TDptoCapacitacion;

{$R *.dfm}



procedure TfrmResumenPlanillasDeExcelencia.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin
  //Elimino posibles balances de excelencia remanentes
  DptoCapacitacion.EliminarResumenDeExcelencia;

  //Relleno la parte 1 del Resumen de Excelencia
  DptoCapacitacion.RellenarBalancesDeExcelenciaParte1(TempAnno, TempPeriodo);

  //Relleno la parte 1 del Resumen de Excelencia
  DptoCapacitacion.RellenarBalancesDeExcelenciaParte2(TempAnno, TempPeriodo);

  //Busco el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;

  //Le pongo valores cero (0) en las casillas nulas
  DptoCapacitacion.ModificarNulosEnBalancesDeExcelencia;

  //Busco nuevamente el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;

  //Tomo el año que está en TempAnno y actualizo el DateTimePicker
  DateTimeAnnoResumenPlanillasDeExcelencia.Date:= StrToDate('01/01/' + TempAnno);

  //Tomo el periodo que está en TempPeriodo y actualizo el ComboBox
  ComboBoxSemestreResumenesDeExcelencia.ItemIndex:= StrToInt(TempPeriodo);

  if (TempPeriodo = '0')
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmResumenPlanillasDeExcelencia.Caption:= 'HC-CAP 2008, Resumen de las Planillas de Excelencia. Año ' + TempAnno + ', 1er Semestre.';
      end
        else
          begin
            //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmResumenPlanillasDeExcelencia.Caption:= 'HC-CAP 2008, Resumen de las Planillas de Excelencia. Año ' + TempAnno + ', 2do Semestre.';
          end;

  //Verifico cuándo debo habilitar o deshabilitar el botón de generación de reportes
  if (DptoCapacitacion.ExisteAlMenosUnResumenDeExcelencia = True)
    then
      begin
        //Habilito el botón de generación de reportes
        btnGenerarReporte.Enabled:= True;

        //Habilito el botón de exportación del reporte
        btnExportarReporte.Enabled:= True;
      end
        else
          begin
            //Deshabilito el botón de generación de reportes
            btnGenerarReporte.Enabled:= False;

            //Deshabilito el botón de exportación del reporte
            btnExportarReporte.Enabled:= False;
          end;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmResumenPlanillasDeExcelencia.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmResumenPlanillasDeExcelencia.btnCerrarClick(Sender: TObject);
begin
  //Elimino los balances de excelencia remanentes
  DptoCapacitacion.EliminarResumenDeExcelencia;

  //Cierro la forma
  frmResumenPlanillasDeExcelencia.Close;
end;



procedure TfrmResumenPlanillasDeExcelencia.btnGenerarReporteClick(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;  
begin
    try
         //QuickReportResumenPlanillasDeExcelencia:=TQuickReportResumenPlanillasDeExcelencia.Create(self);

  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasDeExcelencia.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasDeExcelencia.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

         //Relleno los valores adicionales en el reporte
         QuickReportResumenPlanillasDeExcelencia.QRLabelReferente.Caption:= 'Referente al ' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + '.';
         QuickReportResumenPlanillasDeExcelencia.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + DptoCapacitacion.ObtenerFechaDelSistema;

         //Muestro el reporte
         QuickReportResumenPlanillasDeExcelencia.PreviewModal;
      finally
         //QuickReportResumenPlanillasDeExcelencia.Free;
      end;
      
  //Busco nuevamente el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;
end;



procedure TfrmResumenPlanillasDeExcelencia.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmResumenPlanillasDeExcelencia.DateTimeAnnoResumenPlanillasDeExcelenciaChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;  
begin
  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasDeExcelencia.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasDeExcelencia.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

  //Tomo el año que está seleccionado en el DBGrid
  TempAnno:= anno;

  //Tomo el periodo que está seleccionado en el ComboBox
  TempPeriodo:=IntToStr(ComboBoxSemestreResumenesDeExcelencia.ItemIndex);

  //Elimino posibles balances de excelencia remanentes
  DptoCapacitacion.EliminarResumenDeExcelencia;

  //Relleno la parte 1 del Resumen de Excelencia
  DptoCapacitacion.RellenarBalancesDeExcelenciaParte1(TempAnno, TempPeriodo);

  //Relleno la parte 1 del Resumen de Excelencia
  DptoCapacitacion.RellenarBalancesDeExcelenciaParte2(TempAnno, TempPeriodo);

  //Busco el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;

  //Le pongo valores cero (0) en las casillas nulas
  DptoCapacitacion.ModificarNulosEnBalancesDeExcelencia;

  //Busco nuevamente el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;  

  if (TempPeriodo = '0')
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmResumenPlanillasDeExcelencia.Caption:= 'HC-CAP 2008, Resumen de las Planillas Provinciales. Año ' + TempAnno + ', 1er Semestre.';
      end
        else
          begin
            //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmResumenPlanillasDeExcelencia.Caption:= 'HC-CAP 2008, Resumen de las Planillas Provinciales. Año ' + TempAnno + ', 2do Semestre.';
          end;

  //Verifico cuándo debo habilitar o deshabilitar el botón de generación de reportes
  if (DptoCapacitacion.ExisteAlMenosUnResumenDeExcelencia = True)
    then
      begin
        //Habilito el botón de generación de reportes
        btnGenerarReporte.Enabled:= True;

        //Habilito el botón de exportación del reporte
        btnExportarReporte.Enabled:= True;
      end
        else
          begin
            //Deshabilito el botón de generación de reportes
            btnGenerarReporte.Enabled:= False;

            //Deshabilito el botón de exportación del reporte
            btnExportarReporte.Enabled:= False;
          end;         
end;



procedure TfrmResumenPlanillasDeExcelencia.ComboBoxSemestreResumenesDeExcelenciaChange(
  Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;  
begin
  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasDeExcelencia.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasDeExcelencia.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

  //Tomo el año que está seleccionado en el DBGrid
  TempAnno:= anno;

  //Tomo el periodo que está seleccionado en el ComboBox
  TempPeriodo:=IntToStr(ComboBoxSemestreResumenesDeExcelencia.ItemIndex);

  //Elimino posibles balances de excelencia remanentes
  DptoCapacitacion.EliminarResumenDeExcelencia;

  //Relleno la parte 1 del Resumen de Excelencia
  DptoCapacitacion.RellenarBalancesDeExcelenciaParte1(TempAnno, TempPeriodo);

  //Relleno la parte 1 del Resumen de Excelencia
  DptoCapacitacion.RellenarBalancesDeExcelenciaParte2(TempAnno, TempPeriodo);

  //Busco el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;

  //Le pongo valores cero (0) en las casillas nulas
  DptoCapacitacion.ModificarNulosEnBalancesDeExcelencia;

  //Busco nuevamente el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;  

  if (TempPeriodo = '0')
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmResumenPlanillasDeExcelencia.Caption:= 'HC-CAP 2008, Resumen de las Planillas de Excelencia. Año ' + TempAnno + ', 1er Semestre.';
      end
        else
          begin
            //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
            frmResumenPlanillasDeExcelencia.Caption:= 'HC-CAP 2008, Resumen de las Planillas de Excelencia. Año ' + TempAnno + ', 2do Semestre.';
          end;

  //Verifico cuándo debo habilitar o deshabilitar el botón de generación de reportes
  if (DptoCapacitacion.ExisteAlMenosUnResumenDeExcelencia = True)
    then
      begin
        //Habilito el botón de generación de reportes
        btnGenerarReporte.Enabled:= True;

        //Habilito el botón de exportación del reporte
        btnExportarReporte.Enabled:= True;
      end
        else
          begin
            //Deshabilito el botón de generación de reportes
            btnGenerarReporte.Enabled:= False;

            //Deshabilito el botón de exportación del reporte
            btnExportarReporte.Enabled:= False;
          end;         
end;

procedure TfrmResumenPlanillasDeExcelencia.ApplicationEvents1Idle(
  Sender: TObject; var Done: Boolean);
begin
  //Verifico cuándo debo habilitar o deshabilitar el botón de generación de reportes
{  if (DptoCapacitacion.ExisteAlMenosUnResumenDeExcelencia = True)
    then
      begin
        //Habilito el botón de generación de reportes
        btnGenerarReporte.Enabled:= True;
      end
        else
          begin
            //Deshabilito el botón de generación de reportes
            btnGenerarReporte.Enabled:= False;
          end;}
end;

procedure TfrmResumenPlanillasDeExcelencia.btnExportarReporteClick(Sender: TObject);
var
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  anno:= AnsiRightStr(DateToStr(DateTimeAnnoResumenPlanillasDeExcelencia.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimeAnnoResumenPlanillasDeExcelencia.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

  //Relleno los valores adicionales en el reporte
  QuickReportResumenPlanillasDeExcelencia.QRLabelReferente.Caption:= 'Referente al ' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + '.';
  QuickReportResumenPlanillasDeExcelencia.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + DptoCapacitacion.ObtenerFechaDelSistema;

  //Le envio el reporte hacia el ExportQR
  QuickReportResumenPlanillasDeExcelencia.Prepare;
  EXQR.Report := QuickReportResumenPlanillasDeExcelencia;

  //Mando a que el ExportQR exporte el reporte ya almacenado
  EXQR.ExportQR;

  //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
  //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
  //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

  QuickReportResumenPlanillasDeExcelencia.QRPrinter.Free;
  QuickReportResumenPlanillasDeExcelencia.QRPrinter := nil;

  //Busco nuevamente el Resumen de Excelencia en la BD.
  DptoCapacitacion.MostrarResumenDeExcelencia;  
end;

end.
