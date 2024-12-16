Profile: DiagnosticReportClIps
Parent: DiagnosticReport
Id: DiagnosticReport-cl-ips
Title:  "Reporte Diagnóstico (IPS-CL)"
Description: "Reporte resultado de un o varios estudios para diagnosticar una enfermedad. Este perfil es el simil al DiagnosticReport(IPS)."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^publisher = "Hl7 Chile"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status 1..1 MS
* status = #final
* category 1..1 MS
* category only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* code 1..1 MS
* code only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* subject 1..1 MS
  * ^short = "El sujeto del informe, generalmente, pero no siempre, es el paciente"
  * reference 1..1 MS
    * ^short = "Referencia literal, interna o url absoluta"
* subject only Reference(PacienteCLIps or Group) 
* effective[x] 1..1 MS
  * ^short = "Tiempo o periodo de tiempo clínicamente relevante para el informe"
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"
* effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
* effective[x].extension[data-absent-reason].value[x] ^binding.description = "Es usado para especificar porque el elemento esperado  por algún motivo el dato no se encuentra"

* performer MS
  * ^short = "Servicio de Diagnóstico Responsable"
* performer only Reference(PrestadorClIps or RolPrestadorClIps or OrganizacionClIps or CareTeam)

* resultsInterpreter MS
  * ^short = "Interprete primario del resultado"
* resultsInterpreter only Reference(PrestadorClIps or RolPrestadorClIps or OrganizacionClIps or CareTeam)

* specimen MS
  * ^short = "Muestras en las que se basa este informe"
* specimen only Reference(Specimen-cl-ips)

* result MS
  * ^short = "Observaciones"
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result ^slicing.ordered = false
* result only Reference(ObservacionCL)
* result contains 
  observacion-resultados 0..* MS
* result[observacion-resultados] only Reference(ObservationResultadoLaboratorioPatologiaClIps or ObservationResultadoRadiologyClIps)

* imagingStudy only Reference(ImagingStudyClIps)
* imagingStudy ^short = "Referencia a los detalles completos de las imágenes asociadas con el informe diagnóstico"