Profile: ObservationEmbarazoFechaEstimadaDePartoClIps
Parent: CoreObservacionCL
Id: Observation-embarazo-fecha-estimada-de-parto-cl-ips
Title: "Observación - Embarazo: Fecha Estimada de Parto (IPS-CL)"
Description: "Este perfil restringe el recurso Observation para representar la fecha de parto estimada de un embarazo."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code MS
* code only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* code from http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "Códigos de Observaciones"

* subject 1.. MS
* subject only Reference(Paciente-cl-ips)
* subject.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"

* value[x] 0..1 MS
  * ^short = "Resultado Actual"
* valueDateTime 0..1 MS
* valueDateTime ^short = "Resultado Actual" 


* bodySite ..0
//* bodySite ^mustSupport = false

* method ..0
//* method ^mustSupport = false

* specimen ..0
//* specimen ^mustSupport = false

* device ..0
//* device ^mustSupport = false

* referenceRange ..0
//* referenceRange ^mustSupport = false

* component ..0
//* component ^mustSupport = false