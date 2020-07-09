unit UfrmQRResumenPlanillasDeExcelencia;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModulePlanillasDeExcelencia, RpDefine, RpRender, RpRenderPDF,
  QRExport, ExportPack;

type
  TQuickReportResumenPlanillasDeExcelencia = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRImage1: TQRImage;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRMemo2: TQRMemo;
    QRMemo4: TQRMemo;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabelReferente: TQRLabel;
    QRShape1: TQRShape;
    QRLabelFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    EXQR: TExportQR;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportResumenPlanillasDeExcelencia: TQuickReportResumenPlanillasDeExcelencia;

implementation

Uses
  UfrmPreviewResumenPlanillasDeExcelencia;
  
{$R *.DFM}

procedure TQuickReportResumenPlanillasDeExcelencia.QuickRepPreview(
  Sender: TObject);
begin
  //LE mando al printer del Preview la información de este mismo reporte
  frmPreviewResumenPlanillasDeExcelencia.Preview.QRPrinter := QuickReportResumenPlanillasDeExcelencia.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewResumenPlanillasDeExcelencia.ShowModal;
end;

end.
