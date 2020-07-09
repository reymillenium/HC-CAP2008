unit UfrmNuevaPlanillaDeExcelencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Grids, DBGrids, Mask, ExtCtrls,
  StrUtils, ShellApi,

  {Units confeccionadas por mi.}
  UDptoCapacitacion, UCurso,

  {DataModules confeccionados por mi.}
  UDataModuleConexionGeneral, UDataModuleHospitalesDeExcelencia, Buttons,
  ImgList, CheckLst, OleCtrls, Crystal_TLB;

type
  TfrmNuevaPlanillaDeExcelencia = class(TForm)
    PageControlNuevaPlanillaDeExcelencia: TPageControl;
    TabSheetPlanDeCapacitacion: TTabSheet;
    TabSheetDatosHospitalYCapacitador: TTabSheet;
    GroupBoxListadoDeHospitalesDeExcelencia: TGroupBox;
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
    DBTextID_Hospital: TDBText;
    Label66: TLabel;
    Label71: TLabel;
    DBedtProvincia: TDBEdit;
    Label64: TLabel;
    DBMemoDireccion: TDBMemo;
    DBedtNombreHospitalDeExcelencia: TDBEdit;
    PageControlPlanDeCursos: TPageControl;
    TabSheetCursosProgramados: TTabSheet;
    GroupBoxCursosProgramados: TGroupBox;
    lblLugarCursosProgramados: TLabel;
    lblFechaCursosProgramados: TLabel;
    lblCantidadParticipantesCursosProgramados: TLabel;
    TabSheetCursosRealizados: TTabSheet;
    GroupBoxCursosRealizados: TGroupBox;
    lblLugarCursosRealizados: TLabel;
    lblFechaCursosRealizados: TLabel;
    lblCantidadParticipantesCursosRealizados: TLabel;
    lblNombreDelCursoCursosRealizados: TLabel;
    ListBoxCursosRealizadosNombres: TListBox;
    ListBoxCursosRealizadosLugares: TListBox;
    ListBoxCursosRealizadosFechas: TListBox;
    ListBoxCursosRealizadosCantParticipantes: TListBox;
    lblNombreDelCursoCursosProgramados: TLabel;
    ListBoxCursosProgramadosNombres: TListBox;
    ListBoxCursosProgramadosLugares: TListBox;
    ListBoxCursosProgramadosFechas: TListBox;
    ListBoxCursosProgramadosCantParticipantes: TListBox;
    lblAnno: TLabel;
    DateTimePickerAnnoPlanillaDeExcelencia: TDateTimePicker;
    btnInsertarRegistroHospitalesDeExcelencia: TButton;
    btnCancelarPlanillaHospitalesDeExcelencia: TButton;
    DBTextID_PlanillaDeExcelencia: TDBText;
    lblPeriodo: TLabel;
    ComboBoxSemestreHospitalesDeExcelencia: TComboBox;
    GroupBox1: TGroupBox;
    DBGridTiposDeCursos: TDBGrid;
    edtLugarCursosProgramados: TEdit;
    btnInsertarCursoProgramado: TButton;
    btnEliminarCursoProgramado: TButton;
    DateTimePickerFechaInicioCursosProgramados: TDateTimePicker;
    edtCantidadParticipantesCursosProgramados: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblAnnoII: TLabel;
    DateTimePickerAnnoPlanillaDeExcelenciaII: TDateTimePicker;
    lblPeriodoII: TLabel;
    ComboBoxSemestreHospitalesDeExcelenciaII: TComboBox;
    btnInsertarRegistroHospitalesDeExcelenciaII: TButton;
    btnCancelarPlanillaHospitalesDeExcelenciaII: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    edtLugarCursosRealizados: TEdit;
    btnInsertarCursoRealizado: TButton;
    btnEliminarCursoRealizado: TButton;
    DateTimePickerFechaInicioCursosRealizados: TDateTimePicker;
    edtCantidadParticipantesCursosRealizados: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    
    procedure FormShow(Sender: TObject);
    procedure btnCancelarHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnCancelarPlanillaHospitalesDeExcelenciaClick(Sender: TObject);
    procedure btnInsertarCursoProgramadoClick(Sender: TObject);
    procedure btnInsertarCursoRealizadoClick(Sender: TObject);
    procedure btnEliminarCursoRealizadoClick(Sender: TObject);
    procedure ListBoxCursosRealizadosNombresClick(Sender: TObject);
    procedure OnKeyPressSoloNumeros(Sender: TObject; var Key: Char);

    procedure SeleccionarListBoxCursosProgramados(aIndex: Integer);
    procedure SeleccionarListBoxCursosRealizados(aIndex: Integer);
    procedure ListBoxCursosRealizadosLugaresClick(Sender: TObject);
    procedure ListBoxCursosRealizadosFechasClick(Sender: TObject);
    procedure ListBoxCursosRealizadosCantParticipantesClick(Sender: TObject);
    procedure btnEliminarCursoProgramadoClick(Sender: TObject);
    procedure ListBoxCursosProgramadosNombresClick(Sender: TObject);
    procedure ListBoxCursosProgramadosLugaresClick(Sender: TObject);
    procedure ListBoxCursosProgramadosFechasClick(Sender: TObject);
    procedure ListBoxCursosProgramadosCantParticipantesClick(Sender: TObject);
    procedure edtLugarCursosProgramadosKeyPress(Sender: TObject; var Key: Char);
    procedure edtLugarCursosRealizadosKeyPress(Sender: TObject; var Key: Char);
    procedure btnInsertarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
    procedure TabSheetCursosProgramadosShow(Sender: TObject);
    procedure TabSheetCursosRealizadosShow(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure DBMemoCorreosElectronicosCapacActualClick(Sender: TObject);
    procedure DateTimePickerAnnoPlanillaDeExcelenciaChange(
      Sender: TObject);
    procedure DateTimePickerAnnoPlanillaDeExcelenciaIIChange(
      Sender: TObject);
    procedure ComboBoxSemestreHospitalesDeExcelenciaChange(
      Sender: TObject);
    procedure ComboBoxSemestreHospitalesDeExcelenciaIIChange(
      Sender: TObject);

  private
    { Private declarations }
    FAnno: Integer;
    FPeriodo: Integer;

  public
    { Public declarations }
    //campos para acceder a la Planilla de Excelencia
    FID_Hospital: Integer;
    
    FProvinciaIndex: Integer;

  end;

var
  frmNuevaPlanillaDeExcelencia: TfrmNuevaPlanillaDeExcelencia;

implementation

uses DB;
var
    DptoCapacitacion: TDptoCapacitacion;
    TempCursoProgramado: TCurso;
    TempCursoRealizado: TCurso;

{$R *.dfm}



procedure TfrmNuevaPlanillaDeExcelencia.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
  NombreHospital: String;
begin
  //Muestro los Tipos de Cursos habilitados existentes en el DBGridTiposDeCursos
  DptoCapacitacion.MostrarTiposDeCursosHabilitados;

  //Muestro los datos del Hospital de Excelencia para el cual crearé la nueva Planilla de Excelencia
  DptoCapacitacion.MostrarHospitalDeExcelencia(FID_Hospital);

  //Muestro los datos del Capacitador del Hospital de Excelencia, para el cual crearé la nueva Planilla de Excelencia
  DptoCapacitacion.MostrarCapacPorID_HospitalParaAdmin(FID_Hospital);

  //Obtengo el nombre del Hospital de Excelencia
  NombreHospital:= DBedtNombreHospitalDeExcelencia.Field.Text;

  //Le cambio el Caption a la forma
  frmNuevaPlanillaDeExcelencia.Caption:= 'Nueva Planilla de Excelencia, centro ' + NombreHospital + '.';

  //Limpio los ListBox de la pestaña de Cursos Programados
  ListBoxCursosProgramadosNombres.Clear;
  ListBoxCursosProgramadosLugares.Clear;
  ListBoxCursosProgramadosFechas.Clear;
  ListBoxCursosProgramadosCantParticipantes.Clear;

  //Limpio los ListBox de la pestaña de Cursos Realizados
  ListBoxCursosRealizadosNombres.Clear;
  ListBoxCursosRealizadosLugares.Clear;
  ListBoxCursosRealizadosFechas.Clear;
  ListBoxCursosRealizadosCantParticipantes.Clear;

  //Limpio los Edits de la pestaña de Cursos Programados
  edtLugarCursosProgramados.Clear;
  edtCantidadParticipantesCursosProgramados.Clear;

  //Limpio los Edits de la pestaña de Cursos Realizados
  edtLugarCursosRealizados.Clear;
  edtCantidadParticipantesCursosRealizados.Clear;

  //Coloco activa la primera pestaña del PageControlNuevaPlanillaDeExcelencia
  PageControlNuevaPlanillaDeExcelencia.ActivePageIndex:= 0;

  //Coloco activa la primera pestaña del PageControlPlanDeCursos
  PageControlPlanDeCursos.ActivePageIndex:= 0;

  //Coloco de manera incremental la posición del DateTime del año y el ComboBox del semestre
  if (FAnno > 0)
    then
      begin
        if (FPeriodo=0)
          then
            ComboBoxSemestreHospitalesDeExcelencia.ItemIndex:= 1
              else
                begin
                  DateTimePickerAnnoPlanillaDeExcelencia.Date:= StrToDate('01/01/' + IntToStr(FAnno + 1));
                  ComboBoxSemestreHospitalesDeExcelencia.ItemIndex:= 0;
                end;
      end;
           
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevaPlanillaDeExcelencia.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmNuevaPlanillaDeExcelencia.btnCancelarHospitalesDeExcelenciaClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaPlanillaDeExcelencia.Close;
end;



procedure TfrmNuevaPlanillaDeExcelencia.btnCancelarPlanillaHospitalesDeExcelenciaClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaPlanillaDeExcelencia.Close;
end;



procedure TfrmNuevaPlanillaDeExcelencia.btnInsertarCursoProgramadoClick(Sender: TObject);
var
  NombreDelCursoProgramado: String;
  LugarProgramado: String;
  FechaInicioProgramado: String;
  CantParticipantesProgramado: String;
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;  
begin
  //Ante todo verifico que todos los componentes están llenos
  if (  (edtLugarCursosProgramados.Text <> '') and (edtCantidadParticipantesCursosProgramados.Text <> '')    )
    then
      begin
        //Primero recojo los datos de los campos a insertar en los ListBox
        NombreDelCursoProgramado:= DBGridTiposDeCursos.SelectedField.Value;
        LugarProgramado:= edtLugarCursosProgramados.Text;

  anno:= AnsiRightStr(DateToStr(DateTimePickerFechaInicioCursosProgramados.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimePickerFechaInicioCursosProgramados.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

        FechaInicioProgramado:= anno;
        CantParticipantesProgramado:= edtCantidadParticipantesCursosProgramados.Text;

        //Procedo a insertar los campos en los ListBox
        ListBoxCursosProgramadosNombres.Items.Add(NombreDelCursoProgramado);
        ListBoxCursosProgramadosLugares.Items.Add(LugarProgramado);
        ListBoxCursosProgramadosFechas.Items.Add(FechaInicioProgramado);
        ListBoxCursosProgramadosCantParticipantes.Items.Add(CantParticipantesProgramado);

        //Limpio los Edits de las pestaña de Cursos Programados
        edtLugarCursosProgramados.Clear;
        edtCantidadParticipantesCursosProgramados.Clear;
      end
        else
          begin
            if (  (edtLugarCursosProgramados.Text = '') and (edtCantidadParticipantesCursosProgramados.Text = '')    )
              then
                begin
                  Application.MessageBox('No puede dejar en blanco el lugar donde se realizará el curso, ni su cantidad de participantes.','Error',mb_Ok + mb_IconError);
                  edtLugarCursosProgramados.SetFocus;
                end
                  else
                    if (  (edtLugarCursosProgramados.Text = '') and (edtCantidadParticipantesCursosProgramados.Text <> '')    )
                      then
                        begin
                          Application.MessageBox('No puede dejar en blanco el lugar donde se realizará el curso.','Error',mb_Ok + mb_IconError);
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



procedure TfrmNuevaPlanillaDeExcelencia.btnInsertarCursoRealizadoClick(Sender: TObject);
var
  NombreDelCursoRealizado: String;
  LugarRealizado: String;
  FechaInicioRealizado: String;
  CantParticipantesRealizado: String;
  anno: AnsiString;
  year: integer;
  mes, dia, ano :Word;
begin
  //Ante todo verifico que todos los componentes están llenos
  if (  (edtLugarCursosRealizados.Text <> '') and (edtCantidadParticipantesCursosRealizados.Text <> '')    )
    then
      begin
        //Primero recojo los datos de los campos a insertar en los ListBox
        NombreDelCursoRealizado:= DBGridTiposDeCursos.SelectedField.Value;
        LugarRealizado:= edtLugarCursosRealizados.Text;

  anno:= AnsiRightStr(DateToStr(DateTimePickerFechaInicioCursosRealizados.Date), 4 );

  //Intento convertir la cadena hacia un número entero
  year:= StrToIntDef(anno, 0);

  //Verifico si tomó el valor default = 0 (no es entero)
  if (year = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimePickerFechaInicioCursosRealizados.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= IntToStr(ano);
      end;

        FechaInicioRealizado:= anno;
        CantParticipantesRealizado:= edtCantidadParticipantesCursosRealizados.Text;

        //Procedo a insertar los campos en los ListBox
        ListBoxCursosRealizadosNombres.Items.Add(NombreDelCursoRealizado);
        ListBoxCursosRealizadosLugares.Items.Add(LugarRealizado);
        ListBoxCursosRealizadosFechas.Items.Add(FechaInicioRealizado);
        ListBoxCursosRealizadosCantParticipantes.Items.Add(CantParticipantesRealizado);

        //Limpio los Edits de las pestaña de Cursos Realizados
        edtLugarCursosRealizados.Clear;
        edtCantidadParticipantesCursosRealizados.Clear;
      end
        else
          begin
            if (  (edtLugarCursosRealizados.Text = '') and (edtCantidadParticipantesCursosRealizados.Text = '')    )
              then
                begin
                  Application.MessageBox('No puede dejar en blanco el lugar donde se realizó el curso, ni su cantidad de participantes.','Error',mb_Ok + mb_IconError);
                  edtLugarCursosRealizados.SetFocus;
                end
                  else
                    if (  (edtLugarCursosRealizados.Text = '') and (edtCantidadParticipantesCursosRealizados.Text <> '')    )
                      then
                        begin
                          Application.MessageBox('No puede dejar en blanco el lugar donde se realizó el curso.','Error',mb_Ok + mb_IconError);
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



procedure TfrmNuevaPlanillaDeExcelencia.btnEliminarCursoRealizadoClick(Sender: TObject);
begin
  //Elimino de cada ListBox la fila seleccionada
  ListBoxCursosRealizadosNombres.DeleteSelected;
  ListBoxCursosRealizadosLugares.DeleteSelected;
  ListBoxCursosRealizadosFechas.DeleteSelected;
  ListBoxCursosRealizadosCantParticipantes.DeleteSelected;
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosRealizadosNombresClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosRealizadosNombres.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosRealizados(ListBoxCursosRealizadosNombres.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.OnKeyPressSoloNumeros(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then Abort;

  if (PageControlPlanDeCursos.ActivePageIndex= 0)
    then
      begin
        if (Key in [#13]) then btnInsertarCursoProgramado.Click;
      end
        else
          if (PageControlPlanDeCursos.ActivePageIndex= 1)
            then
              begin
                if (Key in [#13]) then btnInsertarCursoRealizado.Click;
              end;
end;



procedure TfrmNuevaPlanillaDeExcelencia.SeleccionarListBoxCursosProgramados(aIndex: Integer);
begin
  //Selecciono todos los ListBox en la pestaña de Cursos Programados, en el Index especificado.
  ListBoxCursosProgramadosNombres.Selected[aIndex]:= True;
  ListBoxCursosProgramadosLugares.Selected[aIndex]:= True;
  ListBoxCursosProgramadosFechas.Selected[aIndex]:= True;
  ListBoxCursosProgramadosCantParticipantes.Selected[aIndex]:= True;
end;



procedure TfrmNuevaPlanillaDeExcelencia.SeleccionarListBoxCursosRealizados(aIndex: Integer);
begin
  //Selecciono todos los ListBox en la pestaña de Cursos Realizados, en el Index especificado.
  ListBoxCursosRealizadosNombres.Selected[aIndex]:= True;
  ListBoxCursosRealizadosLugares.Selected[aIndex]:= True;
  ListBoxCursosRealizadosFechas.Selected[aIndex]:= True;
  ListBoxCursosRealizadosCantParticipantes.Selected[aIndex]:= True;
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosRealizadosLugaresClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosRealizadosLugares.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosRealizados(ListBoxCursosRealizadosLugares.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosRealizadosFechasClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosRealizadosFechas.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosRealizados(ListBoxCursosRealizadosFechas.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosRealizadosCantParticipantesClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosRealizadosCantParticipantes.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosRealizados(ListBoxCursosRealizadosCantParticipantes.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.btnEliminarCursoProgramadoClick(Sender: TObject);
begin
  //Elimino de cada ListBox la fila seleccionada
  ListBoxCursosProgramadosNombres.DeleteSelected;
  ListBoxCursosProgramadosLugares.DeleteSelected;
  ListBoxCursosProgramadosFechas.DeleteSelected;
  ListBoxCursosProgramadosCantParticipantes.DeleteSelected;
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosProgramadosNombresClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosProgramadosNombres.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosProgramados(ListBoxCursosProgramadosNombres.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosProgramadosLugaresClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosProgramadosLugares.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosProgramados(ListBoxCursosProgramadosLugares.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosProgramadosFechasClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosProgramadosFechas.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosProgramados(ListBoxCursosProgramadosFechas.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.ListBoxCursosProgramadosCantParticipantesClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxCursosProgramadosCantParticipantes.ItemIndex >= 0)
    then
      SeleccionarListBoxCursosProgramados(ListBoxCursosProgramadosCantParticipantes.ItemIndex);
end;



procedure TfrmNuevaPlanillaDeExcelencia.edtLugarCursosProgramadosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnInsertarCursoProgramado.Click;
end;



procedure TfrmNuevaPlanillaDeExcelencia.edtLugarCursosRealizadosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnInsertarCursoRealizado.Click;
end;



procedure TfrmNuevaPlanillaDeExcelencia.btnInsertarRegistroHospitalesDeExcelenciaClick(Sender: TObject);
Var
  id_Hospital: Integer;
  Anno: Integer;
  Periodo: Integer;
  id_Planilla: Integer;
  i: Integer;
  NombreHospital: AnsiString;
  semestre: AnsiString;
  mes, dia, ano :Word;

  Provincia, Direccion, NombreCapac, PrimerApellido, SegundoApellido, NumeroCI, Telefonos, Correos: AnsiString;
  CantCursosProgramados, CantCursosRealizados: AnsiString;
begin
  //Recojo los valores del encabezamiento de la Planilla de Excelencia
  id_Hospital:= DBTextID_Hospital.Field.Value;

  //Intento convertir la fecha hacia un número entero
  Anno:= StrToIntDef(   AnsiRightStr(DateToStr(DateTimePickerAnnoPlanillaDeExcelencia.Date), 4 ), 0   );

  //Verifico si tomó el valor default = 0 (no es entero)
  if (Anno = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(DateTimePickerAnnoPlanillaDeExcelencia.Date , ano, mes, dia);

        //Tomo lo que me interesa (el año)
        Anno:= ano;
      end;
        
  Periodo:= ComboBoxSemestreHospitalesDeExcelencia.ItemIndex;

  if (Periodo= 0)
    then
      begin
        //Lleno la variable coloquial del semestre
        semestre:= '1er semestre';
      end
        else
          begin
            //Lleno la variable coloquial del semestre
            semestre:= '2do semestre';
          end;

  //Recojo el nombre del Hospital de Excelencia
  NombreHospital:= frmNuevaPlanillaDeExcelencia.DBedtNombreHospitalDeExcelencia.Text;

  //Verifico que ya no exista una Planilla de Excelencia igual
  if (DptoCapacitacion.ExistePlanillaDeExcelencia(id_Hospital, Anno, Periodo)= False)
    then
      begin
        //Inserto el encabezamiento de la Planilla de Excelencia
        DptoCapacitacion.InsertarEncabezamientoPlanillaDeExcelencia(id_Hospital, Anno, Periodo);

        //Busco el id_Planilla del encabezamiento de Planilla de Excelencia que se acaba de insertar
        DptoCapacitacion.BuscarID_PlanillaDeExcelencia(id_Hospital, Anno, Periodo);

        //Recojo el id_Planilla
        id_Planilla:= DBTextID_PlanillaDeExcelencia.Field.Value;

        //Verifico que el ListBox no esté vacio
        if (ListBoxCursosProgramadosNombres.Count<> 0)
          then
            begin
              //Recorro los ListBox de la pestaña de Cursos Programados
              for i:= 0 to ListBoxCursosProgramadosNombres.Count-1 do
                begin
                  //Creo el Curso Programado temporal
                  TempCursoProgramado:= TCurso.Create;

                  //Relleno los campos del Curso Programado temporal
                  TempCursoProgramado.Nombre_TipoDeCurso:= ListBoxCursosProgramadosNombres.Items.Strings[i];
                  TempCursoProgramado.Lugar:= ListBoxCursosProgramadosLugares.Items.Strings[i];
                  TempCursoProgramado.FechaInicio:= ListBoxCursosProgramadosFechas.Items.Strings[i];
                  TempCursoProgramado.CantidadParticipantes:= StrToInt(ListBoxCursosProgramadosCantParticipantes.Items.Strings[i]);
                  TempCursoProgramado.ID_Planilla:= id_Planilla;

                  //Mando a insertar el Curso Programado en la BD
                  DptoCapacitacion.InsertarCursoProgramado(TempCursoProgramado);

                  //Destruyo el Curso Programado temporal
                  TempCursoProgramado.Destroy;
                end;
            end;

        //Verifico que el ListBox no esté vacio
        if (ListBoxCursosRealizadosNombres.Count <> 0)
          then
            begin
              //Recorro los ListBox de la pestaña de Cursos Realizados
              for i:= 0 to ListBoxCursosRealizadosNombres.Count-1 do
                begin
                  //Creo el Curso Realizado temporal
                  TempCursoRealizado:= TCurso.Create;

                  //Relleno los campos del Curso Realizado temporal
                  TempCursoRealizado.Nombre_TipoDeCurso:= ListBoxCursosRealizadosNombres.Items.Strings[i];
                  TempCursoRealizado.Lugar:= ListBoxCursosRealizadosLugares.Items.Strings[i];
                  TempCursoRealizado.FechaInicio:= ListBoxCursosRealizadosFechas.Items.Strings[i];
                  TempCursoRealizado.CantidadParticipantes:= StrToInt(ListBoxCursosRealizadosCantParticipantes.Items.Strings[i]);
                  TempCursoRealizado.ID_Planilla:= id_Planilla;

                  //Mando a insertar el Curso Realizado en la BD
                  DptoCapacitacion.InsertarCursoRealizado(TempCursoRealizado);

                  //Destruyo el Curso Realizado temporal
                  TempCursoRealizado.Destroy;
                end;
            end;

        //Guardo el último año y Periodo insertado
        FAnno:= Anno;
        FPeriodo:= Periodo;

        //Actualizo las Planillas de Excelencia asociadas a ese Hospital
        DptoCapacitacion.MostrarPlanillasDeExcelenciaPorPeriodoYHospital(Periodo, id_Hospital);

        //Relleno los componentes de la traza
        Provincia:= DBedtProvincia.Field.Text;
        
        if (DBMemoDireccion.Field.Text<>'')
          then
            Direccion:= DBMemoDireccion.Text
              else
                Direccion:= 'una dirección desconocida';

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

        if (ListBoxCursosProgramadosNombres.Count<>0)
          then
            CantCursosProgramados:= IntToStr(ListBoxCursosProgramadosNombres.Count)
              else
                CantCursosProgramados:='ninguna información en cuanto a';

        if (ListBoxCursosRealizadosNombres.Count<>0)
          then
            CantCursosRealizados:= IntToStr(ListBoxCursosRealizadosNombres.Count)
              else
                CantCursosRealizados:='ninguna información en cuanto a';
                
        //Inserto la Traza
        DptoCapacitacion.GuardarTrazaDelSistema('Creó una Planilla de Excelencia para el ' + semestre + ' del año ' + IntToStr(Anno) + ' y en ella incluyó ' + CantCursosProgramados + ' Cursos Programados y ' + CantCursosRealizados + ' Cursos Realizados.' + ' Esta información se refiere al Plan de Capacitación del Hospital de Excelencia de nombre ' + NombreHospital + ', perteneciente a la provincia de ' + Provincia + ' y radicado en ' + Direccion + '. El mismo tiene asociado un Capacitador de nombre ' + NombreCapac + PrimerApellido + SegundoApellido + ', con carné de identidad ' + NumeroCI + ', su teléfono es ' + Telefonos + ' y su correo electrónico es ' + Correos + '.');

        //Actualizo todas las trazas
        DptoCapacitacion.MostrarTodasLasTrazas;

        //Actualizo el DBGrid de Cursos Programados en la forma principal
        DptoCapacitacion.MostrarCursosProgramadosPorID_Planilla(id_Planilla);

        //Actualizo el DBGrid de Cursos Realizados en la forma principal
        DptoCapacitacion.MostrarCursosRealizadosPorID_Planilla(id_Planilla);

        //Finalmente cierro la forma
        frmNuevaPlanillaDeExcelencia.Close;
      end
        else //Hay una Planilla de Excelencia igual en la BD
          begin
            if (Periodo= 0)
              then
                ShowMessage('El centro ' + NombreHospital + ' ya posee un Registro de Excelencia' + #13 + 'referente al primer semestre del año ' + IntToStr(Anno) + '.')
                  else
                    ShowMessage('El centro ' + NombreHospital + ' ya posee un Registro de Excelencia' + #13 + 'referente al segundo semestre del año ' + IntToStr(Anno) + '.');
          end;

end;



procedure TfrmNuevaPlanillaDeExcelencia.TabSheetCursosProgramadosShow(Sender: TObject);
begin
  //Pongo el focus en el Edit del Lugar
  edtLugarCursosProgramados.SetFocus;
end;

procedure TfrmNuevaPlanillaDeExcelencia.TabSheetCursosRealizadosShow(Sender: TObject);
begin
  //Pongo el focus en el Edit del Lugar
  edtLugarCursosRealizados.SetFocus;
end;


procedure TfrmNuevaPlanillaDeExcelencia.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;


procedure TfrmNuevaPlanillaDeExcelencia.DBMemoCorreosElectronicosCapacActualClick(
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

procedure TfrmNuevaPlanillaDeExcelencia.DateTimePickerAnnoPlanillaDeExcelenciaChange(
  Sender: TObject);
begin
  //Cambio la fecha del otro DateTimePicker
  DateTimePickerAnnoPlanillaDeExcelenciaII.Date:= DateTimePickerAnnoPlanillaDeExcelencia.Date;
end;

procedure TfrmNuevaPlanillaDeExcelencia.DateTimePickerAnnoPlanillaDeExcelenciaIIChange(
  Sender: TObject);
begin
  //Cambio la fecha del otro DateTimePicker
  DateTimePickerAnnoPlanillaDeExcelencia.Date:= DateTimePickerAnnoPlanillaDeExcelenciaII.Date;
end;

procedure TfrmNuevaPlanillaDeExcelencia.ComboBoxSemestreHospitalesDeExcelenciaChange(
  Sender: TObject);
begin
  //Cambio el semestre del otro comboBox
  ComboBoxSemestreHospitalesDeExcelenciaII.ItemIndex:= ComboBoxSemestreHospitalesDeExcelencia.ItemIndex;
end;

procedure TfrmNuevaPlanillaDeExcelencia.ComboBoxSemestreHospitalesDeExcelenciaIIChange(
  Sender: TObject);
begin
  //Cambio el semestre del otro comboBox
  ComboBoxSemestreHospitalesDeExcelencia.ItemIndex:= ComboBoxSemestreHospitalesDeExcelenciaII.ItemIndex;
end;

end.
