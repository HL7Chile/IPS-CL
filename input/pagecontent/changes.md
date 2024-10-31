### 0.2.0
- Versión en construción de la guía IPS-CL basado en la guía ClCore 1.9.1 e IPS 2.0.0

- Perfil [AdvanceDirectives](StructureDefinition-Consent-cl-ips.html)
    - Se agrega el perfil Directivas Anticipadas.
    - Se basa en el recurso Consent directamente del estándar ya que el enlace al perfil es el recurso.
    - Se habilita el ejemplo:
      * [Directivas Avanzadas - Recurso Consent - Ejemplo](Consent-AdvanceDirectives-CL-Ejemplo.html)

- Perfil [CarePlan](StructureDefinition-CarePlan-cl-ips.html)
    - Se agrega el perfil CarePlan.
    - Se basa en el recurso CarePlan directamente del estándar ya que el enlace al perfil es el recurso.
    - Se habilita el ejemplo:
      * [Plan de cuidados - Ejemplo]( CarePlan-CarePlan-CL-Ejemplo.html)

- Perfil [SignosVitales](StructureDefinition-vitalsigns-cl-ips.html)
    - Se agrega el perfil Signos Vitales
    - Se basa en el perfil Vital Signs proveniente directamente del recurso Observation del estándar FHIR.
    - Se habilita el ejemplo:
      * [Signos Vitales - Ejemplo](Observation-SignosVitales-CL-Ejemplo.html)

- Perfil [FuncionalStatus - ClinicalImpression](StructureDefinition-Funcional-status-cl-ips.html)
    - Se agrega el perfil Impresión clínica: Estado funcional.
    - Se basa en el recurso ClinicalImpression directamente del estándar ya que el enlace al perfil es  el recurso.
    - Se habilita el ejemplo:
      * [Estado funcional: Impresión/Evaluación Clínica - Ejemplo](ClinicalImpression-FuncionalStatusClinicalImpression-CL-Ejemplo.html)

- Perfil[Condition](StructureDefinition-Condition-cl-ips.html)
    - Se agrega el perfil Condición
    - Se basa en el recurso DiagnosticoCl proveniente de la CoreCl.
    - El elemento verificationStaatus se establece como MS
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - El elemento onset[x] se modificó según la CoreCl, quedando solo onsetDateTime y onsetPeriod.
    - Se habilita el ejemplo:
      * [Condición - Ejemplo](Condition-Condition-CL-Ejemplo.html)

~ Los perfiles a continuación contienen lo siguiente:
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
      * [Bundle - Ejemplo](Bundle-International-Patient-Summary-Genérico-para-uso-en-Chile.html)

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
    - La section[sectionMedicamentos].entry se establece como MS y obligatoria.
     section[sectionMedicamentos].entry[listMedicamentos] only Reference(RegMedicamentosClIps)
* section[sectionMedicamentos].entry[prescripciones] only Reference(PrescripcionClIps)


    - Se habilita el ejemplo: 

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
    - Se modifica la referencia "Observation-pregnancy-edd-uv-ips" a ["Observation-embarazo-fecha-estimada-de-parto-cl-ips"](https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Observation-embarazo-fecha-estimada-de-parto-cl-ips)
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





