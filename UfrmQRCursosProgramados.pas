unit UfrmQRCursosProgramados;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleHospitalesDeExcelencia;

type
  TQuickReportCursosProgramados = class(TQuickRep)
    QRBandOverProgramados: TQRBand;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRMemo3: TQRMemo;
    QRMemo5: TQRMemo;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBandDetailProgramados: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape3: TQRShape;
  private

  public

  end;

var
  QuickReportCursosProgramados: TQuickReportCursosProgramados;

implementation

{$R *.DFM}

end.
