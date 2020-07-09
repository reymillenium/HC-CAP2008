object DataModuleHospitalesDeExcelencia: TDataModuleHospitalesDeExcelencia
  OldCreateOrder = False
  Top = 4
  Height = 540
  Width = 768
  object ADOStoredProcSelecPlanillasDeExcelenciaPorPeriodoYHospital: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecPlanillasDeExcelenciaPorPeriodoYHospital;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vperiodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 16
        Size = 16
        Value = 0
      end>
    Left = 7
    Top = 125
  end
  object DataSourceSelecPlanillasDeExcelenciaPorPeriodoYHospital: TDataSource
    DataSet = ADOStoredProcSelecPlanillasDeExcelenciaPorPeriodoYHospital
    Left = 303
    Top = 125
  end
  object DataSourceSelecHospitalesPorProvincia: TDataSource
    DataSet = ADOStoredProcSelecHospitalesPorProvincia
    Left = 302
    Top = 65535
  end
  object ADOStoredProcSelecHospitalesPorProvincia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHospitalesPorProvincia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vprovincia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end>
    Left = 8
    Top = 65535
  end
  object ADOStoredProcSelecTodosLosHospitales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecTodosLosHospitales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 8
    Top = 41
  end
  object DataSourceSelecTodosLosHospitales: TDataSource
    DataSet = ADOStoredProcSelecTodosLosHospitales
    Left = 302
    Top = 41
  end
  object DataSourceExisteCapacitadorEnElHospital: TDataSource
    DataSet = ADOStoredProcExisteCapacitadorEnElHospital
    Left = 304
    Top = 168
  end
  object ADOStoredProcExisteCapacitadorEnElHospital: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ExisteCapacitadorEnElHospital;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 16
        Size = 16
        Value = '0'
      end>
    Left = 8
    Top = 168
  end
  object ADOStoredProcSelecCapacitadorPorHospitalDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCapacitadorPorHospitalDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 9
    Top = 209
  end
  object DataSourceSelecCapacitadorPorHospitalDeExcelencia: TDataSource
    DataSet = ADOStoredProcSelecCapacitadorPorHospitalDeExcelencia
    Left = 305
    Top = 208
  end
  object ADOStoredProcEliminarHospitalDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarHospitalDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 623
    Top = 568
  end
  object ADOStoredProcEliminarCapacitador: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCapacitador;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 624
    Top = 618
  end
  object ADOStoredProcSelecHospitalDeExcelenciaPorID: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHospitalDeExcelenciaPorID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 11
    Top = 293
  end
  object DataSourceSelecHospitalDeExcelenciaPorID: TDataSource
    DataSet = ADOStoredProcSelecHospitalDeExcelenciaPorID
    Left = 305
    Top = 292
  end
  object ADOStoredProcSelecCapacPorID_HospitalParaAdmin: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCapacitadorPorHospitalDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 9
    Top = 250
  end
  object DataSourceSelecCapacPorID_HospitalParaAdmin: TDataSource
    DataSet = ADOStoredProcSelecCapacPorID_HospitalParaAdmin
    Left = 305
    Top = 249
  end
  object ADOStoredProcSelecTodosLosHospitalesParaAdmin: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecTodosLosHospitales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 8
    Top = 82
  end
  object DataSourceSelecTodosLosHospitalesParaAdmin: TDataSource
    DataSet = ADOStoredProcSelecTodosLosHospitalesParaAdmin
    Left = 302
    Top = 82
  end
  object ADOStoredProcModificarHospitalDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarHospitalDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@vNuevoNombre_Hospital'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@vNuevaDireccion_Hospital'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNueva_Provincia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end>
    Left = 567
    Top = 320
  end
  object ADOStoredProcModificarCapacitador: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarCapacitador;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@vNuevoNombre_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoPrimer_Apellido_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoSegundo_Apellido_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoCorreo_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoTelefono_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoNumeroCarne_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end>
    Left = 567
    Top = 362
  end
  object ADOStoredProcInsertarHospitalDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarHospitalDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNuevoNombre_Hospital'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevaDireccion_Hospital'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNueva_Provincia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end>
    Left = 565
    Top = 172
  end
  object ADOStoredProcInsertarCapacitador: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarCapacitador;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNuevoNombre_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoPrimer_Apellido_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoSegundo_Apellido_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoCorreo_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoTelefono_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoNumeroCarne_Capacitador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end>
    Left = 565
    Top = 214
  end
  object ADOStoredProcInsertarTipoDeCurso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarTipoDeCurso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vEstado'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 565
    Top = 131
  end
  object ADOStoredProcModificarTipoDeCurso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarTipoDeCurso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@vNuevoNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@vNuevoEstado'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end>
    Left = 568
    Top = 276
  end
  object ADOStoredProcEliminarTipoDeCurso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarTipoDeCurso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 623
    Top = 525
  end
  object ADOStoredProcSelecTiposDeCursos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecTiposDeCursos;1'
    Parameters = <>
    Left = 11
    Top = 335
  end
  object DataSourceSelecTiposDeCursos: TDataSource
    DataSet = ADOStoredProcSelecTiposDeCursos
    Left = 305
    Top = 335
  end
  object ADOStoredProcSelecTipoDeCursoPorID_TipoDeCurso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecTipoDeCursoPorID_TipoDeCurso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vid_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 11
    Top = 378
  end
  object DataSourceSelecTipoDeCursoPorID_TipoDeCurso: TDataSource
    DataSet = ADOStoredProcSelecTipoDeCursoPorID_TipoDeCurso
    Left = 305
    Top = 378
  end
  object ADOStoredProcInsertarEncabezamientoPlanillaDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarPlanillaDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@vAnno'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@vPeriodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end>
    Left = 565
    Top = 91
  end
  object ADOStoredProcInsertarCursoProgramado: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarCursoProgramado;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vLugar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vFechaInicio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vCantidadParticipantes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 562
    Top = 9
  end
  object ADOStoredProcInsertarCursoRealizado: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarCursoRealizado;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vLugar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vFechaInicio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vCantidadParticipantes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 564
    Top = 50
  end
  object ADOStoredProcSelecID_PlanillaDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecID_PlanillaDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end
      item
        Name = '@vAnno'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vPeriodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    Left = 13
    Top = 420
  end
  object DataSourceSelecID_PlanillaDeExcelencia: TDataSource
    DataSet = ADOStoredProcSelecID_PlanillaDeExcelencia
    Left = 306
    Top = 421
  end
  object ADOStoredProcExistePlanillaDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ExistePlanillaDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end
      item
        Name = '@vAnno'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vPeriodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    Left = 14
    Top = 464
  end
  object DataSourceExistePlanillaDeExcelencia: TDataSource
    DataSet = ADOStoredProcExistePlanillaDeExcelencia
    Left = 307
    Top = 466
  end
  object ADOStoredProcSelecCursosProgramadosPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCursosProgramadosPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 13
    Top = 507
  end
  object ADOStoredProcSelecCursosRealizadosPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCursosRealizadosPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 13
    Top = 551
  end
  object DataSourceSelecCursosProgramadosPorID_Planilla: TDataSource
    DataSet = ADOStoredProcSelecCursosProgramadosPorID_Planilla
    Left = 307
    Top = 509
  end
  object DataSourceSelecCursosRealizadosPorID_Planilla: TDataSource
    DataSet = ADOStoredProcSelecCursosRealizadosPorID_Planilla
    Left = 307
    Top = 553
  end
  object ADOStoredProcEliminarPlanillaDeExcelencia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarPlanillaDeExcelencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end
      item
        Name = '@vAnno'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vPeriodo'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    Left = 623
    Top = 479
  end
  object ADOStoredProcEliminarCursosProgramadosPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCursosProgramadosPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 623
    Top = 394
  end
  object ADOStoredProcEliminarCursosRealizadosPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCursosRealizadosPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 623
    Top = 436
  end
  object ADOStoredProcCopiarCursosProgramadosPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'CopiarCursosProgramadosPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 838
    Top = 6
  end
  object ADOStoredProcCopiarCursosRealizadosPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'CopiarCursosRealizadosPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 840
    Top = 50
  end
  object ADOStoredProcRellenarCursosProgramadosDesdeTemporales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'RellenarCursosProgramadosDesdeTemporales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 841
    Top = 124
  end
  object ADOStoredProcRellenarCursosRealizadosDesdeTemporales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'RellenarCursosRealizadosDesdeTemporales;1'
    Parameters = <>
    Left = 842
    Top = 167
  end
  object ADOStoredProcEliminarCursoProgramadoTemporalPorID_Curso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCursoProgramadoTemporalPorID_Curso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Curso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 843
    Top = 225
  end
  object ADOStoredProcEliminarCursoRealizadoTemporalPorID_Curso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCursoRealizadoTemporalPorID_Curso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Curso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 845
    Top = 270
  end
  object ADOStoredProcModificarCursoProgramadoTemporal: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarCursoProgramadoTemporal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNuevoNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoLugar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoFechaInicio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoCantidadParticipantes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vid_Curso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 903
    Top = 425
  end
  object ADOStoredProcModificarCursoRealizadoTemporal: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarCursoRealizadoTemporal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNuevoNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoLugar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoFechaInicio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoCantidadParticipantes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vid_Curso'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 904
    Top = 468
  end
  object ADOStoredProcSelecCursosProgramadosTemporalesPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCursosProgramadosTemporalesPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 56
    Top = 593
  end
  object ADOStoredProcSelecCursosRealizadosTemporalesPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCursosRealizadosTemporalesPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 57
    Top = 635
  end
  object DataSourceSelecCursosProgramadosTemporalesPorID_Planilla: TDataSource
    DataSet = ADOStoredProcSelecCursosProgramadosTemporalesPorID_Planilla
    Left = 375
    Top = 594
  end
  object DataSourceSelecCursosRealizadosTemporalesPorID_Planilla: TDataSource
    DataSet = ADOStoredProcSelecCursosRealizadosTemporalesPorID_Planilla
    Left = 375
    Top = 635
  end
  object ADOStoredProcInsertarCursoProgramadoTemporal: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarCursoProgramadoTemporal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vLugar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vFechaInicio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vCantidadParticipantes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 967
    Top = 594
  end
  object ADOStoredProcInsertarCursoRealizadoTemporal: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarCursoRealizadoTemporal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombre_TipoDeCurso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vLugar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vFechaInicio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vCantidadParticipantes'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 967
    Top = 650
  end
  object ADOStoredProcEliminarCursosProgramadosTemporalesPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCursosProgramadosTemporalesPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 848
    Top = 329
  end
  object ADOStoredProcEliminarCursosRealizadosTemporalesPorID_Planilla: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarCursosRealizadosTemporalesPorID_Planilla;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Planilla'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 848
    Top = 377
  end
  object ADOStoredProcModificarID_PlanillaEnCursosProgramadosTemporales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarID_PlanillaEnCursosProgramadosTemporales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vViejoID_Planilla'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@vNuevoID_Planilla'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 904
    Top = 513
  end
  object ADOStoredProcModificarID_PlanillaEnCursosRealizadosTemporales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarID_PlanillaEnCursosRealizadosTemporales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vViejoID_Planilla'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@vNuevoID_Planilla'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 904
    Top = 561
  end
  object ADOStoredProcSelecMinYMaxID: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecMinYMaxID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 470
    Top = 452
  end
  object DataSourceSelecMinYMaxID: TDataSource
    DataSet = ADOStoredProcSelecMinYMaxID
    Left = 470
    Top = 507
  end
  object ADOStoredProcBuscarCorreosDeCapacitadorPorID_Hospital: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCorreosDeCapacitadorPorID_Hospital;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Hospital'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 791
    Top = 573
  end
  object DataSourceBuscarCorreosDeCapacitadorPorID_Hospital: TDataSource
    DataSet = ADOStoredProcBuscarCorreosDeCapacitadorPorID_Hospital
    Left = 791
    Top = 621
  end
  object ADOStoredProcInsertarGrupoDeCorreos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarGrupoDeCorreo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombreGrupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vCorreos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 464
    Top = 551
  end
  object ADOStoredProcEliminarGruposDeCorreos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarGruposDeCorreos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 464
    Top = 560
  end
  object ADOStoredProcSelecGruposDeCorreos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecGruposDeCorreos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 448
    Top = 385
  end
  object DataSourceSelecGruposDeCorreos: TDataSource
    DataSet = ADOStoredProcSelecGruposDeCorreos
    Left = 598
    Top = 384
  end
  object ADOStoredProcSelecTiposDeCursosHabilitados: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecTiposDeCursosHabilitados;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 144
    Top = 344
  end
  object DataSourceSelecTiposDeCursosHabilitados: TDataSource
    DataSet = ADOStoredProcSelecTiposDeCursosHabilitados
    Left = 408
    Top = 344
  end
end
