object DataModuleReportesPlanillasDeExcelencia: TDataModuleReportesPlanillasDeExcelencia
  OldCreateOrder = False
  Left = 187
  Top = 145
  Height = 477
  Width = 672
  object RvProjectRegistroPlanillasDeExcelencia: TRvProject
    Engine = RvSystemRegistroPlanillasDeExcelencia
    Left = 132
    Top = 32
  end
  object RvProjectResumenPlanillasDeExcelencia: TRvProject
    Engine = RvSystemResumenPlanillasDeExcelencia
    ProjectFile = 
      'D:\WORK\HC-CAP\reports\PlanillasDeExcelencia\ProjectResumenPlani' +
      'llasDeExcelencia.rav'
    Left = 484
    Top = 40
  end
  object RvDataSetConnectionRegistroPlanillasDeExcelencia: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 132
    Top = 128
  end
  object RvDataSetConnectionResumenPlanillasDeExcelencia: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DataModulePlanillasDeExcelencia.ADOStoredProcSelecResumenDeExcelencia
    Left = 500
    Top = 137
  end
  object RvSystemRegistroPlanillasDeExcelencia: TRvSystem
    TitleSetup = 'Opciones de Impresi'#243'n'
    TitleStatus = 'Estado de Impresi'#243'n'
    TitlePreview = 'Vista Previa de la Planilla de Excelencia'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 136
    Top = 264
  end
  object RvSystemResumenPlanillasDeExcelencia: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 504
    Top = 264
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'D:\WORK\HC-CAP\reports\Project1Prueba.rav'
    Left = 312
    Top = 160
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DataModulePlanillasDeExcelencia.ADOStoredProcSelecResumenDeExcelencia
    Left = 312
    Top = 224
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 312
    Top = 288
  end
end
