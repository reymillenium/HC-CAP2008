unit UDataModulePlanillasProvinciales;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModulePlanillasProvinciales = class(TDataModule)
    DataSourceExistePlanillaProvincial: TDataSource;
    ADOStoredProcInsertarPlanillaProvincial: TADOStoredProc;
    ADOStoredProcExistePlanillaProvincial: TADOStoredProc;
    ADOStoredProcSelectTodoPorProvincia: TADOStoredProc;
    DataSourceSelecTodo: TDataSource;
    ADOStoredProcEliminarPlanillaProvincial: TADOStoredProc;
    ADOStoredProcSelecResumen: TADOStoredProc;
    DataSourceSelecResumen: TDataSource;
    ADOStoredProcSelecResumenAmpliadoProvincial: TADOStoredProc;
    DataSourceSelecResumenAmpliadoProvincial: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModulePlanillasProvinciales: TDataModulePlanillasProvinciales;

implementation

{$R *.dfm}

end.
