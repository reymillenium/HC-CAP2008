unit UfrmNuevoTipoDeCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,

  UDptoCapacitacion, UDataModuleHospitalesDeExcelencia, UTipoDeCurso;  

type
  TfrmNuevoTipoDeCurso = class(TForm)
    btnAceptarNuevoTipoDeCurso: TButton;
    btnLimpiarNuevoTipoDeCurso: TButton;
    btnCancelarNuevoTipoDeCurso: TButton;
    lblNombreTipoDeCurso: TLabel;
    edtNombreTipoDeCurso: TEdit;
    lblEstado: TLabel;
    ComboBoxEstado: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure edtNombreTipoDeCursoKeyPress(Sender: TObject; var Key: Char);
    procedure btnLimpiarNuevoTipoDeCursoClick(Sender: TObject);
    procedure btnCancelarNuevoTipoDeCursoClick(Sender: TObject);
    procedure btnAceptarNuevoTipoDeCursoClick(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure ComboBoxEstadoDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ComboBoxEstadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNuevoTipoDeCurso: TfrmNuevoTipoDeCurso;

implementation
var
    DptoCapacitacion: TDptoCapacitacion;
    TempNuevoTipoDeCurso: TTipoDeCurso;

{$R *.dfm}

procedure TfrmNuevoTipoDeCurso.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Limpio el Edit
  edtNombreTipoDeCurso.Clear;
  
  //Pongo el focus en el Edit
  edtNombreTipoDeCurso.SetFocus;

  //Pongo el ComboBox en posición inicial (habilitado)
  ComboBoxEstado.ItemIndex:= 0;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevoTipoDeCurso.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;

procedure TfrmNuevoTipoDeCurso.edtNombreTipoDeCursoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptarNuevoTipoDeCurso.Click;
end;

procedure TfrmNuevoTipoDeCurso.btnLimpiarNuevoTipoDeCursoClick(
  Sender: TObject);
begin
  //Limpio el Edit
  edtNombreTipoDeCurso.Clear;

  //Pongo el ComboBox de Estado en posición inicial (habilitado)
  ComboBoxEstado.ItemIndex:= 0;
end;

procedure TfrmNuevoTipoDeCurso.btnCancelarNuevoTipoDeCursoClick(
  Sender: TObject);
begin
  //Cierro la forma
  frmNuevoTipoDeCurso.Close;
end;

procedure TfrmNuevoTipoDeCurso.btnAceptarNuevoTipoDeCursoClick(Sender: TObject);
begin
  //Invoco el procedimiento que inserta el Tipo de Curso en la BD
  if (edtNombreTipoDeCurso.Text<> '')
    then
      begin
        if (Length(edtNombreTipoDeCurso.Text)<101)
          then
            begin
              //Creo el nuevo Tipo de Curso temporal
              TempNuevoTipoDeCurso:= TTipoDeCurso.Create;

              //Relleno el nuevo Tipo de Curso temporal con los valores de la forma
              TempNuevoTipoDeCurso.NombreTipoDeCurso:= edtNombreTipoDeCurso.Text;
              TempNuevoTipoDeCurso.Estado:= ComboBoxEstado.Text;

              //Llamo al procedimiento que inserta el Tipo de Curso
              DptoCapacitacion.InsertarTipoDeCurso(TempNuevoTipoDeCurso);

              //Inserto la Traza
              DptoCapacitacion.GuardarTrazaDelSistema('Creó el Tipo de Curso ' + '"' + TempNuevoTipoDeCurso.NombreTipoDeCurso + '"' + ', en el estado de ' + '"' + TempNuevoTipoDeCurso.Estado + '"' + '.');

              //Actualizo todas las trazas
              DptoCapacitacion.MostrarTodasLasTrazas;

              //Actualizo el DBGrid del listado de los Tipos de Cursos, en la pestaña de administración de Tipos de Cursos
              DptoCapacitacion.MostrarTiposDeCursos;

              //Cierro la forma
              frmNuevoTipoDeCurso.Close;
            end
              else
                begin
                  Application.MessageBox('No puede introducir un nombre de Tipo de Curso con más de 100 caracteres.','Información',mb_Ok + MB_ICONINFORMATION);
                end;
      end
        else
          begin
            Application.MessageBox('No puede dejar en blanco el nombre del Tipo de Curso.','Error',mb_Ok + mb_IconError);
          end;
end;


procedure TfrmNuevoTipoDeCurso.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;


procedure TfrmNuevoTipoDeCurso.ComboBoxEstadoDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed= TColor($006C6CFF);
begin
  with (Control as TComboBox) do
    begin
      {El primer Item (Habilitado) en rojo pálido y
       el segundo Item (Deshabilitado) en verde pálido}
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


procedure TfrmNuevoTipoDeCurso.ComboBoxEstadoChange(Sender: TObject);
begin
  //Pongo el focus en el Edit
  edtNombreTipoDeCurso.SetFocus;
end;

end.
