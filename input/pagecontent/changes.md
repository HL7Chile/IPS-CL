### 0.2.0
- Versión en construción de la guía IPS-CL basado en la guía ClCore 1.9.1 e IPS 2.0.0

- Se modificó este archivo, eliminando los perfiles que hacian referencia al estándar, junto con sus ejemplos.

- Se agregó en la página "EstructuraIPS.md" lo siguiente:
    - La descripción de cada sección del composition de IPS.
    - El listado de perfiles que componen IPS además de los perfiles que referencian directamente al estándar FHIR.

- Perfil [Condition](StructureDefinition-Condition-cl-ips.html)
    - Se agrega el perfil Condición
    - Se basa en el recurso DiagnosticoCl proveniente de la CoreCl.
    - El elemento verificationStaatus se establece como MS
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - El elemento onset[x] se modificó según la CoreCl, quedando solo onsetDateTime y onsetPeriod.
    - Se habilita el ejemplo:
      * [Condición - Ejemplo](Condition-Condition-CL-Ejemplo.html)

- Perfil [Parámetros de Entrada - Summary](StructureDefinition-Parametros-entradas-ips-cl.html)
    - Se agrega el perfil Parámetros de entrada.
    - Se basa en el recurso Parameters del estándar.
    - Se definen los elementos a utilizar como entrada al momento de solicitar un resumen de paciente por medio de la operación Summary.
    - Se establece como parámetro requerido el identifier, donde su valor debe ser el identificador del paciente.
    - Se establece como parámetro requerido profile, donde su valor debe ser el perfil Composition-Cl-IPS.
    - Se habilita el ejemplo:
      * [Parametros - Ejemplo](Parameters-Parametros-CL-Ejemplo.html)

- Perfil [Procedimientos](StructureDefinition-Procedimientos-cl-ips.html)
    - Se agrega el perfil Procedimientos.
    - Se basa en el recurso Procedure del estándar.
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips.
    - Se modifican las referencias del elemento asserter a PacienteCl, RelatedPerson, PrestadorCL y CoreRolClinicoCl.
    - Se modifican las referencias del elemento performer.actor a Paciente-cl-ips, RelatedPerson, DispositivoObservadorClIps,  Prestador-cl-ips, RolPrestador-cl-ips y Organizacion-cl-ips.
    - Se modifica la referencia del elemento performer.onBehalfOf a Organizacion-cl-ips.
    - Se habilita el ejemplo:
      * [Procedimiento - Ejemplo](Procedure-ProcedimientoCLEjemplo.html)

- Perfil [Medication Statement](StructureDefinition-RegMedicamentos-cl-ips.html)
    - Se agrega el perfil Medication Statement.
    - Se basa en el recurso MedicationStatement del estándar.
    - Se modifica la referencia del elemento medication a Medicamento-cl-ips.
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips.
    - El resto de los elementos se heredan.
    - Se habilita el ejemplo:
      * [Medication Statement - Ejemplo](MedicationStatement-MedicationStatement-CL-Ejemplo.html)

- ~ Los perfiles a continuación contienen lo siguiente:
    - Se modifica la versión del perfil a 0.1.0
    - Se modifica la versión de la extension.valueInteger = 2 -> 1. Indica el nivel de madurez del perfil dentro del estándar.
    - Se modifica la canonica de la extension.valueInteger y extension.valueCode a la canonica de HL7 IPS Chile para la guía de implementación https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips
    - Se modifica todo dato de contacto al estándar chileno.

- Perfil [Alergias e Intolerancias](StructureDefinition-AllergiaInt-cl-ips.html)
    - Se agrega el perfil de Alergias e Intolerancias
    - Se basa en el recurso AlergiaCL de la CoreCl
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se mantienen los valueSet provenientes de la guía IPS internacional.
    - Se habilita el ejemplo: 
      * [Alergias - Ejemplo](AllergyIntolerance-Alergia-CL-Ejemplo.html)

- Perfil [Bundle](StructureDefinition-Bundle-documento-ips-cl.html)
    - Se agrega el perfil Bundle de Resumen Clínico
    - Se basa en el recurso Bundle proveniente del estándar.
    - El elemento type se establece como MS
    - Se agregó recientemente el entry[clinicalimpression], el cual referencia al perfil funcional status que se encuentra dentro de la guía y que se basa en el recurso ClinicalImpression del estándar.
    - Se agregó además el entry[deviceperformerobserver], el cual referencia al perfil Dispositivo - Ejecutante, Observador que se encuentra dentro de la guía y que se basa en el recurso Device del estándar.
    - Se habilita el ejemplo:
      * [Bundle - Ejemplo](Bundle-Bundle-CL-Ejemplo.html)
        * Se modificó la instancia Condition.

- Perfil [Diagnostic Report](StructureDefinition-DiagnosticReport-cl-ips.html)
    - Se agrega el perfil Reporte Diagnóstico
    - Se basa en el recurso DiagnosticReport del estándar.
    - Status se establece como #draft
    - El elemento status se establece como MS y se indica el código #final como requerido.
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips o a Group.
    - Se agregan elementos a la extensión data-absent-reason.
    - Se modifican las referencias Practitioner, PractitionerRole, Organization y CareTeam de los elementos Performer y resultsInterpreter a PrestadorClIps, RolPrestadorClIps, OrganizacionClIps y CareTeam.
    - Los elementos resultsInterpreter y specimen se establecen como MS.
    - Se modifica la referencia del elemento Specimen de Specimen(IPS) a Speciment-cl-ips.
    - Se modifica la referencia del elemento result de Observation a ObservacionCL.
    - Se modifica la referencia del slice result[observacion-resultados] a ObservationResultadoLaboratorioPatologiaClIps y ObservationResultadoRadiologyClIps.
    - Se modifica la referencia del elemento imagingStudy de ImagingStudy a ImagingStudyClIps.
    - Se habilitan los ejemplos:
      * [Reporte Alergias (Diagnóstico) - Ejemplo](DiagnosticReport-DiagnosticReportAlergia-CL-Ejemplo.html)
      * [Reporte Laboratorio (Diagnóstico) - Ejemplo]( DiagnosticReport-DiagnosticReportLab-CL-Ejemplo.html)

- Perfil [Documento - Composition](StructureDefinition-Composition-cl-ips.html)
    - Se agrega el perfil Documento (COmposition)
    - Se basa en el recurso Composition del estándar
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips.  
    - Se modifica la referencia del elemento relatesTo.targetReference de Composition(IPS) a DocumentoClIps.
    - La section.code se establece como MS y como obligatoria.
    - La section.emptyReason se establece como 0..0, eliminandola.
    - Los slices for entry del composition se establecen como MS y obligatorias, a excepción de las siguientes:
      * section[sectionSignosVitales].entry
      * section[sectionStatusFuncional].entry
      * section[sectionPlanCuidado].entry
      * section[sectionHistoriaSocial].entry
      * section[sectionEmbarazoHx].entry
      * section[sectionFlagAlerts].entry
      * section[sectionDirectivasAvanzadas].entry
    - La section[sectionMedicamentos].entry[listMedicamentos] referencia a RegMedicamentosClIps, mientras que la section[sectionMedicamentos].entry[prescripciones] referencia a PrescripcionClIps.
    - La section[sectionAlergias].entry[alergias] referencia a AlergiaIntClIps.
    - La section[sectionProblemas].entry[problema] referencia a ConditionClIps.
    - La section[sectionProcedimientos].entry[procedimiento] referencia a ProcedimientosClIps.
    - La section[sectionImmunizaciones].entry[immunizacion] referencia a InmunizacionClIps.
    - La section[sectionDispMedicos].entry[deviceStatement] referencia a DeclaracionUsoDispositivoClIps.
    - La section[sectionResultados].entry[resultados-obs-lab-pato] referencia a ObservationResultadoLaboratorioPatologiaClIps.
    - La section[sectionResultados].entry[resultados-obs-radio] referencia a ObservationResultadoRadiologyClIps.
    - La section[sectionResultados].entry[resultado-reporte] referencia a DiagnosticReportClIps.
    - La section[sectionSignosVitales].entry[vitalSign] referencia a VitalSignsClIps.
    - La section[sectionHistoricoHx].entry[pastProblem] referencia a ConditionClIps.
    - La section[sectionStatusFuncional].entry[discapacidad] referencia a ConditionClIps.
    - La section[sectionStatusFuncional].entry[evalFuncional] referencia a FuncionalStatusClinicalImpressionClIps.
    - La section[sectionPlanCuidado].entry[carePlan] referencia a CarePlanClIps.
    - La section[sectionHistoriaSocial].entry[fumador] referencia a ObservationUsoTabacoClIps.
    - La section[sectionHistoriaSocial].entry[alcohol] referencia a ObservationUsoAlcoholClIps.
    - La section[sectionEmbarazoHx].entry[statusEmbarazo] referencia a ObservationEstadoEmbarazoClIps.
    - La section[sectionEmbarazoHx].entry[resultadoEmbarazo] referencia a ObservationResultadoEmbarazoClIps.
    - La section[sectionFlagAlerts].entry[alertsFlag] referencia a FlagAlertClIps.
    - La section[sectionDirectivasAvanzadas].entry[advanceDirectivesConsent] referencia a ConsentClIps.
    - Se habilita el ejemplo:
      * [Composition - Ejemplo](Composition-Composition-CL-Ejemplo.html)

- Perfil [DeclaraciónUsoDispositivo](StructureDefinition-Declaracion-uso-dispositivo-cl-ips.html)
    - Se agrega el perfil Declaración de uso del dispositivo
    - Se basa en el recurso DeviceUseStatement del estándar
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se modifica la referencia Device-uv-ips a Dispositivo-cl-ips
    - Se habilita el ejemplo:
      * [Declaración Uso Dispositivo - Ejemplo](DeviceUseStatement-DeclaracionUsoDispositivo-CL-Ejemplo.html)

- Perfil [DispositivoEjecutanteObservador](StructureDefinition-Dispositivo-observador-cl-ips.html)
    - Se agrega el perfil Dispositivo Ejecutante;Observador
    - Se basa en el recurso Device del estándar
    - Status se establece como #draft
    - Se habilita el ejemplo:
      * [Dispositivo - Ejecutante, Observador Ejemplo](Device-DispositivoEjecutanteObservador-CL-Ejemplo.html)

- Perfil [Dispositivo](StructureDefinition-Dispositivo-cl-ips.html)
    - Se agrega el perfil Dispositivo 
    - Se basa en el recurso Device del estándar
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se habilita el ejemplo:
      * [Dispositivo Médico - Ejemplo](Device-Dispositivo-CL-Ejemplo.html)

- Perfil [FlagAlert](StructureDefinition-Flag-alerta-cl-ips.html)
    - Se agrega el perfil FlagAlert 
    - Se basa en el recurso Flag del estándar
    - Status se establece como #draft
    - Se habilita el ejemplo:
      * [Alerta Paciente- Ejemplo](Flag-FlagAlertEjemplo.html)

- Perfil [ObservationConsumoAlcohol](StructureDefinition-Observation-uso-de-alcohol-cl-ips.html)
    - Se agrega el perfil Observación - Consumo de Alcohol
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component; se omite por la CoreCl.
    - Se habilita el ejemplo: 
      * [Observación: Consumo de Alcohol - Ejemplo](Observation-ObservacionConsumoAlcoholEjemplo.html)

- Perfil [ObservationConsumoTabaco](StructureDefinition-Observation-uso-de-tabaco-cl-ips.html)
    - Se agrega el perfil Observación - Consumo de Tabaco
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component; se omite por la CoreCl.
    - Se habilita el ejemplo:
      * [Observación: Consumo de Tabaco - Ejemplo](Observation-ObservacionConsumoTabacoEjemplo.html)

- Perfil [ObservationEstadoEmbarazo](StructureDefinition-Observation-estado-del-embarazo-cl-ips.html)
    - Se agrega el perfil Observación - Estado del Embarazo
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl. 
    - Se modifica la referencia "Observation-pregnancy-edd-uv-ips" a ["Observation-embarazo-fecha-estimada-de-parto-cl-ips"](StructureDefinition-Observation-embarazo-fecha-estimada-de-parto-cl-ips.html)
    - Se habilita el ejemplo:
      * [Observación: Estado del embarazo - Ejemplo](Observation-ObservacionEstadoEmbarazoEjemplo.html)

- Perfil [ObservationFechaEstimadaParto](StructureDefinition-Observation-embarazo-fecha-estimada-de-parto-cl-ips.html)
    - Se agrega el perfil Observación - Fecha Estimada de Parto
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl.
    - Se habilita el ejemplo:
      * [Observación: Fecha Estimada de Parto - Ejemplo](Observation-ObservacionEstadoEmbarazoEjemplo.html)

- Perfil [ObservationResultadoEmbarazo](StructureDefinition-Observation-resultado-del-embarazo-cl-ips.html)
    - Se agrega el perfil Observación - Resultado de Embarazo
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl.
    - Se habilita el ejemplo:
      * [Observación: Resultado de Embarazo - Ejemplo](Observation-ObservacionResultadoEmbarazoEjemplo.html)

- Perfil [Imaging Study](StructureDefinition-ImagingStudy-cl-ips.html)
    - Se agrega el perfil Estudio de Imagenología
    - Se basa en el recurso ImagingStudy del estándar
    - Status se establece como draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se habilita el ejemplo:
      * [Estudio de imagenología - Ejemplo](ImagingStudy-EstudioImagenologiaCLEjemplo.html)

- Perfil [Inmunización](StructureDefinition-Inmunizacion-cl-ips.html)
    - Se agrega el perfil Inmunización
    - Se basa en el recurso InmunizationCL de la CoreCl.
    - Status se establece como draft.
    - Se agrega un valueSet adicional: Tipo de vacunas RNI, esto según la realidad nacional
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips.
    - El resto se hereda de la CoreCl.
    - Se habilita el ejemplo:
      * [Inmunización - Ejemplo](Immunization-Inmunizacion-CL-Ejemplo.html)

- Perfil [Medicamento](StructureDefinition-Medicamento-cl-ips.html)
    - Se agrega el perfil Medicamento
    - Se basa en el recurso CoreMedicamentoCl de la CoreCl.
    - Status se establece como draft.
    - Se agrega un valueSet adicional: Códigos de medicamentos del MINSAL para uso nacional.
    - El elemento Item[x] se transformó en un Slice (proviene de la CoreCl), el cual hace referencia al valueSet MedicationsUvIps.
    - Se eliminó el elemento ingredient.itemCodeableConcept
    - El resto se hereda de la CoreCl.
    - Se habilita el ejemplo:
      * [Medicamento - Ejemplo](Medication-MedicamentoCLEjemplo.html)

- Perfil [Observacion Resultado - Lab Patología](StructureDefinition-Observation-resultado-laboratorio-patologico-cl-ips.html)
    - Se agrega el perfil Observación Resultado: Laboratorio/Patología.
    - Se basa en el recurso ObservacionCL de la CoreCl.
    - Status se establece como draft.
    - El elemento status se establece como MS.
    - El elemento category se establece como MS.
    - Se modifica la referencia del elemento subject a Paciente-cl-ips, Group, DispositivoClIps y CoreLocalizacionCl.
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica la referencia del elemento performer aPrestador-cl-ips, RolPrestador-cl-ips, Organizacion-cl-ips, CareTeam, Paciente-cl-ips y RelatedPerson.
    - Se modifica la referencia del elemento specimen a Speciment-cl-ips.
    - Se modifica la referencia del elemento hasMember a Observation-resultado-laboratorio-patologico-cl-ips.
    - Se habilita el ejemplo:
      * [Laboratorio Patología - Ejemplo](Observation-LabPatologia-CL-Ejemplo.html)

- Perfil [Observación Resultado - Imagenológico](StructureDefinition-Observation-resultado-radiology-cl-ips.html)
    - Se agrega el perfil Observación Resultado: Imagenológico.
    - Se basa en el recurso ObservacionCL de la CoreCl.
    - Status se establece como draft.
    - El elemento status se establece como MS.
    - Se modifica el discriminator.type y el discriminator.path del slice category por: "#value" y "coding.code" respectivamente.
    - Se modifica la referencia del elemento subject a Paciente-cl-ips.
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica la referencia del elemento performer a Prestador-cl-ips, RolPrestador-cl-ips, Organizacion-cl-ips,  CareTeam, Paciente-cl-ips y RelatedPerson.
    - Se modifica la referencia del elemento specimen a Speciment-cl-ips.
    - Se modifica la referencia del elemento device a DispositivoClIps y DeviceMetric.
    - Se modifica la referencia del elemento hasMember a Observation-resultado-radiology-cl-ips.
    - Se habilita el ejemplo:
      * [Resultado de Radiología - Ejemplo](Observation-ResultadoRadiologyCLEjemplo.html)

- Perfil [Organización](StructureDefinition-Organizacion-cl-ips.html)
    - Se agrega el perfil Organización
    - Se basa en el recurso OrganizacionCL de la CoreCl.
    - Se heredan los elementos de la CoreCl.
    - Se habilitan los ejemplos:
      * [Organización - Ejemplo](Organization-Organization-CL-Ejemplo.html)
      * [Organización Hospital - Ejemplo](Organization-OrganizationHospital-CL-Ejemplo.html)

- Perfil [Paciente](StructureDefinition-Paciente-cl-ips.html)
    - Se agrega el perfil Paciente.
    - Se basa en el recurso PacienteCl de la CoreCl.
    - Status se establece como draft.
    - Los elementos que conforman el perfil paciente se heredan del recurso proveniente de la CoreCl, los que fueron adaptados a la realidad nacional.
    - Se habilita el ejemplo:
      * [Ejemplo de Paciente CL - IPS](Patient-PacienteClIpsEjemplo.html)

- Perfil [Prescripción](StructureDefinition-MedicationRequest-cl-ips.html)
    - Se agrega el perfil Prescripción.
    - Se basa en el recurso MedicationRequest del estándar.
    - Status se establece como draft.
    - Se modifica la referencia del elemento medicationReference a MedicamentoClIps.
    - Se modifica la referencia del elemento subject a Paciente-cl-ips.
    - Los demás elementos se heredan de la CoreCl.
    - Se habilita el ejemplo:
      * [Medication Request - Ejemplo](MedicationRequest-MedicationRequest-CL-Ejemplo.html)

- Perfil [Prestador Individual](StructureDefinition-Prestador-cl-ips.html)
    - Se agrega el perfil Prestador Individual.
    - Se basa en el recurso PrestadorCL de la CoreCl.
    - Status se establece como draft. 
    - Los elementos se heredan a partir de la CoreCl, estableciendo los que provienen de la IPS como MS.
    - Se habilita el ejemplo:
      * [Ejemplo de Prestador Medicina Familiar CL - IPS](Practitioner-PrestadorMedFamiliarClIpsEjemplo.html)

- Perfil [Rol del Prestador](StructureDefinition-RolPrestador-cl-ips.html)
    - Se agrega el perfil  Rol del Prestadpr.
    - Se basa en el recurso CoreRolClinicoCl de la CoreCl.
    - Se modifica la referencia del elemento practitioner a Prestador-cl-ips.
    - Se modifica la referencia del elemento organization a Organizacion-cl-ips.
    - Los demás elementos se heredan de la CoreCl así como los MS.
    - Se habilitan los ejemplos:
      * [Rol Profesional Medicina Familiar - Ejemplo](PractitionerRole-RolProfesionalCLEjemplo.html)
      * [Rol Profesional Medicina Interna - Ejemplo](PractitionerRole-RolProfesionalMedInternaCLEjemplo.html)

- Perfil [Muestra](StructureDefinition-Speciment-cl-ips.html)
    - Se agrega el perfil Muestra.
    - Se basa en el recurso Specimen del estándar.
    - Status se establece como draft.
    - El elemento type se establece como MS.
    -  Se modifica la referencia del elemento subject a Paciente-cl-ips.
    - El elemento collection se establece como MS.
    - El elemento fastingStatus se establece como MS.
    - El resto de los elementos se heredan.
    - Se habilita el ejemplo:
      * [Muestra - Ejemplo](Specimen-SpecimenCLEjemplo.html)







