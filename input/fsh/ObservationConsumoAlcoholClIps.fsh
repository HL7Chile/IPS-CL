Profile: ObservationUsoAlcoholClIps
Parent: CoreObservacionCL
Id: Observation-uso-de-alcohol-cl-ips
Title: "Observación - SH: Uso de Alcohol (IPS CL)"
Description: "Este perfil restringe el recurso Observation para representar la evaluación del consumo de alcohol del paciente."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code only CodeableConceptIPS
* code = loinc#74013-4
* code MS

* subject 1.. MS
* subject only Reference(Paciente-cl-ips)
* subject.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"

* valueQuantity 0..1
* valueQuantity only QuantityIPS
* valueQuantity ^short = "Una cantidad medida utilizando UCUM (Unified Code for Units of Measure)."

* component ..0
//* component ^mustSupport = false