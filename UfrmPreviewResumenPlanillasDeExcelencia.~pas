unit UfrmPreviewResumenPlanillasDeExcelencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExportPack, ImgList, QRPrntr, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls;

type
  TfrmPreviewResumenPlanillasDeExcelencia = class(TForm)
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
    procedure TBAnteriorClick(Sender: TObject);
    procedure TBSiguienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreviewResumenPlanillasDeExcelencia: TfrmPreviewResumenPlanillasDeExcelencia;
  FCantidadDePaginas: Integer;
  
implementation

Uses
  UfrmQRResumenPlanillasDeExcelencia;
{$R *.dfm}

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBSaveClick(Sender: TObject);
begin
// Be careful!, only if export from a preview window
  EXQR.Preview := Preview;
  EXQR.ExportQRFromPreview;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBPrintClick(Sender: TObject);
begin
  Preview.QRPrinter.Print;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBExitClick(Sender: TObject);
begin
  Close;
  Preview.QRPrinter := nil;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBPrimeroClick(
  Sender: TObject);
begin
  //Voy a la primera pagina
  Preview.PageNumber:= 1;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBZoomToFitClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize complete (que encaje o coincida)
  Preview.ZoomToFit;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBZoomToWidthClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize al ancho completo
  Preview.ZoomToWidth;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBAumentarZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte aumente el zoom
  Preview.Zoom:= Preview.Zoom + 10;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBReducirZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte reduzca el zoom
  Preview.Zoom:= Preview.Zoom - 10;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBAnteriorClick(
  Sender: TObject);
begin
  //Voy a la página anterior
  Preview.QRPrinter.PageNumber:= Preview.QRPrinter.PageNumber - 1;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.TBSiguienteClick(
  Sender: TObject);
begin
  //Voy a la página siguiente
  Preview.QRPrinter.PageNumber:= Preview.QRPrinter.PageNumber + 1;
end;

procedure TfrmPreviewResumenPlanillasDeExcelencia.FormShow(
  Sender: TObject);
begin
  //Cuento el número de páginas
  FCantidadDePaginas:= Preview.QRPrinter.PageCount;

  if (FCantidadDePaginas = 1)
    then
      begin
        //Deshabilito el ToolButton de 'Primero'
        TBPrimero.Enabled:= False;

        
      end
        else
          begin

          end;
end;

end.
