unit UfrmConectarse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UDptoCapacitacion, ExtCtrls;

type
  TfrmConectarse = class(TForm)
    lblServer: TLabel;
    lblNombreBD: TLabel;
    edtServer: TEdit;
    edtNombreBD: TEdit;
    btnConectarse: TButton;
    btnCancelar: TButton;
    Label1: TLabel;
    ComboBoxIntranet: TComboBox;
    Panel1: TPanel;
    edtUsuario: TEdit;
    edtContrasenna: TEdit;
    lblContrasenna: TLabel;
    lblUsuario: TLabel;
    procedure btnConectarseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtNombreBDKeyPress(Sender: TObject; var Key: Char);
    procedure edtServerKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConectarse: TfrmConectarse;
  

implementation
var
    DptoCapacitacion: TDptoCapacitacion;
{$R *.dfm}

procedure TfrmConectarse.btnConectarseClick(Sender: TObject);
var
  contrasenna, usuario, NombreBaseDeDatos, NombreServer, Intranet: WideString;
begin
  contrasenna:= 'desfasator';
  usuario:= 'reinier';


  NombreBaseDeDatos:= frmConectarse.edtNombreBD.Text;
  NombreServer:= frmConectarse.edtServer.Text;
  Intranet:= ComboBoxIntranet.Text;

  if ( (edtServer.Text<>'') and (edtNombreBD.Text<>'')  and (edtUsuario.Text<>'') and (edtContrasenna.Text<>'') )
    then
      begin
        DptoCapacitacion.EstablecerConexionConLaBD(contrasenna, usuario, NombreBaseDeDatos, NombreServer, Intranet);
        frmConectarse.Close;
      end
        else
          begin
            if ( (edtServer.Text='') and (edtNombreBD.Text='')  and (edtUsuario.Text='') and (edtContrasenna.Text='') )
              then
                //ShowMessage('Faltan todos los parámetros por entrar. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                Application.MessageBox('Faltan todos los parámetros por entrar. Sin ellos no se puede conectar el sistema HC-CAP  2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                  else
                    if ( (edtServer.Text='') and (edtNombreBD.Text='')  and (edtUsuario.Text='') and (edtContrasenna.Text<>'') )
                     then
                       //ShowMessage('Falta el nombre del Server, el nombre de la base de datos y el usuario. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                       Application.MessageBox('Falta el nombre del Server, el nombre de la base de datos y el usuario. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                         else
                           if ( (edtServer.Text='') and (edtNombreBD.Text='')  and (edtUsuario.Text<>'') and (edtContrasenna.Text='') )
                             then
                               //ShowMessage('Falta el nombre del Server, el nombre de la base de datos y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                               Application.MessageBox('Falta el nombre del Server, el nombre de la base de datos y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                 else
                                   if ( (edtServer.Text='') and (edtNombreBD.Text<>'')  and (edtUsuario.Text='') and (edtContrasenna.Text='') )
                                     then
                                       //ShowMessage('Falta el nombre del Server, el usuario y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                                       Application.MessageBox('Falta el nombre del Server, el usuario y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                         else
                                           if ( (edtServer.Text<>'') and (edtNombreBD.Text='')  and (edtUsuario.Text='') and (edtContrasenna.Text='') )
                                             then
                                               //ShowMessage('Falta el nombre de la base de datos, el usuario y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                                               Application.MessageBox('Falta el nombre de la base de datos, el usuario y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                 else
                                                   if ( (edtServer.Text<>'') and (edtNombreBD.Text<>'')  and (edtUsuario.Text='') and (edtContrasenna.Text='') )
                                                     then
                                                       //ShowMessage('Faltan el usuario y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                                                       Application.MessageBox('Faltan el usuario y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                         else
                                                           if ( (edtServer.Text<>'') and (edtNombreBD.Text='')  and (edtUsuario.Text<>'') and (edtContrasenna.Text='') )
                                                             then
                                                               //ShowMessage('Faltan el nombre de la base de datos y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                                                               Application.MessageBox('Faltan el nombre de la base de datos y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                 else
                                                                   if ( (edtServer.Text<>'') and (edtNombreBD.Text='')  and (edtUsuario.Text='') and (edtContrasenna.Text<>'') )
                                                                     then
                                                                       //ShowMessage('Faltan el nombre de la base de datos y el usuario. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                                                                       Application.MessageBox('Faltan el nombre de la base de datos y el usuario. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                         else
                                                                           if ( (edtServer.Text='') and (edtNombreBD.Text<>'')  and (edtUsuario.Text<>'') and (edtContrasenna.Text='') )
                                                                             then
                                                                               //ShowMessage('Faltan el nombre del Server y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP a la base de datos.')
                                                                               Application.MessageBox('Faltan el nombre del Server y la contraseña. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                                 else
                                                                                   if ( (edtServer.Text='') and (edtNombreBD.Text<>'')  and (edtUsuario.Text='') and (edtContrasenna.Text<>'') )
                                                                                     then
                                                                                       //ShowMessage('Faltan el nombre del Server y el usuario. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.')
                                                                                       Application.MessageBox('Faltan el nombre del Server y el usuario. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                                         else
                                                                                           if ( (edtServer.Text='') and (edtNombreBD.Text='')  and (edtUsuario.Text<>'') and (edtContrasenna.Text<>'') )
                                                                                             then
                                                                                               //ShowMessage('Faltan el nombre del Server y el nombre de la base de datos. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.')
                                                                                               Application.MessageBox('Faltan el nombre del Server y el nombre de la base de datos. Sin ellos no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                                                 else
                                                                                                   if ( (edtServer.Text='') and (edtNombreBD.Text<>'')  and (edtUsuario.Text<>'') and (edtContrasenna.Text<>'') )
                                                                                                     then
                                                                                                       //ShowMessage('Falta el nombre del Server. Sin él no se puede conectar el sistema HC-CAP 2008 a la base de datos.')
                                                                                                       Application.MessageBox('Falta el nombre del Server. Sin él no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                                                         else
                                                                                                           if ( (edtServer.Text<>'') and (edtNombreBD.Text='')  and (edtUsuario.Text<>'') and (edtContrasenna.Text<>'') )
                                                                                                             then
                                                                                                              //ShowMessage('Falta el nombre de la base de datos. Sin él no se puede conectar el sistema HC-CAP 2008 a la base de datos.')
                                                                                                              Application.MessageBox('Falta el nombre de la base de datos. Sin él no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                                                                else
                                                                                                                  if ( (edtServer.Text<>'') and (edtNombreBD.Text<>'')  and (edtUsuario.Text='') and (edtContrasenna.Text<>'') )
                                                                                                                    then
                                                                                                                      //ShowMessage('Falta el usuario. Sin él no se puede conectar el sistema HC-CAP 2008 a la base de datos.')
                                                                                                                      Application.MessageBox('Falta el usuario. Sin él no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError)
                                                                                                                        else
                                                                                                                          if ( (edtServer.Text<>'') and (edtNombreBD.Text<>'')  and (edtUsuario.Text<>'') and (edtContrasenna.Text='') )
                                                                                                                           then
                                                                                                                             begin
                                                                                                                               Application.MessageBox('Falta la contraseña. Sin ella no se puede conectar el sistema HC-CAP 2008 a la base de datos.','Error',mb_Ok + mb_IconError);
                                                                                                                               //ShowMessage('Falta la contraseña. Sin ella no se puede conectar el sistema HC-CAP 2008 a la base de datos.')
                                                                                                                             end;
                                                                                                                             
          end;

end;

procedure TfrmConectarse.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin
  //frmConectarse.edtContrasenna.Clear;
  frmConectarse.edtContrasenna.SetFocus;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmConectarse.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;

procedure TfrmConectarse.btnCancelarClick(Sender: TObject);
begin
  frmConectarse.Close;
end;

procedure TfrmConectarse.edtContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13])
    then
      btnConectarse.Click;
end;

procedure TfrmConectarse.edtUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key in [#13])
    then
      btnConectarse.Click;
end;

procedure TfrmConectarse.edtNombreBDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key in [#13])
    then
      btnConectarse.Click;
end;

procedure TfrmConectarse.edtServerKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13])
    then
      btnConectarse.Click;
end;

end.
                   
