Profile: ObservationIpsCl
Parent: CoreObservacionCL
Id: Observation-ips-cl
Title: "Observation Resultados (IPS-CL)"
Description: "Observaciones que pueden ser resultados de algún examén de laboratorio, imagen u otro"

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
* category MS
* category only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Paciente-cl-ips or Group or Device or CoreLocalizacionCl)

/*
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
*/

* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"
* effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
* effective[x].extension[data-absent-reason].value[x] ^binding.description = "Es usado para especificar porque el elemento esperado  por algún motivo el dato no se encuentra"
* performer MS
* performer only Reference(Prestador-cl-ips or RolPrestador-cl-ips or Organizacion-cl-ips or CareTeam or Paciente-cl-ips or RelatedPerson)
* value[x] MS
* hasMember only Reference(Observation-ips-cl or QuestionnaireResponse or MolecularSequence)
* component MS