unit UfrmModificarPlanillaDeExcelencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Grids, DBGrids, Mask, StrUtils,
  ShellApi,

  {Units confeccionadas por mi.}
  UDptoCapacitacion, UCurso,

  {DataModules confeccionados por mi.}
  UDataModuleConexionGeneral, UDataModuleHospitalesDeExcelencia, AppEvnts;

type
  TfrmModificarPlanillaDeExcelencia = class(TForm)
    PageControlNuevaPlanillaDeExcelencia: TPageControl;
    TabSheetPlanDeCapacitacion: TTabSheet;
    TabSheetDatosHospitalYCapacitador: TTabSheet;
    GroupBoxListadoDeHospitalesDeExcelencia: TGroupBox;
    DBTextID_Hospital: TDBText;
    Label66: TLabel;
    Label71: TLabel;
    Label64: TLabel;
    GroupBoxDatosDeSuCapacitadorActual: TGroupBox;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBedtNombreCapacActual: TDBEdit;
    DBedtPrimerApellidoCapacActual: TDBEdit;
    DBedtSegundoApellidoCapacActual: TDBEdit;
    DBedtCICapacActual: TDBEdit;
    DBMemoTelefonosCapacActual: TDBMemo;
    DBMemoCorreosElectronicosCapacActual: TDBMemo;
    DBedtProvincia: TDBEdit;
    DBMemoDireccion: TDBMemo;
    DBedtNombreHospitalDeExcelencia: TDBEdit;
    PageControlCapacitadorYSuPlanDeCapacitacion: TPageControl;
    TabSheetCursosProgramados: TTabSheet;
    GroupBoxCursosProgramados: TGroupBox;
    DBGridCursosProgramados: TDBGrid;
    btnAgregarCursoProgramado: TButton;
    btnQuitarCursoProgramado: TButton;
    TabSheetCursosRealizados: TTabSheet;
    GroupBoxCursosRealizados: TGroupBox;
    DBGridCursosRealizados: TDBGrid;
    btnAgregarCursoRealizado: TButton;
    btnQuitarCursoRealizado: TButton;
    lblAnno: TLabel;
    DateTimePickerAnnoPlanillaDeExcelencia: TDateTimePicker;
    lblPeriodo: TLabel;
    ComboBoxSemestreHospitalesDeExcelencia: TComboBox;
    btnGuardarCambiosRegistroHospitalesDeExcelencia: TButton;
    btnResetearRegistroHospitalesDeExcelencia: TButton;
    btnCancelarRegistroHospitalesDeExcelencia: TButton;
    GroupBoxCursosParaEscogerProgramados: TGroupBox;
    DBGridTiposDeCursosProgramados: TDBGrid;
    DBTextID_PlanillaDeExcelencia: TDBText;
    edtLugarCursosProgramados: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerFechaInicioCursosProgramados: TDateTimePicker;
    Label3: TLabel;
    edtCantidadParticipantesCursosProgramados: TEdit;
    DBTextID_CursoProgramado: TDBText;
    edtLugarCursosRealizados: TEdit;
    DBTextID_CursoRealizado: TDBText;
    DateTimePickerFechaInicioCursosRealizados: TDateTimePicker;
    edtCantidadParticipantesCursosRealizados: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblAnnoII: TLabel;
    DateTimePickerAnnoPlanillaDeExcelenciaII: TDateTimePicker;
    lblPeriodoII: TLabel;
    ComboBoxSemestreHospitalesDeExcelenciaII: TComboBox;
    btnGuardarCambiosRegistroHospitalesDeExcelenciaII: TButton;
    btnResetearRegistroHospitalesDeExcelenciaII: TButton;
    btnCancelarRegistroHospitalesDeExcelenciaII: TButton;
    GroupBoxCursosParaEscogerRealizados: TGroupBox;
    DBGridTiposDeCursosRealizados: TDBGrid;

    procedure FormShow(Sender: TObject);
    procedure btnGuardarCambiosRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnCancelarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnQuitarCursoProgramadoClick(Sender: TObject);
    procedure btnQuitarCursoRealizadoClick(Sender: TObject);
    procedure OnKeyPressSoloNumeros(Sender: TObject; var Key: Char);
    procedure btnAgregarCursoRealizadoClick(Sender: TObject);
    procedure edtLugarCursosRealizadosKeyPress(Sender: TObject; var Key: Char);
    procedure edtLugarCursosProgramadosKeyPress(Sender: TObject; var Key: Char);
    procedure btnAgregarCursoProgramadoClick(Sender: TObject);
    procedure DBGridTiposDeCursosProgramadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCursosProgramadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCursosRealizadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnResetearRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure DBMemoCorreosElectronicosCapacActualClick(Sender: TObject);
    procedure DBGridTiposDeCursosRealizadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DateTimePickerAnnoPlanillaDeExcelenciaIIChange(
      Sender: TObject);
    procedure DateTimePickerAnnoPlanillaDeExcelenciaChange(
      Sender: TObject);
    procedure ComboBoxSemestreHospitalesDeExcelenciaChange(
      Sender: TObject);
    procedure ComboBoxSemestreHospitalesDeExcelenciaIIChange(
      Sender: TObject);
  private
    { Private declarations }
  public
    FID_Planilla: Integer;
    FID_Hospital: Integer;
    
    FAnno: Integer;
    FPeriodo: Integer;
    { Public declarations }
  end;

var
  frmModificarPlanillaDeExcelencia: TfrmModificarPlanillaDeExcelencia;

implementation
Var
  DptoCapacitacion: TDptoCapacitacion;

{$R *.dfm}

procedure TfrmModificarPlanillaDeExcelencia.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Verifico si debo habilitar el bot�n de 'Quitar' para Cursos Programados
  if (DptoCapacitacion.CantidadDeCursosProgramadosTemporales <>0)
    then
      btnQuitarCursoProgramado.Enabled:= True
        else
          btnQuitarCursoProgramado.Enabled:= False;

  //Verifico si debo habilitar el bot�n de 'Quitar' para Cursos Programados Realizados
  if (DptoCapacitacion.CantidadDeCursosRealizadosTemporales <>0)
    then
      btnQuitarCursoRealizado.Enabled:= True
        else
          btnQuitarCursoRealizado.Enabled:= False;

  //Posiciono los ComboBox del periodo correctamente
  ComboBoxSemestreHospitalesDeExcelencia.ItemIndex:= FPeriodo;
  ComboBoxSemestreHospitalesDeExcelenciaII.ItemIndex:= FPeriodo;

  //Posiciono los DateTimePicker correctamente
  if (FPeriodo=0)
    then
      begin
        //Posiciono los DateTimePicker seg�n el a�o y periodo que se recibi�
        DateTimePickerAnnoPlanillaDeExcelencia.Date:= StrToDate('01/01/' + IntToStr(FAnno));
        DateTimePickerAnnoPlanillaDeExcelenciaII.Date:= StrToDate('01/01/' + IntToStr(FAnno));
      end
        else
          begin
            //Posiciono los DateTimePicker seg�n el a�o y periodo que se recibi�
            DateTimePickerAnnoPlanillaDeExcelencia.Date:= StrToDate('01/06/' + IntToStr(FAnno));
            DateTimePickerAnnoPlanillaDeExcelenciaII.Date:= StrToDate('01/06/' + IntToStr(FAnno));
          end;

          
  //Aqu� deshabilito el bot�n de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarPlanillaDeExcelencia.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmModificarPlanillaDeExcelencia.btnGuardarCambiosRegistroHospitalesDeExcelenciaClick(Sender: TObject);
var
  Anno: Integer;
  Periodo: Integer;
  NombreHospital: AnsiString;
  NuevoSemestre: AnsiString;
  ViejoSemestre: AnsiString;
  NuevoID_Planilla: Integer;
  mes, dia, ano :Word;  

  Provincia, Direccion, NombreCapac, PrimerApellido, SegundoApellido, NumeroCI, Telefonos, Correos: AnsiString;
  CantCursosProgramados, CantCursosRealizados: AnsiString;
begin
  //Relleno los componentes de la traza
  Anno:= StrToInt(   AnsiRightStr(DateToStr(DateTimePickerAnnoPlanillaDeExcelencia.Date), 4 )   );

  //Verifico si tom� el valor default = 0 (no es entero)
  if (Anno = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimePickerAnnoPlanillaDeExcelencia.Date , ano, mes, dia);

        //Tomo lo que me interesa (el a�o)
        Anno:= ano;
      end;  

  Periodo:= ComboBoxSemestreHospitalesDeExcelencia.ItemIndex;

  if (Periodo= 0)
    then
      begin
        //Lleno la variable coloquial del semestre
        NuevoSemestre:= '1er semestre';
      end
        else
          begin
            //Lleno la variable coloquial del semestre
            NuevoSemestre:= '2do semestre';
          end;

  if (FPeriodo= 0)
    then
      begin
        //Lleno la variable coloquial del semestre
        ViejoSemestre:= '1er semestre';
      end
        else
          begin
            //Lleno la variable coloquial del semestre
            ViejoSemestre:= '2do semestre';
          end;          

  NombreHospital:= frmModificarPlanillaDeExcelencia.DBedtNombreHospitalDeExcelencia.Text;
  Provincia:= DBedtProvincia.Field.Text;

  if (DBMemoDireccion.Field.Text<>'')
    then
      Direccion:= DBMemoDireccion.Text
        else
          Direccion:= 'una direcci�n desconocida';

  if (DBedtNombreCapacActual.Field.Text<>'')
    then
      NombreCapac:= DBedtNombreCapacActual.Field.Text
        else
          NombreCapac:= 'desconocido';

  if (DBedtPrimerApellidoCapacActual.Field.Text<>'')
    then
      PrimerApellido:= ' ' + DBedtPrimerApellidoCapacActual.Field.Text
        else
          PrimerApellido:= '';

  if (DBedtSegundoApellidoCapacActual.Field.Text<>'')
    then
      SegundoApellido:= ' ' + DBedtSegundoApellidoCapacActual.Field.Text
        else
          SegundoApellido:= '';

  if (DBedtCICapacActual.Field.Text<>'')
    then
      NumeroCI:= DBedtCICapacActual.Field.Text
        else
          NumeroCI:= 'desconocido';

  if (DBMemoTelefonosCapacActual.Field.Text<>'')
    then
      Telefonos:= DBMemoTelefonosCapacActual.Text
        else
          Telefonos:= 'desconocido';

  if (DBMemoCorreosElectronicosCapacActual.Field.Text<>'')
    then
      Correos:= DBMemoCorreosElectronicosCapacActual.Text
        else
          Correos:= 'desconocido';

  if (DptoCapacitacion.CantidadDeCursosProgramadosTemporales<>0)
    then
      CantCursosProgramados:= IntToStr(DptoCapacitacion.CantidadDeCursosProgramadosTemporales)
        else
          CantCursosProgramados:='ninguna informaci�n en cuanto a';

  if (DptoCapacitacion.CantidadDeCursosRealizadosTemporales<>0)
    then
      CantCursosRealizados:= IntToStr(DptoCapacitacion.CantidadDeCursosRealizadosTemporales)
        else
          CantCursosRealizados:='ninguna informaci�n en cuanto a';

  //Verifico si se variaron el A�o y/o el Periodo
  if (   (Periodo<>FPeriodo) or (Anno<>FAnno)   )
    then
      begin //Hubo cambios en el A�o y/o el el Periodo. Se traslada la Planilla hacia otro semestre y/o a�o
        //Verifico que ya no exista una Planilla de Excelencia igual
        if (   (DptoCapacitacion.ExistePlanillaDeExcelencia(FID_Hospital, Anno, Periodo)= False)   )
          then
            begin
              //Inserto el encabezamiento de la Planilla de Excelencia trasladada
              DptoCapacitacion.InsertarEncabezamientoPlanillaDeExcelencia(FID_Hospital, Anno, Periodo);

              //Busco el id_Planilla del encabezamiento de Planilla de Excelencia que se acaba de insertar
              DptoCapacitacion.BuscarID_PlanillaDeExcelencia(FID_Hospital, Anno, Periodo);

              //Recojo el id_Planilla
              NuevoID_Planilla:= DBTextID_PlanillaDeExcelencia.Field.Value;

              //Realizo la modificaci�n del id_planilla en los Cursos Programados Temporales
              DptoCapacitacion.ModificarID_PlanillaEnCursosProgramadosTemporales(FID_Planilla, NuevoID_Planilla);

              //Realizo la modificaci�n del id_planilla en los Cursos Realizados Temporales
              DptoCapacitacion.ModificarID_PlanillaEnCursosRealizadosTemporales(FID_Planilla, NuevoID_Planilla);

              //Borro todos los Cursos Programados originales
              DptoCapacitacion.EliminarCursosProgramadosPorID_Planilla(FID_Planilla);

              //Borro todos los Cursos Realizados originales
              DptoCapacitacion.EliminarCursosRealizadosPorID_Planilla(FID_Planilla);

              //Realizo el borrado de la Planilla de Excelencia original en la BD
              DptoCapacitacion.EliminarPlanillaDeExcelencia(FID_Hospital, FAnno, FPeriodo);

              //Relleno la tabla de Cursos Programados desde Temporales
              DptoCapacitacion.RellenarCursosProgramadosDesdeTemporales;

              //Relleno la tabla de Cursos Programados desde Temporales
              DptoCapacitacion.RellenarCursosRealizadosDesdeTemporales;

              //Borro todos los Cursos Programados Temporales
              DptoCapacitacion.EliminarCursosProgramadosTemporalesPorID_Planilla(NuevoID_Planilla);

              //Borro todos los Cursos Realizados Temporales
              DptoCapacitacion.EliminarCursosRealizadosTemporalesPorID_Planilla(NuevoID_Planilla);

              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Modific� una Planilla de Excelencia del ' + ViejoSemestre + ' del a�o ' + IntToStr(FAnno) + ', traslad�ndola hacia el ' + NuevoSemestre + ' del a�o ' + IntToStr(Anno) + ' y dejando en ella ' + CantCursosProgramados + ' Cursos Programados y ' + CantCursosRealizados + ' Cursos Realizados.' + ' Esta informaci�n se refiere al Plan de Capacitaci�n del Hospital de Excelencia de nombre ' + NombreHospital + ', perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. El mismo tiene asociado un Capacitador de nombre ' + NombreCapac + PrimerApellido + SegundoApellido + ', con carn� de identidad ' + NumeroCI + ', su tel�fono es ' + Telefonos + ' y su correo electr�nico es ' + Correos + '.');

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;              

              //Actualizo las Planillas de Excelencia asociadas a ese Hospital en el semestre inicial
              DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(FPeriodo, FID_Hospital);

              //Actualizo el DBGrid de Cursos Programados en la forma principal
              DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(FID_Planilla);

              //Actualizo el DBGrid de Cursos Realizados en la forma principal
              DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(FID_Planilla);

              //Cierro la forma
              frmModificarPlanillaDeExcelencia.Close;
            end
              else
                begin
                  ShowMessage('El centro ' + NombreHospital + ' ya posee un Registro de Excelencia' + #13 + 'referente al ' + NuevoSemestre + ' del a�o ' + IntToStr(Anno) + '.');
                end;
      end
        else
          begin //No hubo cambio alguno en el A�o y/o el Periodo. Es la misma Planilla de Excelencia
            //Borro todos los Cursos Programados
            DptoCapacitacion.EliminarCursosProgramadosPorID_Planilla(FID_Planilla);

            //Borro todos los Cursos Realizados
            DptoCapacitacion.EliminarCursosRealizadosPorID_Planilla(FID_Planilla);

            //Relleno la tabla de Cursos Programados desde Temporales
            DptoCapacitacion.RellenarCursosProgramadosDesdeTemporales;

            //Relleno la tabla de Cursos Programados desde Temporales
            DptoCapacitacion.RellenarCursosRealizadosDesdeTemporales;

            //Inserto la Traza
            DptoCapacitacion.GuardarTrazaDelSistema('Modific� una Planilla de Excelencia del ' + ViejoSemestre + ' del a�o ' + IntToStr(Anno) + ', dejando en ella ' + CantCursosProgramados + ' Cursos Programados y ' + CantCursosRealizados + ' Cursos Realizados.' + ' Esta informaci�n se refiere al Plan de Capacitaci�n del Hospital de Excelencia de nombre ' + NombreHospital + ', perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. El mismo tiene asociado un Capacitador de nombre ' + NombreCapac + PrimerApellido + SegundoApellido + ', con carn� de identidad ' + NumeroCI + ', su tel�fono es ' + Telefonos + ' y su correo electr�nico es ' + Correos + '.');

            //Actualizo todas las trazas
            DptoCapacitacion.MostrarTodasLasTrazas;

            //Borro todos los Cursos Programados Temporales
            DptoCapacitacion.EliminarCursosProgramadosTemporalesPorID_Planilla(FID_Planilla);

            //Borro todos los Cursos Realizados Temporales
            DptoCapacitacion.EliminarCursosRealizadosTemporalesPorID_Planilla(FID_Planilla);

            //Actualizo el DBGrid de Cursos Programados en la forma principal
            DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(FID_Planilla);

            //Actualizo el DBGrid de Cursos Realizados en la forma principal
            DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(FID_Planilla);

            //Cierro la forma
            frmModificarPlanillaDeExcelencia.Close;
          end;          

          

end;



procedure TfrmModificarPlanillaDeExcelencia.btnCancelarRegistroHospitalesDeExcelenciaClick(
  Sender: TObject);
begin
  //Borro todos los Cursos Programados Temporales
  DptoCapacitacion.EliminarCursosProgramadosTemporalesPorID_Planilla(FID_Planilla);

  //Borro todos los Cursos Realizados Temporales
  DptoCapacitacion.EliminarCursosRealizadosTemporalesPorID_Planilla(FID_Planilla);

  //Cierro la forma
  frmModificarPlanillaDeExcelencia.Close;
end;



procedure TfrmModificarPlanillaDeExcelencia.btnQuitarCursoProgramadoClick(Sender: TObject);
var
  id_Curso: Integer;
begin
  //Recojo el id_Curso
  id_Curso:= StrToInt(DBTextID_CursoProgramado.Field.Text);

  //Elimino el Curso Programado temporal seleccionado
  DptoCapacitacion.EliminarCursoProgramadoTemporalPorID_Curso(id_Curso);

  //Actualizo el DBGrid de Cursos Programados
  DptoCapacitacion.MostrarCursosProgramadosTemporalesPorID_Planilla(FID_Planilla);

  //Verifico si debo seguir habilitando el bot�n de 'Quitar'
  if (DptoCapacitacion.CantidadDeCursosProgramadosTemporales <>0)
    then
      btnQuitarCursoProgramado.Enabled:= True
        else
          btnQuitarCursoProgramado.Enabled:= False;  
end;

procedure TfrmModificarPlanillaDeExcelencia.btnQuitarCursoRealizadoClick(Sender: TObject);
var
  id_Curso: Integer;
begin
  //Recojo el id_Curso
  id_Curso:= StrToInt(DBTextID_CursoRealizado.Field.Text);

  //Elimino el Curso Realizado temporal seleccionado
  DptoCapacitacion.EliminarCursoRealizadoTemporalPorID_Curso(id_Curso);

  //Actualizo el DBGrid de Cursos Realizados
  DptoCapacitacion.MostrarCursosRealizadosTemporalesPorID_Planilla(FID_Planilla);

  //Verifico si debo seguir habilitando el bot�n de 'Quitar'
  if (DptoCapacitacion.CantidadDeCursosRealizadosTemporales <>0)
    then
      btnQuitarCursoRealizado.Enabled:= True
        else
          btnQuitarCursoRealizado.Enabled:= False;
end;



procedure TfrmModificarPlanillaDeExcelencia.OnKeyPressSoloNumeros(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', #8, #13]) then Abort;

  if (PageControlCapacitadorYSuPlanDeCapacitacion.ActivePageIndex= 0)
    then
      begin
        if (Key in [#13]) then btnAgregarCursoProgramado.Click;
      end
        else
          if (PageControlCapacitadorYSuPlanDeCapacitacion.ActivePageIndex= 1)
            then
              begin
                if (Key in [#13]) then btnAgregarCursoRealizado.Click;
              end;
end;

procedure TfrmModificarPlanillaDeExcelencia.btnAgregarCursoRealizadoClick(Sender: TObject);
var
  CursoRealizadoTemporal: TCurso;
begin
  //Ante todo verifico que todos los componentes est�n llenos
  if (  (edtLugarCursosRealizados.Text <> '') and (edtCantidadParticipantesCursosRealizados.Text <> '')    )
    then
      begin
        //Primero creo el Curso Realizado Temporal
        CursoRealizadoTemporal:= TCurso.Create;

        //Relleno los campos del Curso Realizado Temporal con valores en la forma
        CursoRealizadoTemporal.Nombre_TipoDeCurso:= DBGridTiposDeCursosRealizados.SelectedField.Value;
        CursoRealizadoTemporal.Lugar:= edtLugarCursosRealizados.Text;
        CursoRealizadoTemporal.FechaInicio:= DateToStr(DateTimePickerFechaInicioCursosRealizados.Date);
        CursoRealizadoTemporal.CantidadParticipantes:= StrToInt(edtCantidadParticipantesCursosRealizados.Text);
        CursoRealizadoTemporal.ID_Planilla:= FID_Planilla;

        //Procedo a insertar el Curso Realizado Temporal en la BD
        DptoCapacitacion.InsertarCursoRealizadoTemporal(CursoRealizadoTemporal);

        //Limpio los Edits de las pesta�a de Cursos Realizados
        edtLugarCursosRealizados.Clear;
        edtCantidadParticipantesCursosRealizados.Clear;

        //Actualizo el DBGrid de Cursos Realizados
        DptoCapacitacion.MostrarCursosRealizadosTemporalesPorID_Planilla(FID_Planilla);

        //Verifico si debo seguir deshabilitando el bot�n de 'Quitar' para Cursos Realizados
        if (DptoCapacitacion.CantidadDeCursosRealizadosTemporales <>0)
          then
            btnQuitarCursoRealizado.Enabled:= True
              else
                btnQuitarCursoRealizado.Enabled:= False;

        //Por �ltimo destruyo el Curso Realizado Temporal
        CursoRealizadoTemporal.Destroy;
      end
        else
          begin
            if (  (edtLugarCursosRealizados.Text = '') and (edtCantidadParticipantesCursosRealizados.Text = '')    )
              then
                begin
                  Application.MessageBox('No puede dejar en blanco el lugar donde se realiz� el curso, ni su cantidad de participantes.','Error',mb_Ok + mb_IconError);
                  edtLugarCursosRealizados.SetFocus;
                end
                  else
                    if (  (edtLugarCursosRealizados.Text = '') and (edtCantidadParticipantesCursosRealizados.Text <> '')    )
                      then
                        begin
                          Application.MessageBox('No puede dejar en blanco el lugar donde se realiz� el curso.','Error',mb_Ok + mb_IconError);
                          edtLugarCursosRealizados.SetFocus;
                        end
                          else
                            if (  (edtLugarCursosRealizados.Text <> '') and (edtCantidadParticipantesCursosRealizados.Text = '')    )
                              then
                                begin
                                  Application.MessageBox('No puede dejar en blanco la cantidad de participantes en el curso.','Error',mb_Ok + mb_IconError);
                                  edtCantidadParticipantesCursosRealizados.SetFocus;
                                end;
          end;
end;

procedure TfrmModificarPlanillaDeExcelencia.edtLugarCursosRealizadosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAgregarCursoRealizado.Click;
end;

procedure TfrmModificarPlanillaDeExcelencia.edtLugarCursosProgramadosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAgregarCursoProgramado.Click;
end;

procedure TfrmModificarPlanillaDeExcelencia.btnAgregarCursoProgramadoClick(Sender: TObject);
var
  CursoProgramadoTemporal: TCurso;
begin
  //Ante todo verifico que todos los componentes est�n llenos
  if (  (edtLugarCursosProgramados.Text <> '') and (edtCantidadParticipantesCursosProgramados.Text <> '')    )
    then
      begin
        //Primero creo el Curso Programado Temporal
        CursoProgramadoTemporal:= TCurso.Create;

        //Relleno los campos del Curso Programado Temporal con valores en la forma
        CursoProgramadoTemporal.Nombre_TipoDeCurso:= DBGridTiposDeCursosProgramados.SelectedField.Value;
        CursoProgramadoTemporal.Lugar:= edtLugarCursosProgramados.Text;
        CursoProgramadoTemporal.FechaInicio:= DateToStr(DateTimePickerFechaInicioCursosProgramados.Date);
        CursoProgramadoTemporal.CantidadParticipantes:= StrToInt(edtCantidadParticipantesCursosProgramados.Text);
        CursoProgramadoTemporal.ID_Planilla:= FID_Planilla;

        //Procedo a insertar el Curso Programado Temporal en la BD
        DptoCapacitacion.InsertarCursoProgramadoTemporal(CursoProgramadoTemporal);

        //Limpio los Edits de las pesta�a de Cursos Programados
        edtLugarCursosProgramados.Clear;
        edtCantidadParticipantesCursosProgramados.Clear;

        //Actualizo el DBGrid de Cursos Programados
        DptoCapacitacion.MostrarCursosProgramadosTemporalesPorID_Planilla(FID_Planilla);

        //Verifico si debo seguir deshabilitando el bot�n de 'Quitar' para Cursos Programados
        if (DptoCapacitacion.CantidadDeCursosProgramadosTemporales <>0)
          then
            btnQuitarCursoProgramado.Enabled:= True
              else
                btnQuitarCursoProgramado.Enabled:= False;

        //Por �ltimo destruyo el Curso Programado Temporal
        CursoProgramadoTemporal.Destroy;
      end
        else
          begin
            if (  (edtLugarCursosProgramados.Text = '') and (edtCantidadParticipantesCursosProgramados.Text = '')    )
              then
                begin
                  Application.MessageBox('No puede dejar en blanco el lugar donde se realizar� el curso, ni su cantidad de participantes.','Error',mb_Ok + mb_IconError);
                  edtLugarCursosProgramados.SetFocus;
                end
                  else
                    if (  (edtLugarCursosProgramados.Text = '') and (edtCantidadParticipantesCursosProgramados.Text <> '')    )
                      then
                        begin
                          Application.MessageBox('No puede dejar en blanco el lugar donde se realizar� el curso.','Error',mb_Ok + mb_IconError);
                          edtLugarCursosProgramados.SetFocus;
                        end
                          else
                            if (  (edtLugarCursosProgramados.Text <> '') and (edtCantidadParticipantesCursosProgramados.Text = '')    )
                              then
                                begin
                                  Application.MessageBox('No puede dejar en blanco la cantidad de participantes en el curso.','Error',mb_Ok + mb_IconError);
                                  edtCantidadParticipantesCursosProgramados.SetFocus;
                                end;
          end;
end;

procedure TfrmModificarPlanillaDeExcelencia.DBGridTiposDeCursosProgramadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_TipoDeCurso').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridTiposDeCursosProgramados.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridTiposDeCursosProgramados.Canvas.Brush.Color := clWhite;
              end;
    //Esta l�nea es nueva
    DBGridTiposDeCursosProgramados.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TfrmModificarPlanillaDeExcelencia.DBGridCursosProgramadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_TipoDeCurso').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridCursosProgramados.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridCursosProgramados.Canvas.Brush.Color := clWhite;
              end;
    //Esta l�nea es nueva
    DBGridCursosProgramados.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TfrmModificarPlanillaDeExcelencia.DBGridCursosRealizadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_TipoDeCurso').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridCursosRealizados.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridCursosRealizados.Canvas.Brush.Color := clWhite;
              end;
    //Esta l�nea es nueva
    DBGridCursosRealizados.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;



procedure TfrmModificarPlanillaDeExcelencia.btnResetearRegistroHospitalesDeExcelenciaClick(
  Sender: TObject);
begin
  //** Reseteo los valores principales de la Planilla de Excelencia **

  //Reposiciono el ComboBox del periodo a c�mo estaba inicialmente
  ComboBoxSemestreHospitalesDeExcelencia.ItemIndex:= FPeriodo;

  //Reposiciono el DateTimePicker correctamente a c�mo estaba inicialmente
  if (FPeriodo=0)
    then
      begin
        //Posiciono el DateTimePicker seg�n el a�o y periodo que se recibi�
        DateTimePickerAnnoPlanillaDeExcelencia.Date:= StrToDate('01/01/' + IntToStr(FAnno))
      end
        else
          begin
            //Posiciono el DateTimePicker seg�n el a�o y periodo que se recibi�
            DateTimePickerAnnoPlanillaDeExcelencia.Date:= StrToDate('01/06/' + IntToStr(FAnno))
          end;

  //Borro todos los Cursos Programados Temporales que ya han sido modificados
  DptoCapacitacion.EliminarCursosProgramadosTemporalesPorID_Planilla(FID_Planilla);

  //Borro todos los Cursos Realizados Temporales
  DptoCapacitacion.EliminarCursosRealizadosTemporalesPorID_Planilla(FID_Planilla);

  //Mando a copiar los cursos que hab�a inicialmente hacia las tablas temporales
  DptoCapacitacion.CopiarCursosProgramadosPorID_Planilla(FID_Planilla);
  DptoCapacitacion.CopiarCursosRealizadosPorID_Planilla(FID_Planilla);

  //Mando a que se muestren nuevamente los Cursos temporales en la Forma de Modificaci�n
  DptoCapacitacion.MostrarCursosProgramadosTemporalesPorID_Planilla(FID_Planilla);
  DptoCapacitacion.MostrarCursosRealizadosTemporalesPorID_Planilla(FID_Planilla);

  //Verifico si debo habilitar o no el bot�n de 'Quitar' para Cursos Programados
  if (DptoCapacitacion.CantidadDeCursosProgramadosTemporales <>0)
    then
      btnQuitarCursoProgramado.Enabled:= True
        else
          btnQuitarCursoProgramado.Enabled:= False;

  //Verifico si debo habilitar o no el bot�n de 'Quitar' para Cursos Realizados
  if (DptoCapacitacion.CantidadDeCursosRealizadosTemporales <>0)
    then
      btnQuitarCursoRealizado.Enabled:= True
        else
          btnQuitarCursoRealizado.Enabled:= False;
end;


procedure TfrmModificarPlanillaDeExcelencia.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;


procedure TfrmModificarPlanillaDeExcelencia.DBMemoCorreosElectronicosCapacActualClick(
  Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (DBMemoCorreosElectronicosCapacActual.Text <> '')
    then
      begin
        Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       TDBMemo(Sender).Text),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            DBMemoCorreosElectronicosCapacActual.Cursor:= crDefault;
          end;
end;

procedure TfrmModificarPlanillaDeExcelencia.DBGridTiposDeCursosRealizadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('Nombre_TipoDeCurso').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridTiposDeCursosRealizados.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridTiposDeCursosRealizados.Canvas.Brush.Color := clWhite;
              end;
    //Esta l�nea es nueva
    DBGridTiposDeCursosRealizados.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TfrmModificarPlanillaDeExcelencia.DateTimePickerAnnoPlanillaDeExcelenciaIIChange(
  Sender: TObject);
begin
  //Cambio la fecha del otro DateTimePicker
  DateTimePickerAnnoPlanillaDeExcelencia.Date:= DateTimePickerAnnoPlanillaDeExcelenciaII.Date;
end;

procedure TfrmModificarPlanillaDeExcelencia.DateTimePickerAnnoPlanillaDeExcelenciaChange(
  Sender: TObject);
begin
  //Cambio la fecha del otro DateTimePicker
  DateTimePickerAnnoPlanillaDeExcelenciaII.Date:= DateTimePickerAnnoPlanillaDeExcelencia.Date;
end;

procedure TfrmModificarPlanillaDeExcelencia.ComboBoxSemestreHospitalesDeExcelenciaChange(
  Sender: TObject);
begin
  //Cambio el semestre del otro comboBox
  ComboBoxSemestreHospitalesDeExcelenciaII.ItemIndex:= ComboBoxSemestreHospitalesDeExcelencia.ItemIndex;
end;

procedure TfrmModificarPlanillaDeExcelencia.ComboBoxSemestreHospitalesDeExcelenciaIIChange(
  Sender: TObject);
begin
  //Cambio el semestre del otro comboBox
  ComboBoxSemestreHospitalesDeExcelencia.ItemIndex:= ComboBoxSemestreHospitalesDeExcelenciaII.ItemIndex;
end;

end.
