Profile: DiagnosticReportClIps
Parent: DiagnosticReport
Id: DiagnosticReport-cl-ips
Title:  "Reporte Diagnóstico (IPS-CL)"
Description: "Reporte resultado de un o varios estudios para diagnosticar una enfermedad. Este perfil es el simil al DiagnosticReport(IPS)."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^version = "0.1.0"
* ^publisher = "Hl7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status 1..1 MS
* status = #final
* category 1..1 MS
* category only CodeableConceptIPS
* code 1..1 MS
* code only CodeableConceptIPS
* subject 1..1 MS
  * reference 1..1 MS
* subject only Reference(PacienteCLIps or Group) 
* effective[x] 1..1 MS
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"
* effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
* effective[x].extension[data-absent-reason].value[x] ^binding.description = "Es usado para especificar porque el elemento esperado  por algún motivo el dato no se encuentra"

* performer MS
* performer only Reference(PrestadorClIps or RolPrestadorClIps or OrganizacionClIps or CareTeam)

* resultsInterpreter MS
* resultsInterpreter only Reference(PrestadorClIps or RolPrestadorClIps or OrganizacionClIps or CareTeam)

* specimen MS
* specimen only Reference(Speciment-cl-ips)

* result MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result ^slicing.ordered = false
* result only Reference(ObservacionCL)
* result contains 
  observacion-resultados 0..* MS
* result[observacion-resultados] only Reference(ObservationResultadoLaboratorioPatologiaClIps or ObservationResultadoRadiologyClIps)

* imagingStudy only Reference(ImagingStudyClIps)