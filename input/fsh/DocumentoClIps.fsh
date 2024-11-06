Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $MedicationRequest-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Alias: $Procedure-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $DeviceUseStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $DiagnosticReport-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $Observation-tobaccouse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips
Alias: $Observation-alcoholuse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips
Alias: $Observation-pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips
Alias: $Observation-pregnancy-outcome-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips
Alias: $Flag-alert-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips

Profile: DocumentoClIps
Parent: Composition
Id: Composition-cl-ips
Title: "Documento (IPS-CL)"
Description: """Documento clínico utilizado para representar el conjunto de datos del Resumen Internacional de Pacientes (IPS). 
Un documento de Resumen Internacional de Paciente (IPS) es un extracto de historia clínica electrónica que contiene información sanitaria esencial sobre un sujeto de atención. 
El conjunto de datos IPS es mínimo y no exhaustivo; independiente de la especialidad y la afección; pero sigue siendo clínicamente relevante. Tal como se especifica en las normas EN 17269 e ISO 27269, está diseñado para apoyar el caso de uso de la «atención transfronteriza no planificada», pero no se limita a él. Pretende ser internacional, es decir, ofrecer soluciones genéricas para su aplicación global más allá de una región o país concretos.

Este perfil se basa en el perfil ClinicalDocument."""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "HL7 International"

* . ^short = "International Patient Summary Documento"
* . ^definition = "International Patient Summary documento. \r\nUna composición es un conjunto de información relacionada con la asistencia sanitaria que se ensambla en un único documento lógico que proporciona una única declaración coherente de significado, establece su propio contexto y que tiene atestación clínica con respecto a quién realiza la declaración. \r\nAunque una composición define la estructura, en realidad no contiene el contenido: el contenido completo de un documento se encuentra en un paquete, cuyo primer recurso es la composición."
* text MS
* identifier MS
* status MS
* type only CodeableConceptIPS
* type = loinc#60591-5
* type MS
* type ^short = "Tipo de Documento (\"Resumen de Paciente\")"
* type ^definition = "Especifica que el documento refiere al Resumen de Paciente (Loinc \"60591-5\")\r\n"
* subject 1.. MS
* subject only Reference(PacienteCLIps)
* subject ^definition = "Sobre quién o que es el documento. \r\nEn general, una composición puede referirse a una persona (paciente o profesional sanitario), a un dispositivo (por ejemplo, una máquina) o incluso a un grupo de sujetos (como un documento sobre un rebaño de ganado o un conjunto de pacientes que comparten una exposición común).\r\nPara el IPS, el sujeto es siempre el paciente."
* subject.reference 1.. MS
* date MS
* author MS
* author ^short = "Quién y/o qué fue el autor del IPS"
* author ^definition = "Identifica al responsable de la información en el IPS, no necesariamente a quien la ingresó.\r\n\r\nEl tipo de autor, de manera de determinar la \"naturaleza\"del resumen de paciente: e.g. a \"Datos curativos\" IPS Vs. uno generado \"automaticamente\"."
* title MS
* title ^short = "International Patient Summary Genérico para uso en Chile"
* title ^definition = "Etiqueta oficial de lectura humana para el documento.\r\n\r\nPara este documento debiera ser \"Resumen de Paciente Basado en IPS\""
* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS
* custodian MS
* relatesTo.target[x] only Identifier or Reference(Composition or DocumentoClIps)
* event ^slicing.discriminator[0].type = #pattern
* event ^slicing.discriminator[=].path = "code"
* event ^slicing.rules = #open
//* event ^definition = "La principal actividad descrita por un IPS es la prestación de asistencia sanitaria durante un periodo de tiempo. \En la representación CDA del IPS esto se muestra estableciendo el valor de serviceEvent/@classCode a «PCPR» (prestación de asistencia) e indicando la duración durante la cual se prestó la asistencia en serviceEvent/effectiveTime. \En la representación FHIR debe utilizarse al menos un evento para registrar esta información.También pueden incluirse datos adicionales de fuera de esta duración si son relevantes para la atención prestada durante ese intervalo de tiempo (por ejemplo, revisados durante el intervalo de tiempo indicado). Por ejemplo, si el IPS es generado por un GP basado en la información registrada en su EHR-S, entonces el valor de inicio debe representar la fecha en la que comenzó la relación de tratamiento entre el paciente y el GP; y el valor final la fecha del último evento asistencial."
* event contains careProvisioningEvent 0..1 MS
* event[careProvisioningEvent] ^short = "La asistencia descrita en el documento"
* event[careProvisioningEvent] ^definition = "La prestación de asistencia sanitaria durante un periodo de tiempo que este IPS está documentando."
* event[careProvisioningEvent].code 1..1 MS
* event[careProvisioningEvent].code = $v3-ActClass#PCPR
* event[careProvisioningEvent].period MS

* section 1.. MS
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[=].valueString = "Sección"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Secciones que componen el IPS"
* section ^definition = "Las seccion es raíz que componen el documento IPS."
* section.code 1.. MS
* section.code only $CodeableConcept-uv-ips
* section.text 1.. MS
* section.emptyReason ..0
* section.emptyReason ^mustSupport = false
* section.section ..0
* section.section ^mustSupport = false
* section contains
    sectionMedicamentos 1..1 MS and
    sectionAlergias 1..1 MS and
    sectionProblemas 1..1 MS and
    sectionProcedimientos 0..1 MS and
    sectionImmunizaciones 0..1 MS and
    sectionDispMedicos 0..1 MS and
    sectionResultados 0..1 MS and
    sectionSignosVitales 0..1 and
    sectionHistoricoHx 0..1 and
    sectionStatusFuncional 0..1 and
    sectionPlanCuidado 0..1 and
    sectionHistoriaSocial 0..1 and
    sectionEmbarazoHx 0..1 and
    sectionFlagAlerts 0..1 and
    sectionDirectivasAvanzadas 0..1

* section[sectionMedicamentos] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicamentos] ^extension[=].valueString = "Sección"
* section[sectionMedicamentos] ^short = "Sección de Resumen de Medicamentos IPS"
* section[sectionMedicamentos] ^definition = "La sección de resumen de medicación contiene una descripción de los medicamentos del paciente relevantes para el ámbito del resumen del paciente.\r\nSe puede reportar:\r\n- Medicamentos activos; \r\n- medicamentos usados actualmente o usados anteriormente considerados relevantes para el autor; \r\n- Prescripciones o dispensaciones extraidos automáticamente de RCE.\r\n\r\nEn esos casos, los medicamentos se documentan en el Resumen del Paciente como declaraciones de medicación o solicitudes de medicación.\r\nEsta sección requiere o bien una entrada que indique que se sabe que el sujeto no toma ninguna medicación relevante; o bien una entrada que indique que no se dispone de información sobre medicaciones; o bien entradas que resuman las medicaciones relevantes del sujeto."
* section[sectionMedicamentos].title 1.. MS
* section[sectionMedicamentos].title ^short = "Sección de Resumen de Medicamentos"
* section[sectionMedicamentos].title ^definition = "Título de la sección específica.  Será parte de la renderización para uso dentro de la la tabla de contenidos.\r\n\r\nResumen de Medicamento "
* section[sectionMedicamentos].code = loinc#10160-0
* section[sectionMedicamentos].entry 1.. MS
* section[sectionMedicamentos].entry only Reference(MedicationStatement or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionMedicamentos].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicamentos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicamentos].entry ^slicing.rules = #open
* section[sectionMedicamentos].entry ^short = "Medicamentos relevantes para la salud del paciente"
* section[sectionMedicamentos].entry ^definition = "Esta lista los medicamentos relevantes para el ámbito del resumen del paciente o se utiliza para indicar que se sabe que el sujeto no toma ninguna medicación relevante; o bien que no se dispone de información sobre medicamentos."
* section[sectionMedicamentos].entry contains
    listMedicamentos 0..* and
    prescripciones 0..*
* section[sectionMedicamentos].entry[listMedicamentos] only Reference(RegMedicamentosClIps)
* section[sectionMedicamentos].entry[prescripciones] only Reference(PrescripcionClIps)

* section[sectionAlergias] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAlergias] ^extension[=].valueString = "Sección"
* section[sectionAlergias] ^short = "Sección de Alergias e Intolerancias"
* section[sectionAlergias] ^definition = "Esta sección documenta las alergias o intolerancias (afecciones) relevantes para ese paciente, describiendo el tipo de reacción (por ejemplo, erupción cutánea, anafilaxia, etc.); preferiblemente los agentes que la causan; y opcionalmente la criticidad y la certeza de la alergia."
* section[sectionAlergias].title 1.. MS
* section[sectionAlergias].code = loinc#48765-2
* section[sectionAlergias].entry 1.. MS
* section[sectionAlergias].entry only Reference(AllergyIntolerance or DocumentReference)
* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias o intolerancias (afecciones) relevantes para ese paciente."
* section[sectionAlergias].entry ^definition = "Enumera las alergias o intolerancias (afecciones) relevantes para ese paciente, describiendo el tipo de reacción (por ejemplo, erupción cutánea, anafilaxia,..); preferiblemente los agentes que la causan; y opcionalmente la criticidad y la certeza de la alergia.\r\nComo mínimo, debe enumerar las alergias y reacciones adversas actualmente activas y cualquier historial relevante.\r\nEsta entrada se utilizará para documentar que no se dispone de información sobre alergias, o que no se conocen alergias"
* section[sectionAlergias].entry contains alergias 1..* MS
* section[sectionAlergias].entry[alergias] only Reference(AlergiaIntClIps)

* section[sectionProblemas] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProblemas] ^extension[=].valueString = "Sección"
* section[sectionProblemas] ^short = "Problemas de Salud"
* section[sectionProblemas] ^definition = "La sección de problemas del IPS enumera y describe los problemas o condiciones clínicas que se están controlando actualmente para el paciente."
* section[sectionProblemas].title 1.. MS
* section[sectionProblemas].code = loinc#11450-4
* section[sectionProblemas].entry 1.. MS
* section[sectionProblemas].entry only Reference(Condition or DocumentReference)
* section[sectionProblemas].entry ^slicing.discriminator[0].type = #profile
* section[sectionProblemas].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProblemas].entry ^slicing.rules = #open
* section[sectionProblemas].entry ^short = "Problemas o afecciones clínicas que se están controlando actualmente en el paciente."
* section[sectionProblemas].entry ^definition = "Enumera y describe los problemas o afecciones clínicas que se están controlando actualmente en el paciente.  Esta entrada se utilizará para documentar que no se dispone de información sobre problemas o que no se conocen problemas relevantes."
* section[sectionProblemas].entry contains problema 1..* MS
* section[sectionProblemas].entry[problema] only Reference(ConditionClIps)

* section[sectionProcedimientos] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProcedimientos] ^extension[=].valueString = "Sección"
* section[sectionProcedimientos] ^short = "Historial de Procedimientos"
* section[sectionProcedimientos] ^definition = "La sección Historial de procedimientos contiene una descripción de los procedimientos anteriores del paciente que son pertinentes para el ámbito de este documento.\r\nComo por ejemplo:\r\n1. Procedimientos invasivos:e.g. Caterización Cardiaca; (los resultados de este procedimiento se documentan en la sección de resultados)\r\n2. Procedimientos Terapéuticos: e.j. diálisis;\r\n3. Procedimientos Quirúrjicos: e.j. Apendicectomía"
* section[sectionProcedimientos].title 1.. MS
* section[sectionProcedimientos].code = loinc#47519-4
* section[sectionProcedimientos].entry 1.. MS
* section[sectionProcedimientos].entry only Reference(Procedure or DocumentReference)
* section[sectionProcedimientos].entry ^slicing.discriminator[0].type = #profile
* section[sectionProcedimientos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionProcedimientos].entry ^slicing.rules = #open
* section[sectionProcedimientos].entry ^short = "Procedimientos anteriores del paciente pertinentes para el ámbito de este documento."
* section[sectionProcedimientos].entry ^definition = "Enumera los procedimientos anteriores del paciente que son pertinentes para el ámbito de este documento. Procedimiento diagnóstico invasivo: por ejemplo, cateterismo cardíaco (los resultados de este procedimiento se documentan en la sección de resultados). Procedimiento terapéutico: p. ej. diálisis;\r\n3. Procedimiento quirúrgico: por ejemplo, apendicectomía. Esta entrada se utilizará para documentar que no se dispone de información sobre procedimientos anteriores, o que no se conocen procedimientos anteriores relevantes."
* section[sectionProcedimientos].entry contains procedimiento 1..* MS
* section[sectionProcedimientos].entry[procedimiento] only Reference(ProcedimientosClIps)

* section[sectionImmunizaciones] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizaciones] ^extension[=].valueString = "Sección"
* section[sectionImmunizaciones] ^short = "Sección de Inmunizaciones"
//* section[sectionImmunizaciones] ^definition = "La Sección de Inmunizaciones define el estado de inmunización actual de un paciente y el historial de inmunizaciones pertinente.\NEl caso de uso principal de la Sección de Inmunizaciones es permitir la comunicación del estado de inmunización de un paciente.La sección incluye el estado de inmunización actual, y puede contener todo el historial de inmunizaciones que sea relevante para el periodo de tiempo que se está resumiendo."
* section[sectionImmunizaciones].title 1.. MS
* section[sectionImmunizaciones].code = loinc#11369-6
* section[sectionImmunizaciones].entry 1.. MS
* section[sectionImmunizaciones].entry only Reference(Immunization or DocumentReference)
* section[sectionImmunizaciones].entry ^slicing.discriminator[0].type = #profile
* section[sectionImmunizaciones].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionImmunizaciones].entry ^slicing.rules = #open
* section[sectionImmunizaciones].entry ^short = "Estado de vacunación del paciente y antecedentes pertinentes."
//* section[sectionImmunizaciones].entry ^definition = "Define el estado actual de inmunización del paciente y el historial de inmunización pertinente.\NEl caso de uso principal de la Sección de Inmunización es permitir la comunicación del estado de inmunización de un paciente.\NPuede contener todo el historial de inmunización que sea relevante para el periodo de tiempo que se está resumiendo. Esta entrada se utilizará para documentar que no se dispone de información sobre inmunizaciones o que no se conocen inmunizaciones."
* section[sectionImmunizaciones].entry contains immunizacion 1..* MS
* section[sectionImmunizaciones].entry[immunizacion] only Reference(InmunizacionClIps)

* section[sectionDispMedicos] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDispMedicos] ^extension[=].valueString = "Sección"
* section[sectionDispMedicos] ^short = "Sección de Dispositivos Médicos"
* section[sectionDispMedicos] ^definition = "La sección de dispositivos médicos contiene texto narrativo y entradas codificadas que describen el historial de uso de dispositivos médicos por parte del paciente."
* section[sectionDispMedicos].title 1.. MS
* section[sectionDispMedicos].code = loinc#46264-8
* section[sectionDispMedicos].entry 1.. MS
* section[sectionDispMedicos].entry only Reference(DeviceUseStatement or DocumentReference)
* section[sectionDispMedicos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDispMedicos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDispMedicos].entry ^slicing.rules = #open
* section[sectionDispMedicos].entry ^short = "La historia de dispositivos médicos en uso"
* section[sectionDispMedicos].entry ^definition = "Describe el historial de uso de productos sanitarios del paciente. Esta entrada se utilizará para documentar que no se dispone de información sobre el uso de productos sanitarios o que no se conoce ningún uso relevante de productos sanitarios."
* section[sectionDispMedicos].entry contains deviceStatement 1..* MS
* section[sectionDispMedicos].entry[deviceStatement] only Reference(DeclaracionUsoDispositivoClIps)

* section[sectionResultados] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResultados] ^extension[=].valueString = "Sección de Resultados"
* section[sectionResultados] ^short = "Sección de Resultados"
* section[sectionResultados] ^definition = "Esta sección reúne los resultados de observación pertinentes recogidos en el paciente o producidos en muestras biológicas in vitro recogidas del paciente. Algunos de estos resultados pueden ser de laboratorio, otros de anatomía patológica, otros de radiología y otros clínicos."
* section[sectionResultados].title 1.. MS
* section[sectionResultados].code = loinc#30954-2
* section[sectionResultados].entry 1.. MS
* section[sectionResultados].entry only Reference(Observation or DiagnosticReport or DocumentReference)
* section[sectionResultados].entry ^slicing.discriminator[0].type = #type
* section[sectionResultados].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionResultados].entry ^slicing.discriminator[+].type = #profile
* section[sectionResultados].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionResultados].entry ^slicing.rules = #open
* section[sectionResultados].entry ^short = "Resultados de observación relevantes recogidos en el paciente o producidos en muestras biológicas in vitro recogidas del paciente."
* section[sectionResultados].entry ^definition = "Resultados de observación relevantes recogidos en el paciente o producidos en muestras biológicas in vitro recogidas del paciente. Algunos de estos resultados pueden ser de laboratorio, otros de anatomía patológica, otros de radiología y otros clínicos."
* section[sectionResultados].entry contains
    resultados-obs-lab-pato 0..* MS and
    resultados-obs-radio 0..* MS and
    resultado-reporte 0..* MS
* section[sectionResultados].entry[resultados-obs-lab-pato] only Reference(ObservationResultadoLaboratorioPatologiaClIps)
* section[sectionResultados].entry[resultados-obs-radio] only Reference(ObservationResultadoRadiologyClIps)
* section[sectionResultados].entry[resultado-reporte] only Reference(DiagnosticReportClIps)

* section[sectionSignosVitales] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSignosVitales] ^extension[=].valueString = "Sección Signos Vitales"
* section[sectionSignosVitales] ^label = "Signos Vitales"
* section[sectionSignosVitales] ^short = "Sección de Signos Vitales"
* section[sectionSignosVitales] ^definition = "La sección de signos vitales incluye la tensión arterial, la temperatura corporal, la frecuencia cardiaca y la frecuencia respiratoria. También puede incluir otros hallazgos clínicos, como la altura, el peso, el índice de masa corporal, el perímetro cefálico y la pulsioximetría. En particular, pueden incluirse las constantes vitales o los hallazgos físicos notables, como los más recientes, los máximos y/o mínimos, la línea de base o las tendencias relevantes"
* section[sectionSignosVitales].title 1..
* section[sectionSignosVitales].code = loinc#8716-3
* section[sectionSignosVitales].entry only Reference(Observation or DocumentReference)
* section[sectionSignosVitales].entry ^slicing.discriminator[0].type = #profile
* section[sectionSignosVitales].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionSignosVitales].entry ^slicing.rules = #open
* section[sectionSignosVitales].entry ^short = "Signos vitales o hallazgos físicos de interés."
* section[sectionSignosVitales].entry ^definition = "Signos vitales o hallazgos físicos de relevancia como: tensión arterial, temperatura corporal, frecuencia cardiaca y frecuencia respiratoria. También puede incluir otros hallazgos clínicos, como altura, peso, índice de masa corporal, perímetro cefálico y pulsioximetría. En particular, pueden incluirse constantes vitales o hallazgos físicos relevantes como los más recientes, máximos y/o mínimos, línea de base, o tendencias relevantes"
* section[sectionSignosVitales].entry contains vitalSign 0..*
* section[sectionSignosVitales].entry[vitalSign] only Reference(observation-vitalsigns)

* section[sectionHistoricoHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionHistoricoHx] ^extension[=].valueString = "Sección"
* section[sectionHistoricoHx] ^short = "Histórico de enfermedades"
* section[sectionHistoricoHx] ^definition = "La sección Historial de enfermedades anteriores contiene una descripción de las afecciones que el paciente padeció en el pasado."
* section[sectionHistoricoHx].title 1..
* section[sectionHistoricoHx].code = loinc#11348-0
* section[sectionHistoricoHx].entry 1..
* section[sectionHistoricoHx].entry only Reference(Condition or DocumentReference)
* section[sectionHistoricoHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionHistoricoHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionHistoricoHx].entry ^slicing.rules = #open
* section[sectionHistoricoHx].entry ^short = "Condiciones sufridas por el paciente en el pasado"
* section[sectionHistoricoHx].entry ^definition = "Contiene una descripción de las afecciones que sufrió el paciente en el pasado."
* section[sectionHistoricoHx].entry contains pastProblem 1..*
* section[sectionHistoricoHx].entry[pastProblem] only Reference(ConditionClIps)

* section[sectionStatusFuncional] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionStatusFuncional] ^extension[=].valueString = "Sección"
* section[sectionStatusFuncional] ^short = "Status Funcional"
* section[sectionStatusFuncional] ^definition = "La sección de estado funcional contendrá una descripción narrativa de la capacidad del paciente para realizar actos de la vida diaria, incluidas las posibles necesidades del paciente de ser evaluado continuamente por terceros. De hecho, el estado de invalidez puede influir en las decisiones sobre cómo administrar los tratamientos.\nLos perfiles para expresar las discapacidades y las evaluaciones funcionales se especificarán en futuras versiones de esta guía."
* section[sectionStatusFuncional].title 1..
* section[sectionStatusFuncional].code = loinc#47420-5
* section[sectionStatusFuncional].entry only Reference(Condition or ClinicalImpression or DocumentReference)
* section[sectionStatusFuncional].entry ^slicing.discriminator[0].type = #profile
* section[sectionStatusFuncional].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionStatusFuncional].entry ^slicing.rules = #open
* section[sectionStatusFuncional].entry ^short = "Entrada opcional utilizada para representar discapacidades y evaluaciones funcionales"
* section[sectionStatusFuncional].entry ^definition = "Describe las capacidades del paciente para realizar actos de la vida diaria, incluidas las posibles necesidades del paciente de ser evaluado continuamente por terceros. De hecho, el estado de invalidez puede influir en las decisiones sobre cómo administrar los tratamientos.\nLos perfiles para expresar las discapacidades y las evaluaciones funcionales se especificarán en futuras versiones de esta guía."
* section[sectionStatusFuncional].entry contains
    discapacidad 0..* and
    evalFuncional 0..*
* section[sectionStatusFuncional].entry[discapacidad] only Reference(ConditionClIps)
* section[sectionStatusFuncional].entry[evalFuncional] only Reference(ClinicalImpression)

* section[sectionPlanCuidado] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPlanCuidado] ^extension[=].valueString = "Sección"
* section[sectionPlanCuidado] ^short = "Plan de Cuidado"
* section[sectionPlanCuidado] ^definition = "La sección del plan de cuidados contiene una descripción narrativa de las expectativas de los cuidados, incluidas las propuestas, los objetivos y las solicitudes de órdenes para la supervisión, el seguimiento o la mejora del estado del paciente."
* section[sectionPlanCuidado].title 1..
* section[sectionPlanCuidado].code = loinc#18776-5
* section[sectionPlanCuidado].entry only Reference(CarePlan or DocumentReference)
* section[sectionPlanCuidado].entry ^slicing.discriminator[0].type = #profile
* section[sectionPlanCuidado].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionPlanCuidado].entry ^slicing.rules = #open
* section[sectionPlanCuidado].entry ^short = "Resumen de plan de cuidados"
* section[sectionPlanCuidado].entry ^definition = "Plan dinámico y personalizado que incluye la actividad sanitaria necesaria identificada, los objetivos sanitarios y las metas sanitarias, en relación con uno o más problemas de salud especificados en un proceso sanitario [Fuente EN ISO 13940]."
* section[sectionPlanCuidado].entry contains carePlan 0..*
* section[sectionPlanCuidado].entry[carePlan] only Reference(CarePlan)

* section[sectionHistoriaSocial] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionHistoriaSocial] ^extension[=].valueString = "Sección"
* section[sectionHistoriaSocial] ^short = "Historia Social"
* section[sectionHistoriaSocial] ^definition = "La sección de historia social contiene una descripción de los \"factores de estilo de vida\" u \"observaciones de estilo de vida\" reñacionados con la salud del paciente (e.j. Hábitos de fumar; consumo de alcohol; dietas; hábitos de riesgo)."
* section[sectionHistoriaSocial].title 1..
* section[sectionHistoriaSocial].code = loinc#29762-2
* section[sectionHistoriaSocial].entry only Reference(Observation or DocumentReference)
* section[sectionHistoriaSocial].entry ^slicing.discriminator[0].type = #profile
* section[sectionHistoriaSocial].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionHistoriaSocial].entry ^slicing.rules = #open
* section[sectionHistoriaSocial].entry ^short = "Aspectos relacionados con salud \"factores de estilo de vida\" u \"observaciones asociadas a estilos de vida\" (e.j. Hábitos de fumar; consumo de alcohol; dietas, hábitos de riesgo.)"
* section[sectionHistoriaSocial].entry ^definition = "Descripción de los «factores de estilo de vida» relacionados con la salud de la persona\" u \"observaciones asociadas a estilos de vida\" (e.j. Hábitos de fumar; consumo de alcohol; dietas, hábitos de riesgo.)"
* section[sectionHistoriaSocial].entry contains
    fumador 0..1 and
    alcohol 0..1
* section[sectionHistoriaSocial].entry[fumador] only Reference(ObservationUsoTabacoClIps)
* section[sectionHistoriaSocial].entry[alcohol] only Reference(ObservationUsoAlcoholClIps)

* section[sectionEmbarazoHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEmbarazoHx] ^extension[=].valueString = "Sección"
* section[sectionEmbarazoHx] ^short = "Historial de Embarazos"
* section[sectionEmbarazoHx] ^definition = "La sección de antecedentes de embarazo contendrá información sobre si la paciente está o no embarazada en la actualidad."
* section[sectionEmbarazoHx].title 1..
* section[sectionEmbarazoHx].code = loinc#10162-6
* section[sectionEmbarazoHx].entry only Reference(Observation or DocumentReference)
* section[sectionEmbarazoHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionEmbarazoHx].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionEmbarazoHx].entry ^slicing.rules = #open
* section[sectionEmbarazoHx].entry ^short = "Estado actual del embarazo y, opcionalmente, información sobre el resultado de embarazos anteriores."
* section[sectionEmbarazoHx].entry ^definition = "Contiene información sobre si la paciente está embarazada o no.\r\nPuede contener además información resumida sobre el resultado de embarazos anteriores."
* section[sectionEmbarazoHx].entry contains
    statusEmbarazo 0..* and
    resultadoEmbarazo 0..*
* section[sectionEmbarazoHx].entry[statusEmbarazo] only Reference(ObservationEstadoEmbarazoClIps)
* section[sectionEmbarazoHx].entry[resultadoEmbarazo] only Reference(ObservationResultadoEmbarazoClIps)
//Y fecha de embarazo??
* section[sectionFlagAlerts] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionFlagAlerts] ^extension[=].valueString = "Sección"
* section[sectionFlagAlerts] ^short = "Flag - Alertas"
* section[sectionFlagAlerts] ^definition = "La sección de alertas señala posibles preocupaciones y/o peligros para/del paciente y también puede incluir obstáculos para la atención."
* section[sectionFlagAlerts].title 1..
* section[sectionFlagAlerts].code = loinc#104605-1
* section[sectionFlagAlerts].entry only Reference(Flag or DocumentReference)
* section[sectionFlagAlerts].entry ^slicing.discriminator[0].type = #profile
* section[sectionFlagAlerts].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionFlagAlerts].entry ^slicing.rules = #open
* section[sectionFlagAlerts].entry ^short = "Información sobre alertas relacionadas al paciente."
* section[sectionFlagAlerts].entry ^definition = "Contiene información de alertas que se deben comunicar. Opcionalmente, puede hacer referencia a otros recursos en IPS-CL."
* section[sectionFlagAlerts].entry contains alertsFlag 0..*
* section[sectionFlagAlerts].entry[alertsFlag] only Reference(FlagAlertClIps)

* section[sectionDirectivasAvanzadas] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDirectivasAvanzadas] ^extension[=].valueString = "Sección"
* section[sectionDirectivasAvanzadas] ^short = "Sección de Consentimientos"
* section[sectionDirectivasAvanzadas] ^definition = "La sección de consentimientos contiene una descripción narrativa de las voluntades anticipadas del paciente."
* section[sectionDirectivasAvanzadas].title 1..
* section[sectionDirectivasAvanzadas].code = loinc#42348-3
* section[sectionDirectivasAvanzadas].entry only Reference(Consent or DocumentReference)
* section[sectionDirectivasAvanzadas].entry ^slicing.discriminator[0].type = #profile
* section[sectionDirectivasAvanzadas].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDirectivasAvanzadas].entry ^slicing.rules = #open
* section[sectionDirectivasAvanzadas].entry ^short = "Descripción narrativa del documento de declaraciones de acceso del paciente."
* section[sectionDirectivasAvanzadas].entry ^definition = "Contiene una descripción narrativa o una entrada de Consentimiento con información sobre la directiva anticipada del paciente."
* section[sectionDirectivasAvanzadas].entry contains advanceDirectivesConsent 0..*
* section[sectionDirectivasAvanzadas].entry[advanceDirectivesConsent] only Reference(Consent)

