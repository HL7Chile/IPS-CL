Profile: ObservationUsoAlcoholClIps
Parent: CoreObservacionCL
Id: Observation-uso-de-alcohol-cl-ips
Title: "Observación - HS: Uso de Alcohol"
Description: "Este perfil restringe el recurso Observation para representar la evaluación del consumo de alcohol del paciente."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"

//* ^version = "0.1.1"
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

//* category only CodeableConcept
* category ^short = "Concepto que referencia a una terminología o un texto acorde"
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"Historial Social\""
* category ^slicing.ordered = false
* category contains historialSocial 1..1 MS
* category[historialSocial] = CategorySocialHistory

//* code only CodeableConcept
* code = loinc#74013-4
* code MS

* subject 1.. MS
* subject only Reference(Paciente-cl-ips)
* subject.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* effective[x] 1.. MS
* effective[x] only dateTime


* valueQuantity 0..1
* valueQuantity ^short = "Una cantidad medida utilizando UCUM (Unified Code for Units of Measure)."


//* component ^mustSupport = false

Instance: CategorySocialHistory
InstanceOf: CodeableConcept
Usage: #inline
* coding = CodingSocialHistory

Instance: CodingSocialHistory
InstanceOf: Coding
Usage: #inline
* system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = #social-history