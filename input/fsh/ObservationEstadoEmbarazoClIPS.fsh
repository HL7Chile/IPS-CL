//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: loinc = http://loinc.org
//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
//Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//Alias: $Observation-pregnancy-edd-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips
Alias: pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

Profile: ObservationEstadoEmbarazoClIps
Parent: CoreObservacionCL
Id: Observation-estado-del-embarazo-cl-ips
Title: "Observación - Embarazo: Estado (IPS-CL)"
Description: "Este perfil restringe el recurso Observation para representar el estado del embarazo."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^url = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Observation-estado-del-embarazo-cl-ips"

* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Hl7 Chile"
* ^contact.name = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code only CodeableConceptIPS
* code = loinc#82810-3
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

* valueCodeableConcept  0..1 MS
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from PregnancyStatusUvIps (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"

* bodySite ..0
* bodySite ^mustSupport = false

* specimen ..0
//* specimen ^mustSupport = false

* device ..0
* device ^mustSupport = false

* referenceRange ..0
* referenceRange ^mustSupport = false

* hasMember only Reference(Observation-embarazo-fecha-estimada-de-parto-cl-ips)
* hasMember MS
* hasMember ^short = "Fecha de parto estimada"
//* hasMember ^definition = "Referencia a la observación de la fecha de parto estimada."
* hasMember.reference 1.. MS

* component ..0
//* component ^mustSupport = false