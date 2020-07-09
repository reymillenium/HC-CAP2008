unit UfrmModificarTipoDeCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls,

  UDptoCapacitacion, UDataModuleHospitalesDeExcelencia, UTipoDeCurso;

type
  TfrmModificarTipoDeCurso = class(TForm)
    btnAceptarModificarTipoDeCurso: TButton;
    btnResetearModificarTipoDeCurso: TButton;
    btnCancelarModificarTipoDeCurso: TButton;
    lblNombreTipoDeCurso: TLabel;
    DBedtNombreTipoDeCurso: TDBEdit;
    lblEstado: TLabel;
    DBComboBoxEstado: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure edtNombreTipoDeCursoKeyPress(Sender: TObject; var Key: Char);
    procedure btnResetearModificarTipoDeCursoClick(Sender: TObject);
    procedure btnCancelarModificarTipoDeCursoClick(Sender: TObject);
    procedure btnAceptarModificarTipoDeCursoClick(Sender: TObject);

    function HuboCambiosEnAlgo: Boolean;
    function HuboCambiosEnTodo: Boolean;
    function HuboCambiosEnNombre: Boolean;
    function HuboCambiosEnEstado: Boolean;

    procedure DBedtNombreTipoDeCursoKeyPress(Sender: TObject; var Key: Char);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure DBComboBoxEstadoDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure DBComboBoxEstadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TempID_TipoDeCurso: Integer;
  end;

var
  frmModificarTipoDeCurso: TfrmModificarTipoDeCurso;

implementation
var
    DptoCapacitacion: TDptoCapacitacion;
    TempViejoTipoDeCurso: TTipoDeCurso;
    TempNuevoTipoDeCurso: TTipoDeCurso;
    
{$R *.dfm}



procedure TfrmModificarTipoDeCurso.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Busco el Tipo de Curso que debo modificar, en la BD.
  DptoCapacitacion.MostrarTipoDeCursoPorID_TipoDeCurso(TempID_TipoDeCurso);

  //Creo un Tipo de Curso para guardar los valores iniciales
  TempViejoTipoDeCurso:= TTipoDeCurso.Create;

  //Guardo en el viejo Tipo de Curso temporal el dato mostrado en el DBEdit de la forma
  TempViejoTipoDeCurso.NombreTipoDeCurso:= DBedtNombreTipoDeCurso.Text;

  //Guardo en el viejo Tipo de Curso temporal el dato mostrado en el DBComboBox de la forma
  TempViejoTipoDeCurso.Estado:= DBComboBoxEstado.Text;

  //Coloco el Focus en el DBEdit del nombre del Tipo de Curso
  DBedtNombreTipoDeCurso.SetFocus;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarTipoDeCurso.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmModificarTipoDeCurso.edtNombreTipoDeCursoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarModificarTipoDeCurso.Click;
end;



procedure TfrmModificarTipoDeCurso.btnResetearModificarTipoDeCursoClick(Sender: TObject);
begin
  //Reseteo el dato del DBEdit, del nombre del Tipo de Curso, a su estado inicial
  DBedtNombreTipoDeCurso.Text:= TempViejoTipoDeCurso.NombreTipoDeCurso;

  //Reseteo el dato del DBComboBox, del Estado del Tipo de Curso, a su estado inicial
  DBComboBoxEstado.Text:= TempViejoTipoDeCurso.Estado;

  //Busco el Tipo de Curso que debo modificar, en la BD.
  DptoCapacitacion.MostrarTipoDeCursoPorID_TipoDeCurso(TempID_TipoDeCurso);
end;



procedure TfrmModificarTipoDeCurso.btnCancelarModificarTipoDeCursoClick(
  Sender: TObject);
begin
  //Cierro la forma
  frmModificarTipoDeCurso.Close;
end;



procedure TfrmModificarTipoDeCurso.btnAceptarModificarTipoDeCursoClick(Sender: TObject);
begin
  //Verifico primero si el DBEdit del nombre del Tipo de Curso no fue vaciado completamente (dejado en blanco)
  if (DBedtNombreTipoDeCurso.Text <> '')
    then
      begin
        //Creo el Nuevo Tipo de Curso temporal
        TempNuevoTipoDeCurso:= TTipoDeCurso.Create;

        //Relleno el Nuevo Tipo de Curso temporal
        TempNuevoTipoDeCurso.NombreTipoDeCurso:= DBedtNombreTipoDeCurso.Text;
        TempNuevoTipoDeCurso.Estado:= DBComboBoxEstado.Text;
        
        //Verifico si hubo cambios reales
        if (HuboCambiosEnAlgo = True)
          then
            begin
              //Llamo al procedimiento que modifica el Tipo de Curso en la BD
              DptoCapacitacion.ModificarTipoDeCurso(TempID_TipoDeCurso, TempNuevoTipoDeCurso);

              //Actualizo el DBGrid del listado de los Tipos de Cursos, en la pestaña de administración de Tipos de Cursos
              DptoCapacitacion.MostrarTiposDeCursos;

              //Personalizo la traza para cambios totales
              if (HuboCambiosEnTodo = True)
                then
                  begin
                    //Inserto la Traza
                    DptoCapacitacion.GuardarTrazaDelSistema('Cambió el nombre del Tipo de Curso ' + '"' + TempViejoTipoDeCurso.NombreTipoDeCurso + '"' + ' por el de ' + '"' + TempNuevoTipoDeCurso.NombreTipoDeCurso + '"' + ' y además cambió su estado de ' + '"' + TempViejoTipoDeCurso.Estado + '"' + ' hacia ' + '"' + TempNuevoTipoDeCurso.Estado + '"' + '.');
                  end;

              //Personalizo la traza para cambios en el nombre
              if (HuboCambiosEnNombre = True)
                then
                  begin
                    //Inserto la Traza
                    DptoCapacitacion.GuardarTrazaDelSistema('Cambió el nombre del Tipo de Curso ' + '"' + TempViejoTipoDeCurso.NombreTipoDeCurso + '"' + ' por el de ' + '"' + TempNuevoTipoDeCurso.NombreTipoDeCurso + '"' + '.');
                  end;

              //Personalizo la traza para cambios en el estado
              if (HuboCambiosEnEstado = True)
                then
                  begin
                    //Inserto la Traza
                    DptoCapacitacion.GuardarTrazaDelSistema('Cambió el estado del Tipo de Curso, de ' + '"' + TempViejoTipoDeCurso.Estado + '"' + ' hacia ' + '"' + TempNuevoTipoDeCurso.Estado + '"' + '.');
                  end;

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;
            end;

        //Cierro la forma
        frmModificarTipoDeCurso.Close;
      end
        else
          begin
            //ShowMessage('No puede dejar en blanco el nombre del Tipo de Curso.');
            Application.MessageBox('No puede dejar en blanco el nombre del Tipo de Curso.','Error',mb_Ok + mb_IconError);
          end;
end;



function TfrmModificarTipoDeCurso.HuboCambiosEnAlgo: Boolean;
begin
  //Verifico si se realizaron cambios en el nombre y Estado del Tipo de Curso
  if (   (TempViejoTipoDeCurso.NombreTipoDeCurso <> TempNuevoTipoDeCurso.NombreTipoDeCurso) or (TempViejoTipoDeCurso.Estado <> TempNuevoTipoDeCurso.Estado)   )
    then
      Result:= True
        else
          Result:= False;
end;



function TfrmModificarTipoDeCurso.HuboCambiosEnTodo: Boolean;
begin
  //Verifico si se realizaron cambios en el nombre y Estado del Tipo de Curso
  if (   (TempViejoTipoDeCurso.NombreTipoDeCurso <> TempNuevoTipoDeCurso.NombreTipoDeCurso) and (TempViejoTipoDeCurso.Estado <> TempNuevoTipoDeCurso.Estado)   )
    then
      Result:= True
        else
          Result:= False;
end;


function TfrmModificarTipoDeCurso.HuboCambiosEnNombre: Boolean;
begin
  //Verifico si se realizaron cambios en el nombre del Tipo de Curso
  if (   (TempViejoTipoDeCurso.NombreTipoDeCurso <> TempNuevoTipoDeCurso.NombreTipoDeCurso) and (TempViejoTipoDeCurso.Estado = TempNuevoTipoDeCurso.Estado)   )
    then
      Result:= True
        else
          Result:= False;
end;


function TfrmModificarTipoDeCurso.HuboCambiosEnEstado: Boolean;
begin
  //Verifico si se realizaron cambios en el Estado del Tipo de Curso
  if (   (TempViejoTipoDeCurso.NombreTipoDeCurso = TempNuevoTipoDeCurso.NombreTipoDeCurso) and (TempViejoTipoDeCurso.Estado <> TempNuevoTipoDeCurso.Estado)   )
    then
      Result:= True
        else
          Result:= False;
end;


procedure TfrmModificarTipoDeCurso.DBedtNombreTipoDeCursoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarModificarTipoDeCurso.Click;
end;


procedure TfrmModificarTipoDeCurso.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;


procedure TfrmModificarTipoDeCurso.DBComboBoxEstadoDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed= TColor($006C6CFF);
begin
  with (Control as TDBComboBox) do
    begin
      {El primer Item (Habilitado) en verde pálido y
       el segundo Item (Deshabilitado) en rojo pálido}
      if (Index= 0)
        then
          Canvas.Brush.Color:= clPaleRed
            else
              begin
                if (   (Index= 1)   )
                  then
                    Canvas.Brush.Color:= clPaleGreen;
              end;
              
      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left,Rect.Top,Items[Index]);
    end; 
end;

procedure TfrmModificarTipoDeCurso.DBComboBoxEstadoChange(Sender: TObject);
begin
  //Pongo el focus en el Edit
  DBedtNombreTipoDeCurso.SetFocus;
end;

end.
