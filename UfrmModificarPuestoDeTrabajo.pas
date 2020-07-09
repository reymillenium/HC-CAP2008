unit UfrmModificarPuestoDeTrabajo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, AppEvnts, Grids, DBGrids,

  UPuestoDeTrabajo, UDptoCapacitacion, UDataModuleControlDelSistema ;

type
  TfrmModificarPuestoDeTrabajo = class(TForm)
    lblUsuario: TLabel;
    lblNombre: TLabel;
    lblPrimerApellido: TLabel;
    lblSegundoApellido: TLabel;
    lblViejaContrasenna: TLabel;
    lblNuevaContrasenna: TLabel;
    lblPrivilegios: TLabel;
    btnAceptar: TButton;
    btnCancelar: TButton;
    DBComboBoxPrivilegio: TDBComboBox;
    DBedtNombre: TDBEdit;
    DBedtPrimerApellido: TDBEdit;
    DBedtSegundoApellido: TDBEdit;
    DBedtUsuario: TDBEdit;
    DBTextContrasenna: TDBText;
    CheckBoxCambiarContrasenna: TCheckBox;
    edtViejaContrasenna: TEdit;
    edtNuevaContrasenna: TEdit;
    ApplicationEventsModificar: TApplicationEvents;
    btnResetear: TButton;
    lblRepetirContrasenna: TLabel;
    edtRepetirContrasenna: TEdit;
    DBTextID_Usuario: TDBText;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure DBedtNombreKeyPress(Sender: TObject; var Key: Char);
    procedure DBedtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure DBedtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure DBedtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure ContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVerificarUsuarioClick(Sender: TObject);
    //function Encriptar(const S: String; Key: Word): String; stdcall; external '\Dlls\Seguridad.dll'
    //function Desencriptar(const S: String; Key: Word): String; stdcall; external '\Dlls\Seguridad.dll'
    

    procedure RellenarPuestoDeTrabajoTemporal(aPuestoDeTrabajo: TPuestoDeTrabajo);
    procedure ApplicationEventsModificarIdle(Sender: TObject; var Done: Boolean);
    procedure btnResetearClick(Sender: TObject);
    procedure DBComboBoxPrivilegioDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
  private
    { Private declarations }
  public
    { Public declarations }
    TempViejoUsuario: String;
  end;

var
  frmModificarPuestoDeTrabajo: TfrmModificarPuestoDeTrabajo;

implementation
var
    DptoCapacitacion: TDptoCapacitacion;
    TempViejoPuestoDeTrabajo: TPuestoDeTrabajo;
    TempNuevoPuestoDeTrabajo: TPuestoDeTrabajo;
{$R *.dfm}


procedure TfrmModificarPuestoDeTrabajo.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmModificarPuestoDeTrabajo.Close;
end;


procedure TfrmModificarPuestoDeTrabajo.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin
  //Limpio los Edits de vieja, nueva y repetir contraseña
  edtViejaContrasenna.Clear;
  edtNuevaContrasenna.Clear;
  edtRepetirContrasenna.Clear;

  //Deshabilito los labels de vieja, nueva y repetir contraseña
  lblViejaContrasenna.Enabled:= False;
  lblNuevaContrasenna.Enabled:= False;
  lblRepetirContrasenna.Enabled:= False;

  //Deshabilito los Edits de vieja, nueva y repetir contraseña
  edtViejaContrasenna.Enabled:= False;
  edtNuevaContrasenna.Enabled:= False;
  edtRepetirContrasenna.Enabled:= False;

  //Desmarco el CheckBox de Cambiar Contraseña
  CheckBoxCambiarContrasenna.Checked:= False;

  //Creo un Puesto de Trabajo temporal
  TempViejoPuestoDeTrabajo:= TPuestoDeTrabajo.Create;
  
  //Busco el Puesto de Trabajo que debo modificar, en la BD.
  DptoCapacitacion.BuscarPuestoDeTrabajo(TempViejoUsuario);

  //Verifico de si se trata del usuario 'hccap', esencial para el correcto funcionamiento de todo
  if (DBedtUsuario.Text= 'hccap')
    then
      begin
        //Deshabilito el DBEdit del usuario, para que no se pueda cambiar el usuario
        DBedtUsuario.Enabled:= False;

        //Deshabilito el DBComboBox de privilegios, para que no se alteren los privilegios
        DBComboBoxPrivilegio.Enabled:= False;
      end
        else
          begin
            //Habilito el DBEdit del usuario, para que se pueda cambiar el usuario, en los siguientes Puestos de Trabajo.
            DBedtUsuario.Enabled:= True;

            //Habilito el DBComboBox de privilegiosm, para que se alteren los privilegios, en los siguientes Puestos de Trabajo.
            DBComboBoxPrivilegio.Enabled:= True;
          end;
      
  //Guardo en un Puesto de Trabajo temporal los valores mostrados en la forma
  RellenarPuestoDeTrabajoTemporal(TempViejoPuestoDeTrabajo);

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarPuestoDeTrabajo.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;


procedure TfrmModificarPuestoDeTrabajo.btnAceptarClick(Sender: TObject);
var
  ViejoUsuario: String;
  ViejoNombreCompleto: String;
  ViejoPrivilegios: String;

  NuevoUsuario: String;
  NuevoNombreCompleto: String;
  NuevoPrivilegios: String;
begin //Inicio del procedimiento




  //Verifico si se habilitó el cambio de contraseña
  if (CheckBoxCambiarContrasenna.Checked = True)
    then
      begin //Se habilitó el cambio de contraseña
        //Debo verificar que ningún componente (todos), haya quedado vacío
        if (   (DBedtNombre.Text<>'') and (DBedtPrimerApellido.Text<>'') and (DBedtSegundoApellido.Text<>'') and (DBedtUsuario.Text<>'') and (edtViejaContrasenna.Text<>'') and (edtNuevaContrasenna.Text<>'')  )
          then
            begin //Están todos los componentes llenos; con habilitación de contraseña
              //Debo verificar que la vieja contraseña tecleada coincida con la anterior
              if ( DptoCapacitacion.DesencriptarSeudoaleatorio(edtViejaContrasenna.Text) = DBTextContrasenna.Field.Text)
                then
                  begin //La contraseña vieja tecleada coincide; 
                    //Debo verificar que las nuevas contraseñas tecleadas, coincidan ambas
                    if (edtNuevaContrasenna.Text = edtRepetirContrasenna.Text)
                      then
                        begin //Las nuevas contraseñas coinciden, contraseña vieja coincide; componentes llenos; con habilitación de contraseña
                          //Debo verificar que el nuevo usuario no esté ya en la base de datos
                          if (   (DptoCapacitacion.ExisteElPuestoDeTrabajoConUsuario(DBedtUsuario.Text) = False) or (DBedtUsuario.Text = TempViejoPuestoDeTrabajo.ID_Usuario)   )
                            then
                              begin
                                //Creo un Nuevo Puesto de Trabajo temporal
                                TempNuevoPuestoDeTrabajo:= TPuestoDeTrabajo.Create;

                                //Relleno el Nuevo Puesto de Trabajo temporal
                                RellenarPuestoDeTrabajoTemporal(TempNuevoPuestoDeTrabajo);

                                //Relleno los campos que integran la traza
                                NuevoUsuario:= TempNuevoPuestoDeTrabajo.ID_Usuario;
                                NuevoNombreCompleto:= TempNuevoPuestoDeTrabajo.Nombre + ' ' + TempNuevoPuestoDeTrabajo.PrimerApellido + ' ' + TempNuevoPuestoDeTrabajo.SegundoApellido;
                                NuevoPrivilegios:= TempNuevoPuestoDeTrabajo.Privilegios;

                                ViejoUsuario:= TempViejoPuestoDeTrabajo.ID_Usuario;
                                ViejoNombreCompleto:= TempViejoPuestoDeTrabajo.Nombre + ' ' + TempViejoPuestoDeTrabajo.PrimerApellido + ' ' + TempViejoPuestoDeTrabajo.SegundoApellido;
                                ViejoPrivilegios:= TempViejoPuestoDeTrabajo.Privilegios;

                                //Verifico si se cambió al Puesto de Trabajo que está loggeado
                                if (DptoCapacitacion.ElUsuarioEstaLoggeado(DBTextID_Usuario.Field.Text) = True)
                                  then
                                    begin //** Es el mismo que está loggeado
                                      //Verifico si el usuario loggeado se reduce los privilegios a si mismo
                                      if (   (ViejoPrivilegios = 'Administrador') and (NuevoPrivilegios = 'Operador')   )
                                        then
                                          begin //Se los redujo
                                            if MessageDlg('¿Desea reducirse a si mismo los privilegios dentro del sistema HC-CAP 2008? Si lo hace será expulsado(a) automáticamente de la pestaña de <<Control del Sistema>>.', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                                              then
                                                begin //Escoge reducirlos de todas formas
                                                  //Llamo al procedimiento que modifica el Puesto de Trabajo
                                                  DptoCapacitacion.ModificarPuestoDeTrabajo(TempViejoUsuario, TempNuevoPuestoDeTrabajo);

                                                  //Actualizo el DBGrid de los Puestos de Trabajo
                                                  DptoCapacitacion.MostrarPuestosDeTrabajo;

                                                  //Actualizo el Loggin
                                                  DptoCapacitacion.ModificarLoggin(ViejoUsuario, NuevoUsuario, NuevoPrivilegios, TempNuevoPuestoDeTrabajo.Nombre, TempNuevoPuestoDeTrabajo.PrimerApellido, TempNuevoPuestoDeTrabajo.SegundoApellido);

                                                  //Inserto la Traza
                                                  DptoCapacitacion.GuardarTrazaDelSistema('Modificó el Puesto de Trabajo ' + '"' + ViejoUsuario + '"' + ' con privilegios de ' + ViejoPrivilegios + ' y perteneciente a ' + ViejoNombreCompleto + ', por el de ' + '"' + NuevoUsuario + '"' + ' con privilegios de ' + NuevoPrivilegios + ' y perteneciente a ' + NuevoNombreCompleto +  ' y además cambió la contraseña. Como estando loggeado modificó su propio Puesto de Trabajo, las trazas a continuación se generarán con estos nuevos datos. Se redujo a si mismo sus privilegios, por lo que fue expulsado de la pestaña de Control del Sistema.');

                                                  //Actualizo todas las trazas
                                                  DptoCapacitacion.MostrarTodasLasTrazas;

                                                  //Destruyo el viejo Puesto de Trabajo temporal
                                                  TempViejoPuestoDeTrabajo.Destroy;

                                                  //Destruyo el nuevo Puesto de Trabajo temporal
                                                  TempNuevoPuestoDeTrabajo.Destroy;

                                                  //Cierro la forma
                                                  frmModificarPuestoDeTrabajo.Close;
                                                end
                                                  else
                                                    begin //Escoge no reducirlos
                                                      //Destruyo el nuevo Puesto de Trabajo temporal
                                                      TempNuevoPuestoDeTrabajo.Destroy;
                                                    end;
                                          end
                                            else
                                              begin //No se los redujo
                                                //Llamo al procedimiento que modifica el Puesto de Trabajo
                                                DptoCapacitacion.ModificarPuestoDeTrabajo(TempViejoUsuario, TempNuevoPuestoDeTrabajo);

                                                //Actualizo el DBGrid de los Puestos de Trabajo
                                                DptoCapacitacion.MostrarPuestosDeTrabajo;

                                                //Actualizo el Loggin
                                                DptoCapacitacion.ModificarLoggin(ViejoUsuario, NuevoUsuario, NuevoPrivilegios, TempNuevoPuestoDeTrabajo.Nombre, TempNuevoPuestoDeTrabajo.PrimerApellido, TempNuevoPuestoDeTrabajo.SegundoApellido);

                                                //Inserto la Traza
                                                DptoCapacitacion.GuardarTrazaDelSistema('Modificó el Puesto de Trabajo ' + '"' + ViejoUsuario + '"' + ' con privilegios de ' + ViejoPrivilegios + ' y perteneciente a ' + ViejoNombreCompleto + ', por el de ' + '"' + NuevoUsuario + '"' + ' con privilegios de ' + NuevoPrivilegios + ' y perteneciente a ' + NuevoNombreCompleto +  ' y además cambió la contraseña. Debido a que estando loggeado realizó una modificación de su propio Puesto de Trabajo, las trazas a continuación se generarán con estos nuevos datos. Sus privilegios no fueron variados.');

                                                //Actualizo todas las trazas
                                                DptoCapacitacion.MostrarTodasLasTrazas;

                                                //Destruyo el viejo Puesto de Trabajo temporal
                                                TempViejoPuestoDeTrabajo.Destroy;

                                                //Destruyo el nuevo Puesto de Trabajo temporal
                                                TempNuevoPuestoDeTrabajo.Destroy;

                                                //Cierro la forma
                                                frmModificarPuestoDeTrabajo.Close;
                                              end;
                                    end
                                      else
                                        begin //** No es el mismo que está loggeado
                                          //Llamo al procedimiento que modifica el Puesto de Trabajo
                                          DptoCapacitacion.ModificarPuestoDeTrabajo(TempViejoUsuario, TempNuevoPuestoDeTrabajo);

                                          //Actualizo el DBGrid de los Puestos de Trabajo
                                          DptoCapacitacion.MostrarPuestosDeTrabajo;

                                          //Actualizo el Loggin
                                          DptoCapacitacion.ModificarLoggin(ViejoUsuario, NuevoUsuario, NuevoPrivilegios, TempNuevoPuestoDeTrabajo.Nombre, TempNuevoPuestoDeTrabajo.PrimerApellido, TempNuevoPuestoDeTrabajo.SegundoApellido);

                                          //Inserto la Traza
                                          DptoCapacitacion.GuardarTrazaDelSistema('Modificó el Puesto de Trabajo ' + '"' + ViejoUsuario + '"' + ' con privilegios de ' + ViejoPrivilegios + ' y perteneciente a ' + ViejoNombreCompleto + ', por el de ' + '"' + NuevoUsuario + '"' + ' con privilegios de ' + NuevoPrivilegios + ' y perteneciente a ' + NuevoNombreCompleto +  ' y además cambió la contraseña.');

                                          //Actualizo todas las trazas
                                          DptoCapacitacion.MostrarTodasLasTrazas;

                                          //Destruyo el viejo Puesto de Trabajo temporal
                                          TempViejoPuestoDeTrabajo.Destroy;

                                          //Destruyo el nuevo Puesto de Trabajo temporal
                                          TempNuevoPuestoDeTrabajo.Destroy;

                                          //Cierro la forma
                                          frmModificarPuestoDeTrabajo.Close;
                                        end;
                              end
                                else
                                  begin
                                    Application.MessageBox('El nuevo usuario tecleado ya existe en la base de datos. Debe utilizar otro.','Error',mb_Ok + mb_IconError);
                                    DBedtUsuario.SetFocus;
                                  end;
                        end //Fin de nuevas contraseñas coinciden, contraseña vieja coincide; componentes llenos; con habilitación de contraseña

                          else

                            begin //Las nuevas contraseñas NO coinciden, contraseña vieja coincide; componentes llenos; con habilitación de contraseña
                              Application.MessageBox('La contraseñas nuevas tecleadas no coinciden entre sí.', 'Error',mb_Ok + mb_IconError);
                              edtRepetirContrasenna.SetFocus;
                            end; //Fin de nuevas contraseñas NO coinciden, contraseña vieja coincide; componentes llenos; con habilitación de contraseña
                  end  //Fin de contraseña vieja tecleada coincide; componentes llenos; con habilitación de contraseña

                    else
                    
                      begin //La contraseña vieja tecleada NO coincide; componentes llenos; con habilitación de contraseña
                        Application.MessageBox('La contraseña vieja tecleada no coincide con la de la base de datos. No se puede modificar el Puesto de Trabajo.', 'Error',mb_Ok + mb_IconError);
                        edtViejaContrasenna.SetFocus;
                      end; //Fin de contraseña vieja tecleada NO coincide; componentes llenos; con habilitación de contraseña
            end //Fin de componentes llenos; con habilitación de contraseña

            
              else


                begin //No están llenos todos los componentes; con habilitación de contraseña
                  Application.MessageBox('Faltan datos por entrar.','Error',mb_Ok + mb_IconError);
                end; //Fin de componentes no llenos; con habilitación de contraseña
      end //Fin de habilitación de contraseña




        else




          begin //No se habilitó el cambio de contraseña
            //Debo verificar que ningún componente (menos los de la contraseña), haya quedado vacío
            if (   (DBedtNombre.Text<>'') and (DBedtPrimerApellido.Text<>'') and (DBedtSegundoApellido.Text<>'') and (DBedtUsuario.Text<>'')  )
              then
                begin //Están todos los componentes llenos; sin habilitación de contraseña
                  //Debo verificar que el nuevo usuario no esté ya en la base de datos
                  if (   (DptoCapacitacion.ExisteElPuestoDeTrabajoConUsuario(DBedtUsuario.Text) = False) or (DBedtUsuario.Text = TempViejoPuestoDeTrabajo.ID_Usuario)   )
                    then
                      begin
                        //Creo un Nuevo Puesto de Trabajo temporal
                        TempNuevoPuestoDeTrabajo:= TPuestoDeTrabajo.Create;

                        //Relleno el Nuevo Puesto de Trabajo temporal
                        RellenarPuestoDeTrabajoTemporal(TempNuevoPuestoDeTrabajo);

                        //Relleno los campos que integran la traza
                        NuevoUsuario:= TempNuevoPuestoDeTrabajo.ID_Usuario;
                        NuevoNombreCompleto:= TempNuevoPuestoDeTrabajo.Nombre + ' ' + TempNuevoPuestoDeTrabajo.PrimerApellido + ' ' + TempNuevoPuestoDeTrabajo.SegundoApellido;
                        NuevoPrivilegios:= TempNuevoPuestoDeTrabajo.Privilegios;

                        ViejoUsuario:= TempViejoPuestoDeTrabajo.ID_Usuario;
                        ViejoNombreCompleto:= TempViejoPuestoDeTrabajo.Nombre + ' ' + TempViejoPuestoDeTrabajo.PrimerApellido + ' ' + TempViejoPuestoDeTrabajo.SegundoApellido;
                        ViejoPrivilegios:= TempViejoPuestoDeTrabajo.Privilegios;

                        //Verifico si se cambió al Puesto de Trabajo que está loggeado
                        if (DptoCapacitacion.ElUsuarioEstaLoggeado(DBTextID_Usuario.Field.Text) = True)
                          then
                            begin //** Es el mismo que está loggeado
                              //Verifico si el usuario loggeado se reduce los privilegios a si mismo
                              if (   (ViejoPrivilegios = 'Administrador') and (NuevoPrivilegios = 'Operador')   )
                                then
                                  begin //Se los redujo
                                    if MessageDlg('¿Desea reducirse a si mismo los privilegios dentro del sistema HC-CAP 2008? Si lo hace será expulsado(a) automáticamente de la pestaña de <<Control del Sistema>>.', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                                      then
                                        begin //Escoge reducirlos de todas formas
                                          //Llamo al procedimiento que modifica el Puesto de Trabajo
                                          DptoCapacitacion.ModificarPuestoDeTrabajo(TempViejoUsuario, TempNuevoPuestoDeTrabajo);

                                          //Actualizo el DBGrid de los Puestos de Trabajo
                                          DptoCapacitacion.MostrarPuestosDeTrabajo;

                                          //Actualizo el Loggin
                                          DptoCapacitacion.ModificarLoggin(ViejoUsuario, NuevoUsuario, NuevoPrivilegios, TempNuevoPuestoDeTrabajo.Nombre, TempNuevoPuestoDeTrabajo.PrimerApellido, TempNuevoPuestoDeTrabajo.SegundoApellido);

                                          //Inserto la Traza
                                          DptoCapacitacion.GuardarTrazaDelSistema('Modificó el Puesto de Trabajo ' + '"' + ViejoUsuario + '"' + ' con privilegios de ' + ViejoPrivilegios + ' y perteneciente a ' + ViejoNombreCompleto + ', por el de ' + '"' + NuevoUsuario + '"' + ' con privilegios de ' + NuevoPrivilegios + ' y perteneciente a ' + NuevoNombreCompleto +  '. Como estando loggeado modificó su propio Puesto de Trabajo, las trazas a continuación se generarán con estos nuevos datos. Se redujo a si mismo sus privilegios, por lo que fue expulsado de la pestaña de Control del Sistema.');

                                          //Actualizo todas las trazas
                                          DptoCapacitacion.MostrarTodasLasTrazas;

                                          //Destruyo el viejo Puesto de Trabajo temporal
                                          TempViejoPuestoDeTrabajo.Destroy;

                                          //Destruyo el nuevo Puesto de Trabajo temporal
                                          TempNuevoPuestoDeTrabajo.Destroy;

                                          //Cierro la forma
                                          frmModificarPuestoDeTrabajo.Close;
                                        end
                                          else
                                            begin //Escoge no reducirlos
                                              //Destruyo el nuevo Puesto de Trabajo temporal
                                              TempNuevoPuestoDeTrabajo.Destroy;
                                            end;
                                  end
                                    else
                                      begin //No se los redujo
                                        //Llamo al procedimiento que modifica el Puesto de Trabajo
                                        DptoCapacitacion.ModificarPuestoDeTrabajo(TempViejoUsuario, TempNuevoPuestoDeTrabajo);

                                        //Actualizo el DBGrid de los Puestos de Trabajo
                                        DptoCapacitacion.MostrarPuestosDeTrabajo;

                                        //Actualizo el Loggin
                                        DptoCapacitacion.ModificarLoggin(ViejoUsuario, NuevoUsuario, NuevoPrivilegios, TempNuevoPuestoDeTrabajo.Nombre, TempNuevoPuestoDeTrabajo.PrimerApellido, TempNuevoPuestoDeTrabajo.SegundoApellido);

                                        //Inserto la Traza
                                        DptoCapacitacion.GuardarTrazaDelSistema('Modificó el Puesto de Trabajo ' + '"' + ViejoUsuario + '"' + ' con privilegios de ' + ViejoPrivilegios + ' y perteneciente a ' + ViejoNombreCompleto + ', por el de ' + '"' + NuevoUsuario + '"' + ' con privilegios de ' + NuevoPrivilegios + ' y perteneciente a ' + NuevoNombreCompleto +  '. Debido a que estando loggeado realizó una modificación de su propio Puesto de Trabajo, las trazas a continuación se generarán con estos nuevos datos. Sus privilegios no fueron variados.');

                                        //Actualizo todas las trazas
                                        DptoCapacitacion.MostrarTodasLasTrazas;

                                        //Destruyo el viejo Puesto de Trabajo temporal
                                        TempViejoPuestoDeTrabajo.Destroy;

                                        //Destruyo el nuevo Puesto de Trabajo temporal
                                        TempNuevoPuestoDeTrabajo.Destroy;

                                        //Cierro la forma
                                        frmModificarPuestoDeTrabajo.Close;
                                      end;
                            end
                              else
                                begin //** No es el mismo que está loggeado
                                  //Llamo al procedimiento que modifica el Puesto de Trabajo
                                  DptoCapacitacion.ModificarPuestoDeTrabajo(TempViejoUsuario, TempNuevoPuestoDeTrabajo);

                                  //Actualizo el DBGrid de los Puestos de Trabajo
                                  DptoCapacitacion.MostrarPuestosDeTrabajo;

                                  //Actualizo el Loggin
                                  DptoCapacitacion.ModificarLoggin(ViejoUsuario, NuevoUsuario, NuevoPrivilegios, TempNuevoPuestoDeTrabajo.Nombre, TempNuevoPuestoDeTrabajo.PrimerApellido, TempNuevoPuestoDeTrabajo.SegundoApellido);

                                  //Inserto la Traza
                                  DptoCapacitacion.GuardarTrazaDelSistema('Modificó el Puesto de Trabajo ' + '"' + ViejoUsuario + '"' + ' con privilegios de ' + ViejoPrivilegios + ' y perteneciente a ' + ViejoNombreCompleto + ', por el de ' + '"' + NuevoUsuario + '"' + ' con privilegios de ' + NuevoPrivilegios + ' y perteneciente a ' + NuevoNombreCompleto +  '.');

                                  //Actualizo todas las trazas
                                  DptoCapacitacion.MostrarTodasLasTrazas;

                                  //Destruyo el viejo Puesto de Trabajo temporal
                                  TempViejoPuestoDeTrabajo.Destroy;

                                  //Destruyo el nuevo Puesto de Trabajo temporal
                                  TempNuevoPuestoDeTrabajo.Destroy;

                                  //Cierro la forma
                                  frmModificarPuestoDeTrabajo.Close;
                                end;
                      end
                        else
                          begin
                            Application.MessageBox('El nuevo usuario tecleado ya existe en la base de datos. Debe utilizar otro.','Error',mb_Ok + mb_IconError);
                            DBedtUsuario.SetFocus;
                          end;
                end //Fin de componentes llenos; sin habilitación de contraseña


                  else


                    begin //No están llenos todos los componentes; sin habilitación de contraseña
                      Application.MessageBox('Faltan datos por entrar.','Error',mb_Ok + mb_IconError);
                    end; //Fin de componentes no llenos; sin habilitación de contraseña
          end; //Fin de NO habilitación de contraseña



          
end; //Fin del procedimiento


procedure TfrmModificarPuestoDeTrabajo.DBedtNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;


procedure TfrmModificarPuestoDeTrabajo.DBedtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;


procedure TfrmModificarPuestoDeTrabajo.DBedtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;


procedure TfrmModificarPuestoDeTrabajo.DBedtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;

procedure TfrmModificarPuestoDeTrabajo.ContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;
end;


procedure TfrmModificarPuestoDeTrabajo.btnVerificarUsuarioClick(Sender: TObject);
begin
  //Verifica que no haya un usuario igual en la base de datos (¡Por programar!)
end;


procedure TfrmModificarPuestoDeTrabajo.RellenarPuestoDeTrabajoTemporal(aPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Relleno el Puesto de Trabajo temporal con los valores de los componentes DB de la forma.
  aPuestoDeTrabajo.Nombre:= frmModificarPuestoDeTrabajo.DBedtNombre.Text;
  aPuestoDeTrabajo.PrimerApellido:= frmModificarPuestoDeTrabajo.DBedtPrimerApellido.Text;
  aPuestoDeTrabajo.SegundoApellido:= frmModificarPuestoDeTrabajo.DBedtSegundoApellido.Text;
  aPuestoDeTrabajo.ID_Usuario:= frmModificarPuestoDeTrabajo.DBedtUsuario.Text;
  aPuestoDeTrabajo.Privilegios:= frmModificarPuestoDeTrabajo.DBComboBoxPrivilegio.Text;
  if (CheckBoxCambiarContrasenna.Checked = True)
    then
      aPuestoDeTrabajo.Contrasenna:= DptoCapacitacion.EncriptarSeudoaleatorio(edtNuevaContrasenna.Text)
        else
          aPuestoDeTrabajo.Contrasenna:= frmModificarPuestoDeTrabajo.DBTextContrasenna.Field.Text;
end;


procedure TfrmModificarPuestoDeTrabajo.ApplicationEventsModificarIdle(
  Sender: TObject; var Done: Boolean);
begin
  if (CheckBoxCambiarContrasenna.Checked = True)
    then
      begin
        //Deshabilito los componentes de la contraseña
        lblViejaContrasenna.Enabled:= True;
        edtViejaContrasenna.Enabled:= True;
        lblNuevaContrasenna.Enabled:= True;
        edtNuevaContrasenna.Enabled:= True;
        lblRepetirContrasenna.Enabled:= True;
        edtRepetirContrasenna.Enabled:= True;
      end
        else
          begin
            //Habilito los componentes de la contraseña
            lblViejaContrasenna.Enabled:= False;
            edtViejaContrasenna.Enabled:= False;
            lblNuevaContrasenna.Enabled:= False;
            edtNuevaContrasenna.Enabled:= False;
            lblRepetirContrasenna.Enabled:= False;
            edtRepetirContrasenna.Enabled:= False;

            //Limpio los Edits de la contraseña
            edtViejaContrasenna.Clear;
            edtNuevaContrasenna.Clear;
            edtRepetirContrasenna.Clear;

          end;
end;

procedure TfrmModificarPuestoDeTrabajo.btnResetearClick(Sender: TObject);
begin
  //Pongo en los componentes DB de la forma los datos que tenían inicialmente
  DBedtNombre.Text:= TempViejoPuestoDeTrabajo.Nombre;
  DBedtPrimerApellido.Text:= TempViejoPuestoDeTrabajo.PrimerApellido;
  DBedtSegundoApellido.Text:= TempViejoPuestoDeTrabajo.SegundoApellido;
  DBedtUsuario.Text:= TempViejoPuestoDeTrabajo.ID_Usuario;
  DBComboBoxPrivilegio.Text:= TempViejoPuestoDeTrabajo.Privilegios;
  
  //Busco el Puesto de Trabajo que debo modificar, en la BD.
  DptoCapacitacion.BuscarPuestoDeTrabajo(TempViejoUsuario);
end;

procedure TfrmModificarPuestoDeTrabajo.DBComboBoxPrivilegioDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed= TColor($006C6CFF);
begin
  with (Control as TDBComboBox) do
    begin
      {El primer Item (Operador) en verde pálido y
       el segundo Item (Administrador) en rojo pálido}
      if (Index= 0)
        then
          Canvas.Brush.Color:= clPaleGreen
            else
              begin
                if (   (Index= 1) and (DBedtUsuario.Text<> 'hccap')   )
                  then
                    Canvas.Brush.Color:= clPaleRed;

                if (   (Index= 1) and (DBedtUsuario.Text= 'hccap')   )
                  then
                    Canvas.Brush.Color:= clStrongRed;
              end;
              
      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left,Rect.Top,Items[Index]);
    end; 
end;


procedure TfrmModificarPuestoDeTrabajo.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;


end.
