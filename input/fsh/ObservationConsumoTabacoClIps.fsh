Profile: ObservationUsoTabacoClIps
Parent: CoreObservacionCL
Id: Observation-uso-de-tabaco-cl-ips
Title: "Observación - HS: Uso de tabaco"
Description: "Este perfil restringe el recurso Observation para representar la evaluación del consumo de tabaco del paciente."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* category only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"radiologia\""
* category ^slicing.ordered = false
* category contains historialSocial 1..1 MS
* category[historialSocial] = CategorySocialHistory

* code only CodeableConceptIPS
* code = loinc#72166-2
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

* valueCodeableConcept 0..1
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from CurrentSmokingStatusUvIps (preferred)


* component ..0
//* component ^mustSupport = false