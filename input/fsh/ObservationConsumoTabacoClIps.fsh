//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: loinc = http://loinc.org
//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
//Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//Alias: $current-smoking-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips

Profile: ObservationUsoTabacoClIps
Parent: CoreObservacionCL
Id: Observation-uso-de-tabaco-cl-ips
Title: "Observación - SH: Uso de tabaco (IPS CL)"
Description: "Este perfil restringe el recurso Observation para representar la evaluación del consumo de tabaco del paciente."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Hl7 Chile"
* ^contact.name = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code only CodeableConceptIPS
* code = loinc#72166-2
* code MS

* subject 1.. MS
* subject only Reference(Paciente-cl-ips)
* subject.reference 1.. MS

* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"
* effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
* effective[x].extension[data-absent-reason].value[x] ^binding.description = "Es usado para especificar porque el elemento esperado por algún motivo no se encuentra el dato"

* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"

* component ..0
//* component ^mustSupport = false