Profile: ObservationEstadoEmbarazoClIps
Parent: CoreObservacionCL
Id: Observation-estado-del-embarazo-cl-ips
Title: "Observación - Embarazo: Estado (IPS-CL)"
Description: "Este perfil restringe el recurso Observation para representar el estado del embarazo."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code only CodeableConceptIPS
* code = loinc#82810-3
* code MS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* subject 1.. MS
* subject only Reference(Paciente-cl-ips)
* subject.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"

* value[x]  0..1 MS
  * ^short = "Resultado Actual"
* valueCodeableConcept only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* valueCodeableConcept from PregnancyStatusUvIps (preferred)

* bodySite ..0

* specimen ..0

* device ..0

* referenceRange ..0

* hasMember only Reference(Observation-embarazo-fecha-estimada-de-parto-cl-ips)
* hasMember MS
* hasMember ^short = "Fecha de parto estimada"
* hasMember.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* component ..0