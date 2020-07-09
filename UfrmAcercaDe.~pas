unit UfrmAcercaDe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ShellApi;

type
  TfrmAcercaDe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnAceptar: TButton;
    imgLogoCenapet: TImage;
    lblNombreMio: TLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure lblNombreMioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcercaDe: TfrmAcercaDe;

implementation

{$R *.dfm}

procedure TfrmAcercaDe.btnAceptarClick(Sender: TObject);
begin
  frmAcercaDe.Close;
end;



procedure TfrmAcercaDe.lblNombreMioClick(Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (lblNombreMio.Caption <> '')
    then
      begin
        Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       'reiniermillenium@gmail.com'),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            Cursor:= crDefault;
          end;
end;



end.
