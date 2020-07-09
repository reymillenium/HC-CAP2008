unit UfrmContactoMasivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, StrUtils, ShellApi,

  UDptoCapacitacion, UCapacitador, UDataModuleHospitalesDeExcelencia;

type
  TfrmContactoMasivo = class(TForm)
    GroupBoxContactosMasivos: TGroupBox;
    DBGridGruposDeCorreos: TDBGrid;
    GroupBoxCorreosDeGrupos: TGroupBox;
    DBMemoCorreosDeGrupos: TDBMemo;
    btnCerrar: TButton;
    DBTextID_Contacto: TDBText;
    DBTextMinID: TDBText;
    DBTextMaxID: TDBText;
    DBMemoCorreosDelCapacitador: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);

    procedure AgruparContactos;
    procedure DBMemoCorreosDeGruposClick(Sender: TObject);
    procedure DBGridGruposDeCorreosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContactoMasivo: TfrmContactoMasivo;

implementation
Var
    DptoCapacitacion: TDptoCapacitacion;
    TempCapacitador: TCapacitador;

{$R *.dfm}

procedure TfrmContactoMasivo.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmContactoMasivo.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Verifico si ya existen grupos de correos en la BD (para no hacerlo por gusto una vez más)
  if (DptoCapacitacion.ExisteGruposDeCorreos = False)
    then
      begin
        //Realizo la agrupación
        AgruparContactos;
      end;
  
end;

procedure TfrmContactoMasivo.btnCerrarClick(Sender: TObject);
begin
  //Cierro la forma
  frmContactoMasivo.Close;
end;


procedure TfrmContactoMasivo.AgruparContactos;
var
  CantCapacitadores: Integer;
  CantArrobas: Integer;
  CantGrupos: Integer;
  IndiceGrupo: Integer;
  i, IDMin, IDMax: Integer;
  Posicion: Integer;

  CorreosDelCapacitador: AnsiString;
  TodosLosCorreos: AnsiString;
  GrupoDeCorreos: AnsiString;
  Correo: AnsiString;
begin
  //Inicializo las variables
  CorreosDelCapacitador:= '';
  TodosLosCorreos:= '';
  GrupoDeCorreos:= '';
  
  //Primero debo determinar cuántos Capacitadores u Hospitales de Excelencia existen
  CantCapacitadores:= DptoCapacitacion.CantidadDeHospitalesTotales;

  //Determino cuál es el menor y mayor "id_Hospital" de todos los existentes
  DptoCapacitacion.CalcularMinYMaxID;

  //Recojo los valores de menor y mayor "id_Hospital"
  IDMin:= StrToInt(DBTextMinID.Field.Text);
  IDMax:= StrToInt(DBTextMaxID.Field.Text);

  //Procedo a recorrer los Capacitadores en la BD uno por uno
  for i:= IDMin to IDMax do
    begin
      if (DptoCapacitacion.ExisteCapacitadorEnElHospital(i)= True)
        then
          begin
            //Obtengo los correos del Capacitador de turno
            DptoCapacitacion.BuscarCorreosDeCapacitadorPorID_Hospital(i);

            //Recojo los correos del capacitador de turno
            CorreosDelCapacitador:= DBMemoCorreosDelCapacitador.Text;

            //Verifico que tenga correos (no esté vacío)
            if (CorreosDelCapacitador <> '')
              then
                begin
                  TodosLosCorreos:= TodosLosCorreos + CorreosDelCapacitador;
                end;
            
          end;
    end;

  //Ahora debo contar la cantidad de correos (cantidad de '@' presentes)
  for i:= 1 to Length(TodosLosCorreos) do
    begin
      if (   MidStr(TodosLosCorreos, i, 1)= '@'   )
        then
          CantArrobas:= CantArrobas + 1;
    end;

  //Calculo la cantidad de grupitos de 15 correos c/u
  {if (   Frac(CantArrobas / 15) > 0  )
    then
      begin
        CantGrupos:= Int(CantArrobas / 15) + 1;
      end
        else
          begin
            CantGrupos:= Int(CantArrobas / 15);
          end;}
  
  //Posiciono el Indice de Grupo en el primero de ellos
  IndiceGrupo:= 1;

  //Recorro c/u de los correos
  for i:= 1 to CantArrobas do
    begin
      //Determino la posición del primer ";"
      Posicion:= Pos(';', TodosLosCorreos);

      //Recojo el correo
      Correo:= LeftStr(TodosLosCorreos, Posicion);

      //Elimino el correo ya recogido
      Delete(TodosLosCorreos, 1, Posicion);

      //Agrego el correo recogido al grupo
      GrupoDeCorreos:= GrupoDeCorreos + Correo;

      //Inserto el grupo de correos en la BD si se llenó el grupito de 15 o si es el último correo
      if (   (Frac(i / 15) = 0) or (i = CantArrobas)   )
        then
          begin
            //Inserto el grupo de correos en la BD
            DptoCapacitacion.InsertarGrupoDeCorreos('Grupo ' + IntToStr(IndiceGrupo), GrupoDeCorreos);

            //Vacio el grupo de correos
            GrupoDeCorreos:= '';

            //Incremento el indice de grupo de correos
            IndiceGrupo:= IndiceGrupo + 1;

            //Pongo el cursor del mouse como una mano, en el DBMemo
            DBMemoCorreosDeGrupos.Cursor:= crHandPoint;
          end;
    end;

  //Muestro los grupos de Correos
  DptoCapacitacion.MostrarGruposDeCorreos;
end;

procedure TfrmContactoMasivo.DBMemoCorreosDeGruposClick(Sender: TObject);
begin
  //Verifico primero que se haya encontrado al menos un email
  if (DBMemoCorreosDeGrupos.Text <> '')
    then
      begin
       DBMemoCorreosDeGrupos.Cursor:= crHandPoint;
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
            DBMemoCorreosDeGrupos.Cursor:= crDefault;
          end;
end;

procedure TfrmContactoMasivo.DBGridGruposDeCorreosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  //clPaleBlue = TColor($00FFA74F);
  clPaleBlue = TColor($00FFB66C);
begin
  if Column.Field.Dataset.FieldbyName('NombreGrupo').AsString <>''
    then
      if (gdSelected in State)
        then
          begin
            DBGridGruposDeCorreos.Canvas.Brush.Color := clPaleBlue;
          end
            else
              begin
                DBGridGruposDeCorreos.Canvas.Brush.Color := clWhite;
              end;
              
    //Esta línea es nueva
    DBGridGruposDeCorreos.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

end.
