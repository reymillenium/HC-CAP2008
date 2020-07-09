unit UfrmQRPlanillaDeExcelenciaCompuesto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UfrmQRCursosRealizados, UfrmQRCursosProgramados;

type
  TQuickReportPlanillaDeExcelenciaCompuesto = class(TQuickRep)
    QRCompositeReportPlanillaDeExcelencia: TQRCompositeReport;
    procedure QRCompositeReportPlanillaDeExcelenciaAddReports(
      Sender: TObject);
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

VAR
  QuickReportPlanillaDeExcelenciaCompuesto: TQuickReportPlanillaDeExcelenciaCompuesto;

implementation
Uses
  UfrmPreviewPlanillaDeExcelencia;

{$R *.DFM}

procedure TQuickReportPlanillaDeExcelenciaCompuesto.QRCompositeReportPlanillaDeExcelenciaAddReports(
  Sender: TObject);
begin
  with QRCompositeReportPlanillaDeExcelencia do
  begin
    Reports.Add(QuickReportCursosRealizados);
    Reports.Add(QuickReportCursosProgramados);
  end;
end;

procedure TQuickReportPlanillaDeExcelenciaCompuesto.QuickRepPreview(
  Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewPlanillaDeExcelencia.Preview.QRPrinter := QuickReportPlanillaDeExcelenciaCompuesto.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewPlanillaDeExcelencia.ShowModal;
end;

end.
