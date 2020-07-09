unit UfrmQRResumenPlanillasProvinciales;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModulePlanillasProvinciales, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportResumenPlanillasProvinciales = class(TQuickRep)
    QRBandTitleResumenPlanillasProvinciales: TQRBand;
    QRBandDetalResumenPlanillasProvinciales: TQRBand;
    QRImage1: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
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
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabelReferente: TQRLabel;
    QRShape1: TQRShape;
    QRLabelFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRMemoLeyenda: TQRMemo;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportResumenPlanillasProvinciales: TQuickReportResumenPlanillasProvinciales;

implementation
Uses
  UfrmPreviewResumenPlanillasProvinciales;
{$R *.DFM}

procedure TQuickReportResumenPlanillasProvinciales.QuickRepPreview(
  Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewResumenPlanillasProvinciales.Preview.QRPrinter := QuickReportResumenPlanillasProvinciales.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewResumenPlanillasProvinciales.ShowModal;
end;

end.
