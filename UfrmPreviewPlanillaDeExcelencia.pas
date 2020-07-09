unit UfrmPreviewPlanillaDeExcelencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExportPack, ImgList, QRPrntr, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls;

type
  TfrmPreviewPlanillaDeExcelencia = class(TForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    TBSave: TToolButton;
    TBPrint: TToolButton;
    TBExit: TToolButton;
    Preview: TQRPreview;
    IL: TImageList;
    EXQR: TExportQR;
    TBPrimero: TToolButton;
    TBUltimo: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    TBAnterior: TToolButton;
    TBSiguiente: TToolButton;
    ToolButton1: TToolButton;
    TBAumentarZoom: TToolButton;
    TBZoomToFit: TToolButton;
    TBZoomToWidth: TToolButton;
    TBReducirZoom: TToolButton;
    edtPorcientoDeZoom: TEdit;
    procedure TBSaveClick(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure TBExitClick(Sender: TObject);
    procedure TBPrimeroClick(Sender: TObject);
    procedure TBZoomToFitClick(Sender: TObject);
    procedure TBZoomToWidthClick(Sender: TObject);
    procedure TBAumentarZoomClick(Sender: TObject);
    procedure TBReducirZoomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreviewPlanillaDeExcelencia: TfrmPreviewPlanillaDeExcelencia;

implementation

Uses
  UfrmQRPlanillaDeExcelenciaCompuesto;
{$R *.dfm}

procedure TfrmPreviewPlanillaDeExcelencia.TBSaveClick(Sender: TObject);
begin
// Be careful!, only if export from a preview window
  EXQR.Preview := Preview;
  EXQR.ExportQRFromPreview;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBPrintClick(Sender: TObject);
begin
  Preview.QRPrinter.Print;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBExitClick(Sender: TObject);
begin
  Close;
  Preview.QRPrinter := nil;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBPrimeroClick(
  Sender: TObject);
begin
  //Voy a la primera pagina
  Preview.PageNumber:= 1;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBZoomToFitClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize complete (que encaje o coincida)
  Preview.ZoomToFit;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBZoomToWidthClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize al ancho completo
  Preview.ZoomToWidth;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBAumentarZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte aumente el zoom
  Preview.Zoom:= Preview.Zoom + 10;
end;

procedure TfrmPreviewPlanillaDeExcelencia.TBReducirZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte reduzca el zoom
  Preview.Zoom:= Preview.Zoom - 10;
end;

end.
