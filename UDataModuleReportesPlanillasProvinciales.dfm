object DataModuleReportesPlanillasProvinciales: TDataModuleReportesPlanillasProvinciales
  OldCreateOrder = False
  Left = 358
  Top = 224
  Height = 287
  Width = 564
  object RvDataSetSelecTodoPorProvincia: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DataModulePlanillasProvinciales.ADOStoredProcSelectTodoPorProvincia
    Left = 72
    Top = 24
  end
  object RvSystemSelecTodoPorProvincia: TRvSystem
    TitleSetup = 'Output Options / Estado de Impresi'#243'n'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview / Opciones de Impresi'#243'n'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 248
    Top = 24
  end
  object RvProjectSelecTodoPorProvincia: TRvProject
    Engine = RvSystemSelecTodoPorProvincia
    ProjectFile = 
      'D:\Cosas de Reinier - no tocar\Tesis Salva\HC-CAP\reports\Projec' +
      'tSelecTodoPorProvincia.rav'
    Left = 432
    Top = 32
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 48
    Top = 104
  end
end
