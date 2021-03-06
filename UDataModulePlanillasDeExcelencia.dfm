object DataModulePlanillasDeExcelencia: TDataModulePlanillasDeExcelencia
  OldCreateOrder = False
  Left = 48
  Top = 198
  Height = 504
  Width = 976
  object DataSourceSelecResumenDeExcelencia: TDataSource
    DataSet = ADOStoredProcSelecResumenDeExcelencia
    Left = 752
    Top = 8
  end
  object ADOStoredProcSelecResumenDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecResumenDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 144
    Top = 48
  end
  object ADOStoredProcRellenarBalancesDeExcelenciaParte1: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'RellenarBalancesDeExcelenciaParte1;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vanno'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vperiodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    Left = 144
    Top = 128
  end
  object ADOStoredProcRellenarBalancesDeExcelenciaParte2: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'RellenarBalancesDeExcelenciaParte2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vanno'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vperiodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    Left = 144
    Top = 184
  end
  object ADOStoredProcEliminarResumenDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarResumenDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 144
    Top = 256
  end
  object ADOStoredProcModificarNulosEnBalancesProgramadosDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarNulosEnBalancesProgramadosDeExcelencia;1'
    Parameters = <>
    Left = 752
    Top = 64
  end
  object ADOStoredProcModificarNulosEnBalancesRealizadosDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarNulosEnBalancesRealizadosDeExcelencia;1'
    Parameters = <>
    Left = 752
    Top = 120
  end
end
