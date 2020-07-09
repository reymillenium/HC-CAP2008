unit UfrmModificarHospitalDeExcelenciaYCapacitador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, Mask, DBCtrls, StrUtils,

  UDptoCapacitacion, UCapacitador, UHospital, UDataModuleHospitalesDeExcelencia;

type
  TfrmModificarHospitalDeExcelenciaYCapacitador = class(TForm)
    GroupBoxDatosDelHospital: TGroupBox;
    GroupBoxDatosDeSuCapacitador: TGroupBox;
    lblNombreHospital: TLabel;
    lblProvincia: TLabel;
    lblDireccion: TLabel;
    ComboBoxProvinciasHospitalesDeExcelencia: TComboBox;
    ImageListProvincias: TImageList;
    btnAceptarHospitalDeExcelenciaYCapacitador: TButton;
    btnResetearHospitalDeExcelenciaYCapacitador: TButton;
    btnCancelarHospitalDeExcelenciaYCapacitador: TButton;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBedtNombreHospital: TDBEdit;
    DBTextProvincia: TDBText;
    DBMemoDireccion: TDBMemo;
    DBedtNombreCapac: TDBEdit;
    DBedtPrimerApellidoCapac: TDBEdit;
    DBedtSegundoApellidoCapac: TDBEdit;
    DBedtCICapac: TDBEdit;
    DBMemoTelefonosCapac: TDBMemo;
    DBMemoCorreosCapac: TDBMemo;
    procedure ComboBoxProvinciasHospitalesDeExcelenciaDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure btnResetearHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure btnAceptarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure OnKeyPressSoloNumerosEnteros(Sender: TObject; var Key: Char);
    procedure OnKeyPressSoloNombres(Sender: TObject; var Key: Char);
    procedure DBedtNombreHospitalKeyPress(Sender: TObject; var Key: Char);

    procedure RellenarHospitaldeExcelenciaTemporal(aHospital: THospital);
    procedure RellenarCapacitadorTemporal(aCapacitador: TCapacitador);
    function HuboCambiosEnElHospitalDeExcelencia: Boolean;
    function HuboCambiosEnElCapacitador: Boolean;
    function HuboCambiosEnCorreos: Boolean;

    function TodoEstaPerfecto: Boolean;
    function CorreosPerfectos: Boolean;
    procedure MostrarMensajeDeError;
    procedure DetallarError;
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message    
    WM_WINDOWPOSCHANGING ;

  private
    { Private declarations }
  public
    { Public declarations }
    TempID_Hospital: Integer;
  end;

var
  frmModificarHospitalDeExcelenciaYCapacitador: TfrmModificarHospitalDeExcelenciaYCapacitador;

implementation
var
    DptoCapacitacion: TDptoCapacitacion;

    TempViejoCapacitador: TCapacitador;
    TempNuevoCapacitador: TCapacitador;

    TempViejoHospital: THospital;
    TempNuevoHospital: THospital;

    
{$R *.dfm}



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.ComboBoxProvinciasHospitalesDeExcelenciaDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var 
   bTemp:TBitmap;
begin 
  bTemp:=TBitmap.Create;
  if Index<ImageListProvincias.Count then
  begin 
    ImageListProvincias.GetBitmap(Index,bTemp);
  end; 
 
  with (Control as TComboBox) do 
  begin 
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left+ImageListProvincias.Height+2,Rect.Top,Items[Index]);
    Canvas.Draw(Rect.Left,Rect.Top,bTemp);
  end;
  bTemp.Free;
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.FormShow(
  Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Creo un Hospital temporal
  TempViejoHospital:= THospital.Create;

  //Creo un Capacitador temporal
  TempViejoCapacitador:= TCapacitador.Create;

  //Busco el Hospital que debo modificar, en la BD.
  DptoCapacitacion.MostrarHospitalDeExcelencia(TempID_Hospital);

  //Busco el Capacitador que debo modificar, en la BD.
  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(TempID_Hospital);

  //Guardo en el Hospital de Excelencia temporal los valores mostrados en la forma
  RellenarHospitaldeExcelenciaTemporal(TempViejoHospital);

  //Guardo en el Capacitador temporal los valores mostrados en la forma
  RellenarCapacitadorTemporal(TempViejoCapacitador);

  //Coloco el ComboBox en la opción de provincias que toque
  if (DBTextProvincia.Field.Text = 'Camaguey')
    then
      ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 0
        else
          if (DBTextProvincia.Field.Text = 'Ciego de Ávila')
            then
              ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 1
                 else
                   if (DBTextProvincia.Field.Text = 'Cienfuegos')
                     then
                       ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 2
                         else
                           if (DBTextProvincia.Field.Text = 'Ciudad de la Habana')
                             then
                               ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 3
                                 else
                                   if (DBTextProvincia.Field.Text = 'Granma')
                                     then
                                       ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 4

  else
    if (DBTextProvincia.Field.Text = 'Guantánamo')
      then
        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 5
          else
            if (DBTextProvincia.Field.Text = 'Holguín')
              then
                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 6
                  else
                    if (DBTextProvincia.Field.Text = 'Isla de la Juventud')
                      then
                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 7
                          else
                            if (DBTextProvincia.Field.Text = 'La Habana')
                              then
                                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 8
                                  else
                                    if (DBTextProvincia.Field.Text = 'Las Tunas')
                                      then
                                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 9

  else
    if (DBTextProvincia.Field.Text = 'Matanzas')
      then
        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 10
          else
            if (DBTextProvincia.Field.Text = 'Pinar del Rio')
              then
                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 11
                  else
                    if (DBTextProvincia.Field.Text = 'Sancti Spíritus')
                      then
                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 12
                          else
                            if (DBTextProvincia.Field.Text = 'Santiago de Cuba')
                              then
                                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 13
                                  else
                                    if (DBTextProvincia.Field.Text = 'Villa Clara')
                                      then
                                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 14;

  //Coloco el Focus en el DBEdit del nombre del Capacitador
  DBedtNombreCapac.SetFocus;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarHospitalDeExcelenciaYCapacitador.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.btnCancelarHospitalDeExcelenciaYCapacitadorClick(
  Sender: TObject);
begin
  //Cierro la forma
  frmModificarHospitalDeExcelenciaYCapacitador.Close;
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.btnResetearHospitalDeExcelenciaYCapacitadorClick(
  Sender: TObject);
var
  provincia: String;
begin
  provincia:= DBTextProvincia.Field.Text;
  //Reseteo los datos de los componentes DB del Hospital de Excelencia, a su estado inicial
  DBedtNombreHospital.Text:= TempViejoHospital.NombreHospital;

  if (DBTextProvincia.Field.Text = 'Camaguey')
    then
      ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 0
        else
          if (DBTextProvincia.Field.Text = 'Ciego de Ávila')
            then
              ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 1
                 else
                   if (DBTextProvincia.Field.Text = 'Cienfuegos')
                     then
                       ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 2
                         else
                           if (DBTextProvincia.Field.Text = 'Ciudad de la Habana')
                             then
                               ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 3
                                 else
                                   if (DBTextProvincia.Field.Text = 'Granma')
                                     then
                                       ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 4

  else
    if (DBTextProvincia.Field.Text = 'Guantánamo')
      then
        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 5
          else
            if (DBTextProvincia.Field.Text = 'Holguín')
              then
                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 6
                  else
                    if (DBTextProvincia.Field.Text = 'Isla de la Juventud')
                      then
                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 7
                          else
                            if (DBTextProvincia.Field.Text = 'La Habana')
                              then
                                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 8
                                  else
                                    if (DBTextProvincia.Field.Text = 'Las Tunas')
                                      then
                                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 9

  else
    if (DBTextProvincia.Field.Text = 'Matanzas')
      then
        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 10
          else
            if (DBTextProvincia.Field.Text = 'Pinar del Rio')
              then
                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 11
                  else
                    if (DBTextProvincia.Field.Text = 'Sancti Spíritus')
                      then
                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 12
                          else
                            if (DBTextProvincia.Field.Text = 'Santiago de Cuba')
                              then
                                ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 13
                                  else
                                    if (DBTextProvincia.Field.Text = 'Villa Clara')
                                      then
                                        ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 14;

  DBMemoDireccion.Text:= TempViejoHospital.Direccion;

  //Reseteo los datos de los componentes DB del Capacitador, a su estado inicial
  DBedtNombreCapac.Text:= TempViejoCapacitador.NombreCapacitador;
  DBedtPrimerApellidoCapac.Text:= TempViejoCapacitador.PrimerApellidoCapacitador;
  DBedtSegundoApellidoCapac.Text:= TempViejoCapacitador.SegundoApellidoCapacitador;
  DBedtCICapac.Text:= TempViejoCapacitador.NumeroCarneCapacitador;
  DBMemoTelefonosCapac.Text:= TempViejoCapacitador.TelefonosCapacitador;
  DBMemoCorreosCapac.Text:= TempViejoCapacitador.CorreosCapacitador;

  //Busco el Hospital que debo modificar, en la BD.
  DptoCapacitacion.MostrarHospitalDeExcelencia(TempID_Hospital);

  //Busco el Capacitador que debo modificar, en la BD.
  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(TempID_Hospital);
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.btnAceptarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
var
  ViejoNombreHospital, ViejoProvincia, ViejoDireccion, ViejoNombreCapac, ViejoPrimerApellido, ViejoSegundoApellido, ViejoNumeroCI, ViejoTelefonos, ViejoCorreos: AnsiString;
  NuevoNombreHospital, NuevoProvincia, NuevoDireccion, NuevoNombreCapac, NuevoPrimerApellido, NuevoSegundoApellido, NuevoNumeroCI, NuevoTelefonos, NuevoCorreos: AnsiString;
begin
  //Verifico primero si todos los campos importantes no fueron vaciados completamente (dejados en blanco)
  if (TodoEstaPerfecto)
    then
      begin
        //Creo un Nuevo Hospital temporal
        TempNuevoHospital:= THospital.Create;

        //Creo un Nuevo Capacitador temporal
        TempNuevoCapacitador:= TCapacitador.Create;

        //Relleno el Nuevo Hospital temporal
        RellenarHospitaldeExcelenciaTemporal(TempNuevoHospital);

        //Relleno el Nuevo Capacitador temporal
        RellenarCapacitadorTemporal(TempNuevoCapacitador);

        //Llamo al procedimiento que modifica el Hospital de Excelencia en la BD
        DptoCapacitacion.ModificarHospitalDeExcelencia(TempID_Hospital, TempNuevoHospital);

        //Llamo al procedimiento que modifica al Capacitador en la BD
        DptoCapacitacion.ModificarCapacitador(TempID_Hospital, TempNuevoCapacitador);

        //Relleno los componentes Viejos de la traza
        ViejoNombreHospital:= TempViejoHospital.NombreHospital;
        ViejoProvincia:= TempViejoHospital.Provincia;

        if (TempViejoHospital.Direccion<>'')
          then
            ViejoDireccion:= TempViejoHospital.Direccion
              else
                ViejoDireccion:= 'una dirección desconocida';

        if (TempViejoCapacitador.NombreCapacitador<>'')
          then
            ViejoNombreCapac:= TempViejoCapacitador.NombreCapacitador
              else
                ViejoNombreCapac:= 'desconocido';

        if (TempViejoCapacitador.PrimerApellidoCapacitador<>'')
          then
            ViejoPrimerApellido:= ' ' + TempViejoCapacitador.PrimerApellidoCapacitador
              else
                ViejoPrimerApellido:= '';

        if (TempViejoCapacitador.SegundoApellidoCapacitador<>'')
          then
              ViejoSegundoApellido:= ' ' + TempViejoCapacitador.SegundoApellidoCapacitador
                else
                  ViejoSegundoApellido:= '';

        if (TempViejoCapacitador.NumeroCarneCapacitador<>'')
          then
              ViejoNumeroCI:= TempViejoCapacitador.NumeroCarneCapacitador
                else
                  ViejoNumeroCI:= 'desconocido';

        if (TempViejoCapacitador.TelefonosCapacitador<>'')
          then
              ViejoTelefonos:= TempViejoCapacitador.TelefonosCapacitador
                else
                  ViejoTelefonos:= 'desconocido';

        if (TempViejoCapacitador.CorreosCapacitador<>'')
          then
            ViejoCorreos:= TempViejoCapacitador.CorreosCapacitador
              else
                ViejoCorreos:= 'desconocido';

        //Relleno los componentes Nuevos de la traza
        NuevoNombreHospital:= TempNuevoHospital.NombreHospital;
        NuevoProvincia:= TempNuevoHospital.Provincia;

        if (TempNuevoHospital.Direccion<>'')
          then
            NuevoDireccion:= TempNuevoHospital.Direccion
              else
                NuevoDireccion:= 'una dirección desconocida';

        if (TempNuevoCapacitador.NombreCapacitador<>'')
          then
            NuevoNombreCapac:= TempNuevoCapacitador.NombreCapacitador
              else
                NuevoNombreCapac:= 'desconocido';

        if (TempNuevoCapacitador.PrimerApellidoCapacitador<>'')
          then
            NuevoPrimerApellido:= ' ' + TempNuevoCapacitador.PrimerApellidoCapacitador
              else
                NuevoPrimerApellido:= '';

        if (TempNuevoCapacitador.SegundoApellidoCapacitador<>'')
          then
              NuevoSegundoApellido:= ' ' + TempNuevoCapacitador.SegundoApellidoCapacitador
                else
                  NuevoSegundoApellido:= '';

        if (TempNuevoCapacitador.NumeroCarneCapacitador<>'')
          then
              NuevoNumeroCI:= TempNuevoCapacitador.NumeroCarneCapacitador
                else
                  NuevoNumeroCI:= 'desconocido';

        if (TempNuevoCapacitador.TelefonosCapacitador<>'')
          then
              NuevoTelefonos:= TempNuevoCapacitador.TelefonosCapacitador
                else
                  NuevoTelefonos:= 'desconocido';

        if (TempNuevoCapacitador.CorreosCapacitador<>'')
          then
            NuevoCorreos:= TempNuevoCapacitador.CorreosCapacitador
              else
                NuevoCorreos:= 'desconocido';

        if (  (HuboCambiosEnElHospitalDeExcelencia = True) and (HuboCambiosEnElCapacitador = True)   )
          then
            begin
              //Actualizo el DBGrid del listado de los Hospitales de Excelencia de todo el país, en la pestaña de administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

              //Actualizo los componentes DB del Capacitador, en la pestaña de administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(TempID_Hospital);

              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Modificó un Hospital de Excelencia inicialmente de nombre ' + ViejoNombreHospital + ', perteneciente a la provincia de ' + ViejoProvincia + ' y radicado en ' + ViejoDireccion + ', el cual después adoptó el nombre ' + NuevoNombreHospital + ', perteneciente a la provincia de ' + NuevoProvincia + ' y radicado en ' + NuevoDireccion + '. El mismo tenía asociado un Capacitador de nombre ' + ViejoNombreCapac + ViejoPrimerApellido + ViejoSegundoApellido + ', con carné de identidad ' + ViejoNumeroCI + ', su teléfono era ' + ViejoTelefonos + ' y su correo electrónico era ' + ViejoCorreos + ', pero luego tuvo asociado un Capacitador de nombre ' + NuevoNombreCapac + NuevoPrimerApellido + NuevoSegundoApellido + ', con carné de identidad ' + NuevoNumeroCI + ', el teléfono ' + NuevoTelefonos + ' y con correo electrónico ' + NuevoCorreos + '.');
            end;

        if (  (HuboCambiosEnElHospitalDeExcelencia = True) and (HuboCambiosEnElCapacitador = False)   )
          then
            begin
              //Actualizo el DBGrid del listado de los Hospitales de Excelencia de todo el país, en la pestaña de administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

              //Actualizo los componentes DB del Capacitador, en la pestaña de administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(TempID_Hospital);

              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Modificó un Hospital de Excelencia inicialmente de nombre ' + ViejoNombreHospital + ', perteneciente a la provincia de ' + ViejoProvincia + ' y radicado en ' + ViejoDireccion + ', el cual después adoptó el nombre ' + NuevoNombreHospital + ', perteneciente a la provincia de ' + NuevoProvincia + ' y radicado en ' + NuevoDireccion + '. El mismo tenía asociado un Capacitador de nombre ' + ViejoNombreCapac + ViejoPrimerApellido + ViejoSegundoApellido + ', con carné de identidad ' + ViejoNumeroCI + ', su teléfono era ' + ViejoTelefonos + ' y su correo electrónico era ' + ViejoCorreos + ', y sus datos no fueron variados.');
            end;

        if (  (HuboCambiosEnElHospitalDeExcelencia = False) and (HuboCambiosEnElCapacitador = True)   )
          then
            begin
              //Actualizo los componentes DB del Capacitador, en la pestaña de administración de Hospitales y Capacitadores
              DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(TempID_Hospital);

              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Modificó los datos del Capacitador del Hospital de Excelencia con nombre ' + ViejoNombreHospital + ', perteneciente a la provincia de ' + ViejoProvincia + ' y radicado en ' + ViejoDireccion + '. El Capacitador respondía al nombre de ' + ViejoNombreCapac + ViejoPrimerApellido + ViejoSegundoApellido + ', con carné de identidad ' + ViejoNumeroCI + ', su teléfono era ' + ViejoTelefonos + ' y su correo electrónico era ' + ViejoCorreos + ', pero luego tuvo asociado un Capacitador de nombre ' + NuevoNombreCapac + NuevoPrimerApellido + NuevoSegundoApellido + ', con carné de identidad ' + NuevoNumeroCI + ', el teléfono ' + NuevoTelefonos + ' y con correo electrónico ' + NuevoCorreos + '.');
            end;

        //Verifico si hubo modificaciones en los correos
        if (HuboCambiosEnCorreos = True)
          then
            begin
              //Elimino los grupos de correos almacenados en la BD
              DptoCapacitacion.EliminarGruposDeCorreos;
            end;

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;
                    
        //Destruyo el viejo Hospital temporal
        TempViejoHospital.Destroy;

        //Destruyo el viejo Capacitador temporal
        TempViejoCapacitador.Destroy;

        //Destruyo el Nuevo Hospital temporal
        TempNuevoHospital.Destroy;

        //Destruyo el Nuevo Capacitador temporal
        TempNuevoCapacitador.Destroy;

        //Cierro la forma
        frmModificarHospitalDeExcelenciaYCapacitador.Close;
      end
        else
          begin
            //Muestro en qué consistió el error
            MostrarMensajeDeError;

            //Pongo el focus en el componente origen del error
            DetallarError;          
          end;
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.OnKeyPressSoloNumerosEnteros(
  Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', #8, #13]) then Abort;

  if (Length(DBedtCICapac.Text)=11)
    then
      begin
        if not (Key in[#8, #13]) then Abort;
      end;

  if (Key in [#13]) then btnAceptarHospitalDeExcelenciaYCapacitador.Click;
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.OnKeyPressSoloNombres(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarHospitalDeExcelenciaYCapacitador.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.RellenarHospitaldeExcelenciaTemporal(aHospital: THospital);
begin
  //Relleno el Hospital de Excelencia temporal con los valores de los componentes DB de la forma.
  aHospital.ID_Hospital:= frmModificarHospitalDeExcelenciaYCapacitador.TempID_Hospital;
  aHospital.NombreHospital:= frmModificarHospitalDeExcelenciaYCapacitador.DBedtNombreHospital.Text;
  //aHospital.Provincia:= frmModificarHospitalDeExcelenciaYCapacitador.DBTextProvincia.Field.Text;
  aHospital.Provincia:= frmModificarHospitalDeExcelenciaYCapacitador.ComboBoxProvinciasHospitalesDeExcelencia.Text;
  aHospital.Direccion:= frmModificarHospitalDeExcelenciaYCapacitador.DBMemoDireccion.Text;
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.RellenarCapacitadorTemporal(aCapacitador: TCapacitador);
begin
  //Relleno el Capacitador temporal con los valores de los componentes DB de la forma.
  aCapacitador.ID_Hospital:= frmModificarHospitalDeExcelenciaYCapacitador.TempID_Hospital;
  aCapacitador.NombreCapacitador:= frmModificarHospitalDeExcelenciaYCapacitador.DBedtNombreCapac.Text;
  aCapacitador.PrimerApellidoCapacitador:= frmModificarHospitalDeExcelenciaYCapacitador.DBedtPrimerApellidoCapac.Text;
  aCapacitador.SegundoApellidoCapacitador:= frmModificarHospitalDeExcelenciaYCapacitador.DBedtSegundoApellidoCapac.Text;
  aCapacitador.NumeroCarneCapacitador:= frmModificarHospitalDeExcelenciaYCapacitador.DBedtCICapac.Text;
  aCapacitador.TelefonosCapacitador:= frmModificarHospitalDeExcelenciaYCapacitador.DBMemoTelefonosCapac.Text;
  aCapacitador.CorreosCapacitador:= frmModificarHospitalDeExcelenciaYCapacitador.DBMemoCorreosCapac.Text;
end;




procedure TfrmModificarHospitalDeExcelenciaYCapacitador.DBedtNombreHospitalKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarHospitalDeExcelenciaYCapacitador.Click;
end;



function TfrmModificarHospitalDeExcelenciaYCapacitador.HuboCambiosEnElHospitalDeExcelencia: Boolean;
begin
  //Verifico si se realizaron modificaciones en los datos del Capacitador
  if (   (TempViejoHospital.ID_Hospital <> TempNuevoHospital.ID_Hospital)
      or (TempViejoHospital.NombreHospital <> TempNuevoHospital.NombreHospital)
      or (TempViejoHospital.Provincia <> TempNuevoHospital.Provincia)
      or (TempViejoHospital.Direccion <> TempNuevoHospital.Direccion)   )
    then
      Result:= True
        else
          Result:= False;
end;



function TfrmModificarHospitalDeExcelenciaYCapacitador.HuboCambiosEnElCapacitador: Boolean;
begin
  //Verifico si se realizaron modificaciones en los datos del Capacitador
  if (   (TempViejoCapacitador.ID_Hospital <> TempNuevoCapacitador.ID_Hospital)
      or (TempViejoCapacitador.NombreCapacitador <> TempNuevoCapacitador.NombreCapacitador)
      or (TempViejoCapacitador.PrimerApellidoCapacitador <> TempNuevoCapacitador.PrimerApellidoCapacitador)
      or (TempViejoCapacitador.SegundoApellidoCapacitador <> TempNuevoCapacitador.SegundoApellidoCapacitador)
      or (TempViejoCapacitador.NumeroCarneCapacitador <> TempNuevoCapacitador.NumeroCarneCapacitador)
      or (TempViejoCapacitador.TelefonosCapacitador <> TempNuevoCapacitador.TelefonosCapacitador)
      or (TempViejoCapacitador.CorreosCapacitador <> TempNuevoCapacitador.CorreosCapacitador)   )
    then
      Result:= True
        else
          Result:= False;
end;


function TfrmModificarHospitalDeExcelenciaYCapacitador.HuboCambiosEnCorreos: Boolean;
begin
  //Verifico si se realizaron modificaciones en los correos del Capacitador
  if (   TempViejoCapacitador.CorreosCapacitador <> TempNuevoCapacitador.CorreosCapacitador   )
    then
      Result:= True
        else
          Result:= False;
end;


function TfrmModificarHospitalDeExcelenciaYCapacitador.TodoEstaPerfecto: Boolean;
label Salida;
begin
  //Comienzo asumiendo que todo está perfecto
  Result:= True;

  //Compruebo el llenado completo de los Componentes imprescindibles
  if (   (DBedtNombreHospital.Field.Text<> '')   )
    then
      begin
        //Compruebo el formato del carné de identidad, si no está vacio el componente
        if (DBedtCICapac.Field.Text<>'')
          then
            begin
              //Compruebo si no tiene exactamente 11 caracteres el CI
              if (Length(DBedtCICapac.Field.Text)<> 11)
                then
                  begin
                    Result:= False;
                    Goto Salida;
                  end;
            end;

        //Compruebo el formato de los correos electrónicos, si no está vacio el componente
        Result:= CorreosPerfectos;

      end

        else
        
          begin  //Falta el nombre del Hospital de Excelencia
            Result:= False;
            Goto Salida;
          end;

  //Etiqueta de salida del procedimiento
  Salida:
end;



function TfrmModificarHospitalDeExcelenciaYCapacitador.CorreosPerfectos: Boolean;
var
  CantArrobas: Integer;
  CantPuntoYComas: Integer;
  Correos: AnsiString;
  i: Integer;
label Salida;
begin
  //Inicio asumiendo que todo está perfecto
  Result:= True;
  CantArrobas:= 0;
  CantPuntoYComas:= 0;

  //Compruebo el formato de los correos electrónicos, si no está vacio el componente
  if (DBMemoCorreosCapac.Text<>'')
    then
      begin
        //Guardo el valor de los correos en una variable local
        Correos:= DBMemoCorreosCapac.Text;

        //Compruebo si incluye el caracter '@' dentro de ese grupo potencial de correos (al menos una vez)
        if (AnsiContainsStr(Correos, '@')= True)
          then
            begin
              //Ahora debo contar la cantidad de correos (cantidad de '@' presentes)
              for i:= 1 to Length(DBMemoCorreosCapac.Text) do
                begin
                  if (   MidStr(Correos , i, 1)= '@'   )
                    then
                      CantArrobas:= CantArrobas + 1;
                end;

              //Ahora debo contar la cantidad de punto y comas (cantidad de ';' presentes)
              for i:= 1 to Length(DBMemoCorreosCapac.Text) do
                begin
                  if (   MidStr(Correos , i, 1)= ';'   )
                    then
                      CantPuntoYComas:= CantPuntoYComas + 1;
                end;

              //Verifico que por cada "@" haya un ";"
              if (CantArrobas = CantPuntoYComas)
                then
                  begin
                    //Verifico que el último carcater se un ";"
                    if (AnsiRightStr(Correos, 1) = ';')
                      then
                        begin
                          //Verifico que no haya espacios vacios
                          if (AnsiContainsStr(Correos, ' ')= False)
                            then
                              begin
                                //Verifico que no termine con un punto en ningún correo
                                if (AnsiContainsStr(Correos, '.;')= False)
                                  then
                                    begin
                                      //Verifico que no empiece con un "." en correo alguno (menos el primero)
                                      if (AnsiContainsStr(Correos, ';.')= False)
                                        then
                                          begin
                                            //Verifico que no empiece con un "." en el primer correo
                                            if (AnsiLeftStr(Correos, 1) <> '.')
                                              then
                                                begin
                                                  //Verifico que no empiece con un ";" en el primer correo
                                                  if (AnsiLeftStr(Correos, 1) <> ';')
                                                    then
                                                      begin
                                                        //Verifico que no haya dos ";" juntos
                                                        if (AnsiContainsStr(Correos, ';;')= False)
                                                          then
                                                            begin
                                                              //Verifico que no haya dos "." juntos
                                                              if (AnsiContainsStr(Correos, '..')= False)
                                                                then
                                                                  begin
                                                                    //Verifico que no haya un "." antes o después de la "@"
                                                                    if (   (AnsiContainsStr(Correos, '.@')= False) and (AnsiContainsStr(Correos, '@.')= False)   )
                                                                      then
                                                                        begin
                                                                          //Verifico que no haya un ";" antes o después de la "@"
                                                                          if (   (AnsiContainsStr(Correos, ';@')= False) and (AnsiContainsStr(Correos, '@;')= False)   )
                                                                            then
                                                                              begin
                                                                                //Verifico que posea al menos un punto
                                                                                if (AnsiContainsStr(Correos, '.')= False)
                                                                                  then
                                                                                    begin //No posee al menos un punto
                                                                                      Result:= False;
                                                                                      Goto Salida;
                                                                                    end;
                                                                              end
                                                                                else
                                                                                  begin //Hay al menos un ";" antes o después de la "@"
                                                                                    Result:= False;
                                                                                    Goto Salida;
                                                                                  end;
                                                                        end
                                                                          else
                                                                            begin //Hay al menos un "." antes o después de la "@"
                                                                              Result:= False;
                                                                              Goto Salida;
                                                                            end;
                                                                  end
                                                                    else
                                                                      begin //Hay dos "." juntos
                                                                        Result:= False;
                                                                        Goto Salida;
                                                                      end;
                                                            end
                                                              else
                                                                begin //Hay dos ";" juntos
                                                                  Result:= False;
                                                                  Goto Salida;
                                                                end;
                                                      end
                                                        else
                                                          begin //Empieza con un ";" en el primer correo
                                                            Result:= False;
                                                            Goto Salida;
                                                          end;
                                                end
                                                  else
                                                    begin //Empieza con un "." en el primer correo
                                                      Result:= False;
                                                      Goto Salida;
                                                    end;
                                          end
                                            else
                                              begin //Empieza con un "." en al menos un correo (menos el primero)
                                                Result:= False;
                                                Goto Salida;
                                              end;
                                    end
                                      else
                                        begin //Termina con un "." al menos en un correo
                                          Result:= False;
                                          Goto Salida;
                                        end;
                              end
                                else
                                  begin //Hay espacios vacios
                                    Result:= False;
                                    Goto Salida;
                                  end;
                        end
                          else
                            begin //El último caracter no es un ";"
                              Result:= False;
                              Goto Salida;
                            end;
                  end
                    else
                      begin //No hay un ";" por cada "@"
                        Result:= False;
                        Goto Salida;
                      end;
            end
              else
                begin //No incluye ni siquiera una "@"
                  Result:= False;
                  Goto Salida;
                end;
      end
        else
          begin //No fue agregado ningún correo electrónico para el Capacitador. OK
            Goto Salida;
          end;

  //Etiqueta de salida del procedimiento
  Salida:
end;


Procedure TfrmModificarHospitalDeExcelenciaYCapacitador.MostrarMensajeDeError;
var
  CantArrobas: Integer;
  CantPuntoYComas: Integer;
  Correos: AnsiString;
  i: Integer;
label Salida;
begin
  //Compruebo el llenado completo de los Componentes imprescindibles
  if (   (DBedtNombreHospital.Field.Text<> '')   )
    then
      begin
      
        //Compruebo el formato del carné de identidad, si no está vacio el componente
        if (DBedtCICapac.Field.Text<>'')
          then
            begin
              //Compruebo si tiene exactamente 11 dígitos el CI
              if (Length(DBedtCICapac.Field.Text)<> 11)
                then
                  begin //No tiene 11 caracteres.
                    Application.MessageBox('El carné de identidad debe tener 11 dígitos, si es que decide poner alguno.','Error',mb_Ok + mb_IconError);
                    Goto Salida;
                  end;
            end;

        //Compruebo el formato de los correos electrónicos, si no está vacio el componente
        if (DBMemoCorreosCapac.Field.Text<>'')
          then
            begin
              //Inicializo las variables
              CantArrobas:= 0;
              CantPuntoYComas:= 0;

              //Guardo el valor de los correos en una variable local
              Correos:= DBMemoCorreosCapac.Text;

              //Compruebo si incluye el caracter '@' dentro de ese grupo potencial de correos (al menos una vez)
              if (AnsiContainsStr(Correos, '@')= True)
                then
                  begin
                    //Ahora debo contar la cantidad de correos (cantidad de '@' presentes)
                    for i:= 1 to Length(DBMemoCorreosCapac.Text) do
                      begin
                        if (   MidStr(Correos , i, 1)= '@'   )
                          then
                            CantArrobas:= CantArrobas + 1;
                      end;

                    //Ahora debo contar la cantidad de punto y comas (cantidad de ';' presentes)
                    for i:= 1 to Length(DBMemoCorreosCapac.Text) do
                      begin
                        if (   MidStr(Correos , i, 1)= ';'   )
                          then
                            CantPuntoYComas:= CantPuntoYComas + 1;
                      end;

                    //Verifico que por cada "@" haya un ";"
                    if (CantArrobas = CantPuntoYComas)
                      then
                        begin
                          //Verifico que el último carcater se un ";"
                          if (AnsiRightStr(Correos, 1) = ';')
                            then
                              begin
                                //Verifico que no haya espacios vacios
                                if (AnsiContainsStr(Correos, ' ')= False)
                                  then
                                    begin
                                      //Verifico que no termine con un punto en ningún correo
                                      if (AnsiContainsStr(Correos, '.;')= False)
                                        then
                                          begin
                                            //Verifico que no empiece con un "." en correo alguno (menos el primero)
                                            if (AnsiContainsStr(Correos, ';.')= False)
                                              then
                                                begin
                                                  //Verifico que no empiece con un "." en el primer correo
                                                  if (AnsiLeftStr(Correos, 1) <> '.')
                                                    then
                                                      begin
                                                        //Verifico que no empiece con un ";" en el primer correo
                                                        if (AnsiLeftStr(Correos, 1) <> ';')
                                                          then
                                                            begin
                                                              //Verifico que no haya dos ";" juntos
                                                              if (AnsiContainsStr(Correos, ';;')= False)
                                                                then
                                                                  begin
                                                                    //Verifico que no haya dos "." juntos
                                                                    if (AnsiContainsStr(Correos, '..')= False)
                                                                      then
                                                                        begin
                                                                          //Verifico que no haya un "." antes o después de la "@"
                                                                          if (   (AnsiContainsStr(Correos, '.@')= False) and (AnsiContainsStr(Correos, '@.')= False)   )
                                                                            then
                                                                              begin
                                                                                //Verifico que no haya un ";" antes o después de la "@"
                                                                                if (   (AnsiContainsStr(Correos, ';@')= False) and (AnsiContainsStr(Correos, '@;')= False)   )
                                                                                  then
                                                                                    begin
                                                                                      //Verifico que posea al menos un punto
                                                                                      if (AnsiContainsStr(Correos, '.')= False)
                                                                                        then
                                                                                          begin //No posee al menos un punto
                                                                                            Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted no incluye al menos un "." (punto).','Error',mb_Ok + mb_IconError);
                                                                                            Goto Salida;
                                                                                          end;
                                                                                    end
                                                                                      else
                                                                                        begin //Hay al menos un ";" antes o después de la "@"
                                                                                          Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted incluye al menos un ";" (punto y coma) antes o después de una "@".','Error',mb_Ok + mb_IconError);
                                                                                          Goto Salida;
                                                                                        end;
                                                                              end
                                                                                else
                                                                                  begin //Hay al menos un "." antes o después de la "@"
                                                                                    Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted incluye al menos un "." (punto) antes o después de una "@".','Error',mb_Ok + mb_IconError);
                                                                                    Goto Salida;
                                                                                  end;
                                                                        end
                                                                          else
                                                                            begin //Hay dos "." juntos
                                                                              Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted incluye al menos dos "." (punto) juntos.','Error',mb_Ok + mb_IconError);
                                                                              Goto Salida;
                                                                            end;
                                                                  end
                                                                    else
                                                                      begin //Hay dos ";" juntos
                                                                        Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted incluye al menos dos ";" (punto y coma) juntos.','Error',mb_Ok + mb_IconError);
                                                                        Goto Salida;
                                                                      end;
                                                            end
                                                              else
                                                                begin //Empieza con un ";" en el primer correo
                                                                  Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted empieza con un ";" (punto y coma) en el primer correo.','Error',mb_Ok + mb_IconError);
                                                                  Goto Salida;
                                                                end;
                                                      end
                                                        else
                                                          begin //Empieza con un "." en el primer correo
                                                            Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted empieza con un "." (punto) en el primer correo.','Error',mb_Ok + mb_IconError);
                                                            Goto Salida;
                                                          end;
                                                end
                                                  else
                                                    begin //Empieza con un "." en al menos un correo (menos el primero)
                                                      Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted empieza con un "." (punto) en al menos un correo.','Error',mb_Ok + mb_IconError);
                                                      Goto Salida;
                                                    end;
                                          end
                                            else
                                              begin //Termina con un "." al menos en un correo
                                                Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted concluye con un "." (punto) en al menos un correo.','Error',mb_Ok + mb_IconError);
                                                Goto Salida;
                                              end;
                                    end
                                      else
                                        begin //Hay espacios vacios
                                          Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted incluye espacios vacíos.','Error',mb_Ok + mb_IconError);
                                          Goto Salida;
                                        end;
                              end
                                else
                                  begin //El último caracter no es un ";"
                                    Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted no incluye un ";" al final del último correo.','Error',mb_Ok + mb_IconError);
                                    Goto Salida;
                                  end;
                        end
                          else
                            begin //No hay un ";" por cada "@"
                              Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted no incluye un ";" por cada correo.','Error',mb_Ok + mb_IconError);
                              Goto Salida;
                            end;
                  end
                    else
                      begin //No incluye ni siquiera una "@"
                        Application.MessageBox('Formato no válido para los correos electrónicos.' + #13 + 'Usted no incluye ni tan siquiera una arroba "@".','Error',mb_Ok + mb_IconError);
                        Goto Salida;
                      end;
            end;

      end

        else
        
          begin  //Falta el nombre del Hospital de Excelencia
            Application.MessageBox('No puede dejar en blanco el nombre del Hospital de Excelencia.','Error',mb_Ok + mb_IconError);
            Goto Salida;
          end;

  //Etiqueta de salida del procedimiento
  Salida:
end;



procedure TfrmModificarHospitalDeExcelenciaYCapacitador.DetallarError;
label Salida;
begin
  //Compruebo el llenado completo de los Componentes imprescindibles
  if (   (DBedtNombreHospital.Field.Text<> '')   )
    then
      begin
        //Compruebo el formato del carné de identidad, si no está vacio el componente
        if (DBedtCICapac.Field.Text<>'')
          then
            begin
              //Compruebo si tiene exactamente 11 dígitos el CI
              if (Length(DBedtCICapac.Field.Text)<> 11)
                then
                  begin//No tiene 11 caracteres.
                    DBedtCICapac.SetFocus;
                    Goto Salida;
                  end;
            end;

        //Compruebo el formato de los correos electrónicos, si no está vacio el componente
        if (DBMemoCorreosCapac.Field.Text<>'')
          then
            begin
              if (CorreosPerfectos= False)
                then
                  begin //Están mal los correos
                    DBMemoCorreosCapac.SetFocus;
                    Goto Salida;
                  end;
            end;
      end
        else
          begin  //Falta el nombre del Hospital de Excelencia
            DBedtNombreHospital.SetFocus;
            Goto Salida;
          end;

  //Etiqueta de salida del procedimiento
  Salida:
end;


procedure TfrmModificarHospitalDeExcelenciaYCapacitador.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;


end.
