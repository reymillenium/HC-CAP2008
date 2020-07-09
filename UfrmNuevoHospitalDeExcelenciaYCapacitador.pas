unit UfrmNuevoHospitalDeExcelenciaYCapacitador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, StrUtils,

  UDptoCapacitacion, UCapacitador, UHospital, UDataModuleHospitalesDeExcelencia;

type
  TfrmNuevoHospitalDeExcelenciaYCapacitador = class(TForm)
    GroupBoxDatosDelHospital: TGroupBox;
    GroupBoxDatosDeSuCapacitador: TGroupBox;
    lblNombreHospital: TLabel;
    lblProvincia: TLabel;
    lblDireccion: TLabel;
    edtNombreHospital: TEdit;
    ComboBoxProvinciasHospitalesDeExcelencia: TComboBox;
    ImageListProvincias: TImageList;
    MemoDireccion: TMemo;
    btnAceptarHospitalDeExcelenciaYCapacitador: TButton;
    btnLimpiarHospitalDeExcelenciaYCapacitador: TButton;
    btnCancelarHospitalDeExcelenciaYCapacitador: TButton;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    edtNombreCapac: TEdit;
    edtPrimerApellidoCapac: TEdit;
    edtSegundoApellidoCapac: TEdit;
    edtCICapac: TEdit;
    MemoTelefonosCapac: TMemo;
    MemoCorreosCapac: TMemo;
    procedure ComboBoxProvinciasHospitalesDeExcelenciaDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure btnLimpiarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure btnAceptarHospitalDeExcelenciaYCapacitadorClick(Sender: TObject);
    procedure OnKeyPressSoloNumerosEnteros(Sender: TObject; var Key: Char);
    procedure OnKeyPressSoloNombres(Sender: TObject; var Key: Char);
    procedure edtNombreHospitalKeyPress(Sender: TObject; var Key: Char);

    procedure RellenarHospitaldeExcelenciaTemporal(aHospital: THospital);
    procedure RellenarCapacitadorTemporal(aCapacitador: TCapacitador);
    function TodoEstaPerfecto: Boolean;
    function CorreosPerfectos: Boolean;
    procedure MostrarMensajeDeError;
    procedure DetallarError;
    function HayCapacitador: Boolean;
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

  private
    { Private declarations }
    procedure LimpiarComponentes;
  public
    { Public declarations }
  end;

var
  frmNuevoHospitalDeExcelenciaYCapacitador: TfrmNuevoHospitalDeExcelenciaYCapacitador;

implementation
var
    DptoCapacitacion: TDptoCapacitacion;
    TempHospitalDeExcelencia: THospital;
    TempCapacitador: TCapacitador;
{$R *.dfm}



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.ComboBoxProvinciasHospitalesDeExcelenciaDrawItem(
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



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.FormShow(
  Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Limpio los componentes
  LimpiarComponentes;

  //Coloco el ComboBox en la opción de "Ciudad de la Habana"
  ComboBoxProvinciasHospitalesDeExcelencia.ItemIndex:= 3;

  //Coloco el Focus en el Edit del nombre del Hospital
  edtNombreHospital.SetFocus;
  
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevoHospitalDeExcelenciaYCapacitador.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.btnCancelarHospitalDeExcelenciaYCapacitadorClick(
  Sender: TObject);
begin
  //Cierro la forma
  frmNuevoHospitalDeExcelenciaYCapacitador.Close;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.btnLimpiarHospitalDeExcelenciaYCapacitadorClick(
  Sender: TObject);
begin
  //Limpio los componentes
  LimpiarComponentes;

  //Me posiciono en el primer Edit, el del nombre del Hospital
  edtNombreHospital.SetFocus;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.LimpiarComponentes;
begin
  //Limpio todos loscomponentes de la forma
  edtNombreHospital.Clear;
  MemoDireccion.Clear;
  edtNombreCapac.Clear;
  edtPrimerApellidoCapac.Clear;
  edtSegundoApellidoCapac.Clear;
  edtCICapac.Clear;
  MemoTelefonosCapac.Clear;
  MemoCorreosCapac.Clear;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.btnAceptarHospitalDeExcelenciaYCapacitadorClick(
  Sender: TObject);
var
  NombreHospital, Provincia, Direccion, NombreCapac, PrimerApellido, SegundoApellido, NumeroCI, Telefonos, Correos: AnsiString;

begin
  //Invoco el procedimiento que inserta el Hospital de Excelencia y el Capacitador en la BD
  if (TodoEstaPerfecto)
    then
      begin
        //Creo un Hospital temporal
        TempHospitalDeExcelencia:= THospital.Create;

        //Creo un Capacitador temporal
        TempCapacitador:= TCapacitador.Create;

        //Relleno el Hospital temporal
        RellenarHospitaldeExcelenciaTemporal(TempHospitalDeExcelencia);

        //Relleno el Capacitador temporal
        RellenarCapacitadorTemporal(TempCapacitador);

        //Llamo al procedimiento que inserta el Hospital de Excelencia
        DptoCapacitacion.InsertarHospitalDeExcelencia(TempHospitalDeExcelencia);

        //Llamo al procedimiento que inserta el Capacitador
        DptoCapacitacion.InsertarCapacitador(TempCapacitador);

        //Actualizo el DBGrid del listado de los Hospitales de Excelencia de todo el país, en la pestaña de administración de Hospitales y Capacitadores
        DptoCapacitacion.MostrarTodosLosHospitalesDeExcelenciaParaAdmin;

        //Actualizo los componentes DB del Capacitador, en la pestaña de administración de Hospitales y Capacitadores
        //DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(TempID_Hospital);

        //Relleno los componentes de la traza
        NombreHospital:= TempHospitalDeExcelencia.NombreHospital;
        Provincia:= TempHospitalDeExcelencia.Provincia;
        if (TempHospitalDeExcelencia.Direccion<>'')
          then
            Direccion:= TempHospitalDeExcelencia.Direccion
              else
                Direccion:= 'una dirección desconocida';

        if (TempCapacitador.NombreCapacitador<>'')
          then
            NombreCapac:= TempCapacitador.NombreCapacitador
              else
                NombreCapac:= 'desconocido';

        if (TempCapacitador.PrimerApellidoCapacitador<>'')
          then
            PrimerApellido:= ' ' + TempCapacitador.PrimerApellidoCapacitador
              else
                PrimerApellido:= '';

        if (TempCapacitador.SegundoApellidoCapacitador<>'')
          then
              SegundoApellido:= ' ' + TempCapacitador.SegundoApellidoCapacitador
                else
                  SegundoApellido:= '';

        if (TempCapacitador.NumeroCarneCapacitador<>'')
          then
              NumeroCI:= TempCapacitador.NumeroCarneCapacitador
                else
                  NumeroCI:= 'desconocido';

        if (TempCapacitador.TelefonosCapacitador<>'')
          then
              Telefonos:= TempCapacitador.TelefonosCapacitador
                else
                  Telefonos:= 'desconocido';

        if (TempCapacitador.TelefonosCapacitador<>'')
          then
              Correos:= TempCapacitador.CorreosCapacitador
                else
                  Correos:= 'desconocido';

        //Verifico si hay un Capacitador
        if (HayCapacitador = True)
          then
            begin
              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Creó un Hospital de Excelencia de nombre ' + NombreHospital + ', perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. El mismo tiene asociado un Capacitador de nombre ' + NombreCapac + PrimerApellido + SegundoApellido + ', con carné de identidad ' + NumeroCI + ', su teléfono es ' + Telefonos + ' y su correo electrónico es ' + Correos + '.');
            end
              else
                begin
                  //Inserto la Traza
                  DptoCapacitacion.GuardarTrazaDelSistema('Creó un Hospital de Excelencia de nombre ' + NombreHospital + ' perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. No le asoció datos de Capacitador alguno.');
                end;
                
        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;

        //Destruyo el Hospital temporal
        TempHospitalDeExcelencia.Destroy;

        //Destruyo el Capacitador temporal
        TempCapacitador.Destroy;

        //Cierro la forma
        frmNuevoHospitalDeExcelenciaYCapacitador.Close;
      end
        else
          begin
            //Muestro en qué consistió el error
            MostrarMensajeDeError;

            //Pongo el focus en el componente origen del error
            DetallarError;
          end;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.OnKeyPressSoloNumerosEnteros(
  Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', #8, #13]) then Abort;

  if (Length(edtCICapac.Text)=11)
    then
      begin
        if not (Key in[#8, #13]) then Abort;
      end;
      
  if (Key in [#13]) then btnAceptarHospitalDeExcelenciaYCapacitador.Click;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.OnKeyPressSoloNombres(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarHospitalDeExcelenciaYCapacitador.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.edtNombreHospitalKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarHospitalDeExcelenciaYCapacitador.Click;
end;


procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.RellenarHospitaldeExcelenciaTemporal(aHospital: THospital);
begin
  //Relleno el Hospital de Excelencia temporal con los valores de los componentes DB de la forma.
  //aHospital.ID_Hospital:= frmNuevoHospitalDeExcelenciaYCapacitador.TempID_Hospital;
  aHospital.NombreHospital:= frmNuevoHospitalDeExcelenciaYCapacitador.edtNombreHospital.Text;
  aHospital.Provincia:= frmNuevoHospitalDeExcelenciaYCapacitador.ComboBoxProvinciasHospitalesDeExcelencia.Text;
  aHospital.Direccion:= frmNuevoHospitalDeExcelenciaYCapacitador.MemoDireccion.Text;
end;



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.RellenarCapacitadorTemporal(aCapacitador: TCapacitador);
begin
  //Relleno el Capacitador temporal con los valores de los componentes DB de la forma.
  aCapacitador.NombreCapacitador:= frmNuevoHospitalDeExcelenciaYCapacitador.edtNombreCapac.Text;
  aCapacitador.PrimerApellidoCapacitador:= frmNuevoHospitalDeExcelenciaYCapacitador.edtPrimerApellidoCapac.Text;
  aCapacitador.SegundoApellidoCapacitador:= frmNuevoHospitalDeExcelenciaYCapacitador.edtSegundoApellidoCapac.Text;
  aCapacitador.NumeroCarneCapacitador:= frmNuevoHospitalDeExcelenciaYCapacitador.edtCICapac.Text;
  aCapacitador.TelefonosCapacitador:= frmNuevoHospitalDeExcelenciaYCapacitador.MemoTelefonosCapac.Text;
  aCapacitador.CorreosCapacitador:= frmNuevoHospitalDeExcelenciaYCapacitador.MemoCorreosCapac.Text;
end;



function TfrmNuevoHospitalDeExcelenciaYCapacitador.TodoEstaPerfecto: Boolean;
label Salida;
begin
  //Comienzo asumiendo que todo está perfecto
  Result:= True;

  //Compruebo el llenado completo de los Componentes imprescindibles
  if (   (edtNombreHospital.Text<> '')   )
    then
      begin
        //Compruebo el formato del carné de identidad, si no está vacio el componente
        if (edtCICapac.Text<>'')
          then
            begin
              //Compruebo si no tiene exactamente 11 caracteres el CI
              if (Length(edtCICapac.Text)<> 11)
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



function TfrmNuevoHospitalDeExcelenciaYCapacitador.CorreosPerfectos: Boolean;
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
  if (MemoCorreosCapac.Text<>'')
    then
      begin
        //Guardo el valor de los correos en una variable local
        Correos:= MemoCorreosCapac.Text;

        //Compruebo si incluye el caracter '@' dentro de ese grupo potencial de correos (al menos una vez)
        if (AnsiContainsStr(Correos, '@')= True)
          then
            begin
              //Ahora debo contar la cantidad de correos (cantidad de '@' presentes)
              for i:= 1 to Length(MemoCorreosCapac.Text) do
                begin
                  if (   MidStr(Correos , i, 1)= '@'   )
                    then
                      CantArrobas:= CantArrobas + 1;
                end;

              //Ahora debo contar la cantidad de punto y comas (cantidad de ';' presentes)
              for i:= 1 to Length(MemoCorreosCapac.Text) do
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



Procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.MostrarMensajeDeError;
var
  CantArrobas: Integer;
  CantPuntoYComas: Integer;
  Correos: AnsiString;
  i: Integer;
label Salida;
begin
  //Compruebo el llenado completo de los Componentes imprescindibles
  if (   (edtNombreHospital.Text<> '')   )
    then
      begin
      
        //Compruebo el formato del carné de identidad, si no está vacio el componente
        if (edtCICapac.Text<>'')
          then
            begin
              //Compruebo si tiene exactamente 11 dígitos el CI
              if (Length(edtCICapac.Text)<> 11)
                then
                  begin //No tiene 11 caracteres.
                    Application.MessageBox('El carné de identidad debe tener 11 dígitos, si es que decide poner alguno.','Error',mb_Ok + mb_IconError);
                    Goto Salida;
                  end;
            end;

        //Compruebo el formato de los correos electrónicos, si no está vacio el componente
        if (MemoCorreosCapac.Text<>'')
          then
            begin
              //Inicializo las variables
              CantArrobas:= 0;
              CantPuntoYComas:= 0;

              //Guardo el valor de los correos en una variable local
              Correos:= MemoCorreosCapac.Text;

              //Compruebo si incluye el caracter '@' dentro de ese grupo potencial de correos (al menos una vez)
              if (AnsiContainsStr(Correos, '@')= True)
                then
                  begin
                    //Ahora debo contar la cantidad de correos (cantidad de '@' presentes)
                    for i:= 1 to Length(MemoCorreosCapac.Text) do
                      begin
                        if (   MidStr(Correos , i, 1)= '@'   )
                          then
                            CantArrobas:= CantArrobas + 1;
                      end;

                    //Ahora debo contar la cantidad de punto y comas (cantidad de ';' presentes)
                    for i:= 1 to Length(MemoCorreosCapac.Text) do
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



procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.DetallarError;
label Salida;
begin
  //Compruebo el llenado completo de los Componentes imprescindibles
  if (   (edtNombreHospital.Text<> '')   )
    then
      begin
        //Compruebo el formato del carné de identidad, si no está vacio el componente
        if (edtCICapac.Text<>'')
          then
            begin
              //Compruebo si tiene exactamente 11 dígitos el CI
              if (Length(edtCICapac.Text)<> 11)
                then
                  begin//No tiene 11 caracteres.
                    edtCICapac.SetFocus;
                    Goto Salida;
                  end;
            end;

        //Compruebo el formato de los correos electrónicos, si no está vacio el componente
        if (MemoCorreosCapac.Text<>'')
          then
            begin
              if (CorreosPerfectos= False)
                then
                  begin //Están mal los correos
                    MemoCorreosCapac.SetFocus;
                    Goto Salida;
                  end;
            end;
      end
        else
          begin  //Falta el nombre del Hospital de Excelencia
            edtNombreHospital.SetFocus;
            Goto Salida;
          end;

  //Etiqueta de salida del procedimiento
  Salida:
end;



function TfrmNuevoHospitalDeExcelenciaYCapacitador.HayCapacitador: Boolean;
begin
  //Aquí determino si se entraron datos referentes al Capacitador del Hospital de Excelencia
  if (  (edtNombreCapac.Text<>'') and (edtPrimerApellidoCapac.Text<>'') and (edtSegundoApellidoCapac.Text<>'') and (edtCICapac.Text<>'') and (MemoTelefonosCapac.Text<>'') and (MemoCorreosCapac.Text<>'')  )
    then
      Result:= True
        else
          Result:= False;
end;


procedure TfrmNuevoHospitalDeExcelenciaYCapacitador.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;

 
end.
