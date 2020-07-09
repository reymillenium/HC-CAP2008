unit UfrmNotificacionDeAlguienLoggeado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, AppEvnts, ExtCtrls,

  {Units confeccionadas por mi.}
  UDataModuleControlDelSistema, UDptoCapacitacion;

type
  TfrmNotificacionDeAlguienLoggeado = class(TForm)
    Label3: TLabel;
    DBedtFecha: TDBEdit;
    Label80: TLabel;
    DBedtHoraExacta: TDBEdit;
    Label81: TLabel;
    DBedtNombrePC: TDBEdit;
    Label82: TLabel;
    DBedtNumeroIP: TDBEdit;
    btnAceptar: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBedtUsuario: TDBEdit;
    Label85: TLabel;
    DBedtPrivilegios: TDBEdit;
    Label49: TLabel;
    DBedtNombreUsuario: TDBEdit;
    Label83: TLabel;
    DBedtPrimerApellidoUsuario: TDBEdit;
    Label84: TLabel;
    DBedtSegundoApellidoUsuario: TDBEdit;
    MemoInformacion: TMemo;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Delay(msecs:integer);
  end;

var
  frmNotificacionDeAlguienLoggeado: TfrmNotificacionDeAlguienLoggeado;

implementation


{$R *.dfm}

procedure TfrmNotificacionDeAlguienLoggeado.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aqu� deshabilito el bot�n de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNotificacionDeAlguienLoggeado.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Activo el Timer para el cierre del sistema
  Timer1.Enabled:= True;
end;

procedure TfrmNotificacionDeAlguienLoggeado.Delay(msecs:integer);
var
   FirstTickCount:longint;
begin
     FirstTickCount:=GetTickCount;
     repeat
           Application.ProcessMessages;
     until ((GetTickCount-FirstTickCount) >= Longint(msecs));
end;



procedure TfrmNotificacionDeAlguienLoggeado.btnAceptarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNotificacionDeAlguienLoggeado.Close;

  //Cierro la aplicaci�n
  Application.Terminate;
end;

procedure TfrmNotificacionDeAlguienLoggeado.Timer1Timer(Sender: TObject);
begin
  //Cierro la aplicaci�n
  Application.Terminate;
end;

end.
