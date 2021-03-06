unit UPlanillaProvincial;

interface

type
  TPlanillaProvincial = Class(TObject)
  private
    //Planilla Provicial, llaves de la tabla: (2 campos)
	  FAnno: Integer;
    FProvincia: AnsiString;


    //Planilla Provicial, parte 1: (5 campos)
   	FTotalEntOrg: Integer;
   	FEntOrgConPlanAnualCap: Integer;
   	FTotalTrabOrg: Integer;
   	FTotalGradAccCap: Integer;
   	FRelacionGradXTotal: real;//Se calcula, no se introduce el valor

    
    //Planilla Provicial, parte 2: (21 campos)
	  FGradEnEmpInternas: Integer;
	  FGradEnInstExternas: Integer;
   	FDirectivos: Integer;
	  FTecnicos: Integer;
   	FAdministrativos: Integer;
	  FTrabServicios: Integer;
   	FOperarios: Integer;
   	FGradEnCurHab: Integer;
	  FGradEnCurPerfec: Integer;
	  FGradenAdiestLab: Integer;
	  FGradEnEntPTrab: Integer;
	  FGradEnCurPostGrado: Integer;
  	FGradEnDiplomados: Integer;
	  FGradEnMaestrias: Integer;
   	FGradEnDoctorados: Integer;
   	FGradEnCurFormCompMINED: Integer;
   	FGradEnCurFormCompMES: Integer;
	  FGradEnCurIdiomaExt: Integer;
   	FGradEnCurComp: Integer;
	  FGradEnEntrenEnExt: Integer;
   	FGradEnOtrasAcc: Integer;


    //Planilla Provicial, parte 3: (3 campos)
   	FInstTotalUtilEnCapac: Integer;
   	FInstEventUtilEnCapac: Integer;
   	FInstPermUtilEnCapac: Integer;


    //Planilla Provicial, parte 4: (19 campos)
   	FMaestriasXMatric: Integer;
   	FDiplomadosXMatric: Integer;
	  FCurPostgradosXMatric: Integer;
	  FCurIdiomasXMatric: Integer;
   	FCurCompXMatric: Integer;
	  FHabilitacionXMatric: Integer;
   	FPerfecXMatric: Integer;
   	FTallSemConfXMatric: Integer;
   	FTotalXMatric: Integer;
   	FMaestriasXGrad: Integer;
   	FDiplomadosXGrad: Integer;
	  FCurPostgradosXGrad: Integer;
	  FCurIdiomasXGrad: Integer;
   	FCurCompXGrad: Integer;
   	FHabilitacionXGrad: Integer;
	  FPerfecXGrad: Integer;
   	FTallSemConfXGrad: Integer;
   	FTotalXGrad: Integer;
	  FValTrabDesPorEscRamales: AnsiString;


    //Planilla Provicial, parte 5: (53 campos, versi�n 2008)
   	FTotalTrabNoIdoneos: Integer;
   	FNoIdoneosSinCalificFormal: Integer;
	  FNoIdoneosSinEficiencia: Integer;
	  FNoIdoneosSinBConducta: Integer;

	  //FCantQueAlcanIdoneidad: Integer;     //Omitido en la versi�n 2008 (antiguo 5.3)
    
	  //FGrado6XTotalQueDebianAlc: Integer;   //Omitido en la versi�n 2008
	  //FGrado9XTotalQueDebianAlc: Integer;   //Omitido en la versi�n 2008
	  //FGrado12XTotalQueDebianAlc: Integer;  //Omitido en la versi�n 2008
	  //FTecMedioXTotalQueDebianAlc: Integer; //Omitido en la versi�n 2008
   	//FNivSupXTotalQueDebianAlc: Integer;   //Omitido en la versi�n 2008
   	//FGrado6XAlcNivel: Integer;            //Omitido en la versi�n 2008
   	//FGrado9XAlcNivel: Integer;            //Omitido en la versi�n 2008
   	//FGrado12XAlcNivel: Integer;           //Omitido en la versi�n 2008
   	//FTecMedioXAlcNivel: Integer;          //Omitido en la versi�n 2008
   	//FNivSupXAlcNivel: Integer;           //Omitido en la versi�n 2008

   	FGrado6XTotalNoIdoneos: Integer;               //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
   	FGrado9XTotalNoIdoneos: Integer;               //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
   	FGrado12XTotalNoIdoneos: Integer;              //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
   	FTecMedioXTotalNoIdoneos: Integer;             //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
   	FNivSupXTotalNoIdoneos: Integer;               //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
    FTotalNivelXTotalNoIdoneos: Integer;           //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008

   	FGrado6XMatric: Integer;
   	FGrado9XMatric: Integer;
   	FGrado12XMatric: Integer;
   	FTecMedioXMatric: Integer;
   	FNivSupXMatric: Integer;
    FTotalNivelXMatric: Integer;                   //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008

   	FGrado6XNoMatric: Integer;
   	FGrado9XNoMatric: Integer;
   	FGrado12XNoMatric: Integer;
   	FTecMedioXNoMatric: Integer;
   	FNivSupXNoMatric: Integer;
    FTotalNivelXNoMatric: Integer;                 //Parte del 5.3 (tabla) Agregado en la versi�n 2008


    FNoFormalTrabProxEdadJub: Integer;               //5.4.1 Agregado en la versi�n 2008
    FNoFormalTrabProblemasSalud: Integer;            //5.4.2 Agregado en la versi�n 2008
    FNoFormalLicEnfermedadYMaternidad: Integer;      //5.4.3 Agregado en la versi�n 2008
    FNoFormalTrabProblemasFamiliares: Integer;       //5.4.4 Agregado en la versi�n 2008
    FNoFormalNoDisponibMatricXMINED: Integer;        //5.4.5 Agregado en la versi�n 2008
    FNoFormalNoDisponibMatricXMES: Integer;          //5.4.6 Agregado en la versi�n 2008
    FNoFormalLimMatricNivSup: Integer;               //5.4.7 Agregado en la versi�n 2008
    FNoFormalImposibEntidAbrirAulas: Integer;        //5.4.8 Agregado en la versi�n 2008
    FNoFormalTrabNoAcredit: Integer;                 //5.4.9 Agregado en la versi�n 2008
    FNoFormalTrabTurnosRotativos: Integer;           //5.4.10 Agregado en la versi�n 2008
    FNoFormalTrabNieganIncorp: Integer;              //5.4.11 Agregado en la versi�n 2008
    FNoFormalMovilConstruc: Integer;                 //5.4.12 Agregado en la versi�n 2008
    FNoFormalOtrasCausas: Integer;                   //5.4.13 Agregado en la versi�n 2008

    FExplicNoMatric: AnsiString;             //5.5 Agregado en la versi�n 2008

    FCurHabilXTotalNoIdoneos: Integer;        //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    FEntrenamientoXTotalNoIdoneos: Integer;   //Parte del 5.6 (tabla) Agregado en la versi�n 2008
    FTotalNoIdoneosXTotalNoIdoneos: Integer;  //Parte del 5.6 (tabla) Agregado en la versi�n 2008

    FCurHabilXMatric: Integer;                //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    FEntrenamientoXMatric: Integer;           //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    FTotalNoIdoneosXMatric: Integer;          //Parte del 5.6 (tabla) Agregado en la versi�n 2008
    
    FCurHabilXNoMatric: Integer;              //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    FEntrenamientoXNoMatric: Integer;         //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    FTotalNoIdoneosXNoMatric: Integer;        //Parte del 5.6 (tabla) Agregado en la versi�n 2008

    FNoEficTrabProxEdadJub: Integer;               //5.7.1 Agregado en la versi�n 2008
    FNoEficTrabProblemasSalud: Integer;            //5.7.2 Agregado en la versi�n 2008
    FNoEficLicEnfermedadYMaternidad: Integer;      //5.7.3 Agregado en la versi�n 2008
    FNoEficTrabProblemasFamiliares: Integer;       //5.7.4 Agregado en la versi�n 2008
    FNoEficTrabTurnosRotativos: Integer;           //5.7.5 Agregado en la versi�n 2008
    FNoEficTrabNieganIncorp: Integer;              //5.7.6 Agregado en la versi�n 2008
    FNoEficMovilConstruc: Integer;                 //5.7.7 Agregado en la versi�n 2008
    FNoEficOtrasCausas: Integer;                   //5.7.8 Agregado en la versi�n 2008

    FCasilla1XPendiente: Integer;                                 //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    FCasilla2XPendiente: Integer;                                 //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    FTotalXPendiente: Integer;                             //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    FCasilla1XCausas: AnsiString;                                //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    FCasilla2XCausas: AnsiString;                                //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    FTotalXCausas: AnsiString;                            //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    

    //Planilla Provicial, parte 6: (1 campo)
	  FValoracionCualitativaDelProcesoCapac: AnsiString;
  
  public
    Constructor Create;
    Destructor Destroy;
    //procedure SetRelacionGradXTotal

    //propertys de acceso a los campos de la Planilla Provicial, llaves de la tabla: (2 campos)
	  property Anno: Integer read FAnno write FAnno;
    property Provincia: AnsiString read FProvincia write FProvincia;


    //propertys de acceso a los campos de la Planilla Provicial, parte 1: (5 campos)
   	property TotalEntOrg: Integer read FTotalEntOrg write FTotalEntOrg;
   	property EntOrgConPlanAnualCap: Integer read FEntOrgConPlanAnualCap write FEntOrgConPlanAnualCap;
   	property TotalTrabOrg: Integer read FTotalTrabOrg write FTotalTrabOrg;
   	property TotalGradAccCap: Integer read FTotalGradAccCap write FTotalGradAccCap;
   	property RelacionGradXTotal: real read FRelacionGradXTotal write FRelacionGradXTotal;//Se calcula, no se introduce el valor

    
    //propertys de acceso a los campos de la Planilla Provicial, parte 2: (21 campos)
	  property GradEnEmpInternas: Integer read FGradEnEmpInternas write FGradEnEmpInternas;
	  property GradEnInstExternas: Integer read FGradEnInstExternas write FGradEnInstExternas;
   	property Directivos: Integer read FDirectivos write FDirectivos;
	  property Tecnicos: Integer read FTecnicos write FTecnicos;
   	property Administrativos: Integer read FAdministrativos write FAdministrativos;
	  property TrabServicios: Integer read FTrabServicios write FTrabServicios;
   	property Operarios: Integer read FOperarios write FOperarios;
   	property GradEnCurHab: Integer read FGradEnCurHab write FGradEnCurHab;
	  property GradEnCurPerfec: Integer read FGradEnCurPerfec write FGradEnCurPerfec;
	  property GradEnAdiestLab: Integer read FGradenAdiestLab write FGradenAdiestLab;
	  property GradEnEntPTrab: Integer read FGradEnEntPTrab write FGradEnEntPTrab;
	  property GradEnCurPostGrado: Integer read FGradEnCurPostGrado write FGradEnCurPostGrado;
  	property GradEnDiplomados: Integer read FGradEnDiplomados write FGradEnDiplomados;
	  property GradEnMaestrias: Integer read FGradEnMaestrias write FGradEnMaestrias;
   	property GradEnDoctorados: Integer read FGradEnDoctorados write FGradEnDoctorados;
   	property GradEnCurFormCompMINED: Integer read FGradEnCurFormCompMINED write FGradEnCurFormCompMINED;
   	property GradEnCurFormCompMES: Integer read FGradEnCurFormCompMES write FGradEnCurFormCompMES;
	  property GradEnCurIdiomaExt: Integer read FGradEnCurIdiomaExt write FGradEnCurIdiomaExt;
   	property GradEnCurComp: Integer read FGradEnCurComp write FGradEnCurComp;
	  property GradEnEntrenEnExt: Integer read FGradEnEntrenEnExt write FGradEnEntrenEnExt;
   	property GradEnOtrasAcc: Integer read FGradEnOtrasAcc write FGradEnOtrasAcc;


    //propertys de acceso a los campos de la Planilla Provicial, parte 3: (3 campos)
   	property InstTotalUtilEnCapac: Integer read FInstTotalUtilEnCapac write FInstTotalUtilEnCapac;
   	property InstEventUtilEnCapac: Integer read FInstEventUtilEnCapac write FInstEventUtilEnCapac;
   	property InstPermUtilEnCapac: Integer read FInstPermUtilEnCapac write FInstPermUtilEnCapac;


    //propertys de acceso a los campos de la Planilla Provicial, parte 4: (19 campos)
   	property MaestriasXMatric: Integer read FMaestriasXMatric write FMaestriasXMatric;
   	property DiplomadosXMatric: Integer read FDiplomadosXMatric write FDiplomadosXMatric;
	  property CurPostgradosXMatric: Integer read FCurPostgradosXMatric write FCurPostgradosXMatric;
	  property CurIdiomasXMatric: Integer read FCurIdiomasXMatric write FCurIdiomasXMatric;
   	property CurCompXMatric: Integer read FCurCompXMatric write FCurCompXMatric;
	  property HabilitacionXMatric: Integer read FHabilitacionXMatric write FHabilitacionXMatric;
   	property PerfecXMatric: Integer read FPerfecXMatric write FPerfecXMatric;
   	property TallSemConfXMatric: Integer read FTallSemConfXMatric write FTallSemConfXMatric;
   	property TotalXMatric: Integer read FTotalXMatric write FTotalXMatric;
   	property MaestriasXGrad: Integer read FMaestriasXGrad write FMaestriasXGrad;
   	property DiplomadosXGrad: Integer read FDiplomadosXGrad write FDiplomadosXGrad;
	  property CurPostgradosXGrad: Integer read FCurPostgradosXGrad write FCurPostgradosXGrad;
	  property CurIdiomasXGrad: Integer read FCurIdiomasXGrad write FCurIdiomasXGrad;
   	property CurCompXGrad: Integer read FCurCompXGrad write FCurCompXGrad;
   	property HabilitacionXGrad: Integer read FHabilitacionXGrad write FHabilitacionXGrad;
	  property PerfecXGrad: Integer read FPerfecXGrad write FPerfecXGrad;
   	property TallSemConfXGrad: Integer read FTallSemConfXGrad write FTallSemConfXGrad;
   	property TotalXGrad: Integer read FTotalXGrad write FTotalXGrad;
	  property ValTrabDesPorEscRamales: AnsiString read FValTrabDesPorEscRamales write FValTrabDesPorEscRamales;


    //propertys de acceso a los campos de la Planilla Provicial, parte 5: (53 campos, versi�n 2008)
    //secci�n 5_1
   	property TotalTrabNoIdoneos: Integer read FTotalTrabNoIdoneos write FTotalTrabNoIdoneos;

    //secci�n 5_2
   	property NoIdoneosSinCalificFormal: Integer read FNoIdoneosSinCalificFormal write FNoIdoneosSinCalificFormal;
	  property NoIdoneosSinEficiencia: Integer read FNoIdoneosSinEficiencia write FNoIdoneosSinEficiencia;
	  property NoIdoneosSinBConducta: Integer read FNoIdoneosSinBConducta write FNoIdoneosSinBConducta;

    //secci�n 5_3
    property Grado6XTotalNoIdoneos: Integer read FGrado6XTotalNoIdoneos write FGrado6XTotalNoIdoneos;                  //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
    property Grado9XTotalNoIdoneos: Integer read FGrado9XTotalNoIdoneos write FGrado9XTotalNoIdoneos;                 //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
    property Grado12XTotalNoIdoneos: Integer read FGrado12XTotalNoIdoneos write FGrado12XTotalNoIdoneos;              //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
    property TecMedioXTotalNoIdoneos: Integer read FTecMedioXTotalNoIdoneos write FTecMedioXTotalNoIdoneos;           //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
    property NivSupXTotalNoIdoneos: Integer read FNivSupXTotalNoIdoneos write FNivSupXTotalNoIdoneos;                 //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008
    property TotalNivelXTotalNoIdoneos: Integer read FTotalNivelXTotalNoIdoneos write FTotalNivelXTotalNoIdoneos;     //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008

    property Grado6XMatric: Integer read FGrado6XMatric write FGrado6XMatric;
    property Grado9XMatric: Integer read FGrado9XMatric write FGrado9XMatric;
    property Grado12XMatric: Integer read FGrado12XMatric write FGrado12XMatric;
    property TecMedioXMatric: Integer read FTecMedioXMatric write FTecMedioXMatric;
    property NivSupXMatric: Integer read FNivSupXMatric write FNivSupXMatric;
    property TotalNivelXMatric: Integer read FTotalNivelXMatric write FTotalNivelXMatric; //Parte del nuevo 5.3 (tabla) Agregado en la versi�n 2008

    property Grado6XNoMatric: Integer read FGrado6XNoMatric write FGrado6XNoMatric;
    property Grado9XNoMatric: Integer read FGrado9XNoMatric write FGrado9XNoMatric;
    property Grado12XNoMatric: Integer read FGrado12XNoMatric write FGrado12XNoMatric;
    property TecMedioXNoMatric: Integer read FTecMedioXNoMatric write FTecMedioXNoMatric;
    property NivSupXNoMatric: Integer read FNivSupXNoMatric write FNivSupXNoMatric;
    property TotalNivelXNoMatric: Integer read FTotalNivelXNoMatric write FTotalNivelXNoMatric;   //Parte del 5.3 (tabla) Agregado en la versi�n 2008

    //secci�n 5_4
    property NoFormalTrabProxEdadJub: Integer read FNoFormalTrabProxEdadJub write FNoFormalTrabProxEdadJub;                                //5.4.1 Agregado en la versi�n 2008
    property NoFormalTrabProblemasSalud: Integer read FNoFormalTrabProblemasSalud write FNoFormalTrabProblemasSalud;                       //5.4.2 Agregado en la versi�n 2008
    property NoFormalLicEnfermedadYMaternidad: Integer read FNoFormalLicEnfermedadYMaternidad write FNoFormalLicEnfermedadYMaternidad;     //5.4.3 Agregado en la versi�n 2008
    property NoFormalTrabProblemasFamiliares: Integer read FNoFormalTrabProblemasFamiliares write FNoFormalTrabProblemasFamiliares;        //5.4.4 Agregado en la versi�n 2008
    property NoFormalNoDisponibMatricXMINED: Integer read FNoFormalNoDisponibMatricXMINED write FNoFormalNoDisponibMatricXMINED;           //5.4.5 Agregado en la versi�n 2008
    property NoFormalNoDisponibMatricXMES: Integer read FNoFormalNoDisponibMatricXMES write FNoFormalNoDisponibMatricXMES;                 //5.4.6 Agregado en la versi�n 2008
    property NoFormalLimMatricNivSup: Integer read FNoFormalLimMatricNivSup write FNoFormalLimMatricNivSup;                                //5.4.7 Agregado en la versi�n 2008
    property NoFormalImposibEntidAbrirAulas: Integer read FNoFormalImposibEntidAbrirAulas write FNoFormalImposibEntidAbrirAulas;           //5.4.8 Agregado en la versi�n 2008
    property NoFormalTrabNoAcredit: Integer read FNoFormalTrabNoAcredit write FNoFormalTrabNoAcredit;                                      //5.4.9 Agregado en la versi�n 2008
    property NoFormalTrabTurnosRotativos: Integer read FNoFormalTrabTurnosRotativos write FNoFormalTrabTurnosRotativos;                    //5.4.10 Agregado en la versi�n 2008
    property NoFormalTrabNieganIncorp: Integer read FNoFormalTrabNieganIncorp write FNoFormalTrabNieganIncorp;                             //5.4.11 Agregado en la versi�n 2008
    property NoFormalMovilConstruc: Integer read FNoFormalMovilConstruc write FNoFormalMovilConstruc;                                      //5.4.12 Agregado en la versi�n 2008
    property NoFormalOtrasCausas: Integer read FNoFormalOtrasCausas write FNoFormalOtrasCausas;                                            //5.4.13 Agregado en la versi�n 2008

    //secci�n 5_5
    property ExplicNoMatric: AnsiString read FExplicNoMatric write FExplicNoMatric;    //5.5 Agregado en la versi�n 2008

    //secci�n 5_6
    property CurHabilXTotalNoIdoneos: Integer read FCurHabilXTotalNoIdoneos write FCurHabilXTotalNoIdoneos;                    //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    property EntrenamientoXTotalNoIdoneos: Integer read FEntrenamientoXTotalNoIdoneos write FEntrenamientoXTotalNoIdoneos;     //Parte del 5.6 (tabla) Agregado en la versi�n 2008
    property TotalNoIdoneosXTotalNoIdoneos: Integer read FTotalNoIdoneosXTotalNoIdoneos write FTotalNoIdoneosXTotalNoIdoneos;  //Parte del 5.6 (tabla) Agregado en la versi�n 2008

    property CurHabilXMatric: Integer read FCurHabilXMatric write FCurHabilXMatric;                         //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    property EntrenamientoXMatric: Integer read FEntrenamientoXMatric write FEntrenamientoXMatric;          //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    property TotalNoIdoneosXMatric: Integer read FTotalNoIdoneosXMatric write FTotalNoIdoneosXMatric;       //Parte del 5.6 (tabla) Agregado en la versi�n 2008

    property CurHabilXNoMatric: Integer read FCurHabilXNoMatric write FCurHabilXNoMatric;                   //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    property EntrenamientoXNoMatric: Integer read FEntrenamientoXNoMatric write FEntrenamientoXNoMatric;    //Parte del 5.6 (tabla) Modificado en la versi�n 2008
    property TotalNoIdoneosXNoMatric: Integer read FTotalNoIdoneosXNoMatric write FTotalNoIdoneosXNoMatric; //Parte del 5.6 (tabla) Agregado en la versi�n 2008

    //secci�n 5_7
    property NoEficTrabProxEdadJub: Integer read FNoEficTrabProxEdadJub write FNoEficTrabProxEdadJub;                             //5.7.1 Agregado en la versi�n 2008
    property NoEficTrabProblemasSalud: Integer read FNoEficTrabProblemasSalud write FNoEficTrabProblemasSalud;                    //5.7.2 Agregado en la versi�n 2008
    property NoEficLicEnfermedadYMaternidad: Integer read FNoEficLicEnfermedadYMaternidad write FNoEficLicEnfermedadYMaternidad;  //5.7.3 Agregado en la versi�n 2008
    property NoEficTrabProblemasFamiliares: Integer read FNoEficTrabProblemasFamiliares write FNoEficTrabProblemasFamiliares;     //5.7.4 Agregado en la versi�n 2008
    property NoEficTrabTurnosRotativos: Integer read FNoEficTrabTurnosRotativos write FNoEficTrabTurnosRotativos;                 //5.7.5 Agregado en la versi�n 2008
    property NoEficTrabNieganIncorp: Integer read FNoEficTrabNieganIncorp write FNoEficTrabNieganIncorp;                          //5.7.6 Agregado en la versi�n 2008
    property NoEficMovilConstruc: Integer read FNoEficMovilConstruc write FNoEficMovilConstruc;                                   //5.7.7 Agregado en la versi�n 2008
    property NoEficOtrasCausas: Integer read FNoEficOtrasCausas write FNoEficOtrasCausas;                                         //5.7.8 Agregado en la versi�n 2008

    //secci�n 5_8
    property Casilla1XPendiente: Integer read FCasilla1XPendiente write FCasilla1XPendiente;             //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    property Casilla2XPendiente: Integer read FCasilla2XPendiente write FCasilla2XPendiente;             //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    property TotalXPendiente: Integer read FTotalXPendiente write FTotalXPendiente; //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    property Casilla1XCausas: AnsiString read FCasilla1XCausas write FCasilla1XCausas;             //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    property Casilla2XCausas: AnsiString read FCasilla2XCausas write FCasilla2XCausas;             //Parte del 5.8 (tabla) Agregado en la versi�n 2008
    property TotalXCausas: AnsiString read FTotalXCausas write FTotalXCausas; //Parte del 5.8 (tabla) Agregado en la versi�n 2008


    //propertys de acceso a los campos de la Planilla Provicial, parte 6: (1 campo)
	  property ValoracionCualitativaDelProcesoCapac: AnsiString read FValoracionCualitativaDelProcesoCapac write FValoracionCualitativaDelProcesoCapac;
end;

implementation

{ TPlanilla }

constructor TPlanillaProvincial.Create;
begin
  inherited Create;
end;

destructor TPlanillaProvincial.Destroy;
begin
  inherited Destroy;
end;

end.










