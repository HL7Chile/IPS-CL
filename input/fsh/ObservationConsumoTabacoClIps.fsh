Profile: ObservationUsoTabacoClIps
Parent: CoreObservacionCL
Id: Observation-uso-de-tabaco-cl-ips
Title: "Observación - HS: Uso de tabaco"
Description: "Este perfil restringe el recurso Observation para representar la evaluación del consumo de tabaco del paciente."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"

//* ^version = "0.1.1"
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* category  ^short = "Concepto que referencia a una terminología o un texto acorde"
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"Historial Social\""
* category ^slicing.ordered = false
* category contains historialSocial 1..1 MS
* category[historialSocial] = CategorySocialHistory

* code = loinc#72166-2
* code MS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
  
* subject 1.. MS
* subject only Reference(Paciente-cl-ips)
* subject.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* effective[x] 1.. MS
* effective[x] only dateTime


* valueCodeableConcept 0..1
  * ^short = "Concepto que referencia a una terminología o un texto acorde"
* valueCodeableConcept from CurrentSmokingStatusUvIps (preferred)



//* component ^mustSupport = false