unit UfrmPresentacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, ComCtrls;

type
  TfrmPresentacion = class(TForm)
    imgLogoCENAPETPresentacion: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    ProgressBar1: TProgressBar;
    lblCargando: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPresentacion: TfrmPresentacion;

implementation
{$R *.dfm}

procedure TfrmPresentacion.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position:=ProgressBar1.Position+1;
end;

procedure TfrmPresentacion.Timer2Timer(Sender: TObject);
begin
  frmPresentacion.Close;
end;

procedure TfrmPresentacion.FormShow(Sender: TObject);
const
  //clPaleGreen= TColor($CCFFCC);
  //clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
begin
  //Le cambio el color al ProgressBar
  PostMessage(ProgressBar1.Handle, $0409, 0, clStrongRed);
end;

end.
