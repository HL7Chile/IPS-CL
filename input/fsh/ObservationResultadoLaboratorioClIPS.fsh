Profile: ObservationResultadoLaboratorioClIps
Parent: Observation-ips-cl
Id: Observation-resultado-laboratorio-cl-ips
Title: "Observación Resultado: Laboratorio (IPS-CL)"
Description: "Resultados obtenidos para un examen de laboratorio"

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

* obeys ips-obs-2

* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.code"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"Laboratorio\""
* category ^slicing.ordered = false
* category contains laboratorio 1..1 MS
* category[laboratorio] = CategoryLaboratorio

* code from ResultsLaboratoryObservationUvIps (preferred)

* performer 1..*

* valueString MS
* valueRange 0..1
  * ^short = "Set de valores que se encuentran dentro de un rango"
* valueRange only RangeIPS
* valueRatio 0..1
  * ^short = "Una proporción de dos valores de Cantidad: un numerador y un denominador."	
* valueRatio only RatioIPS
* valueTime 0..1 
* valueDateTime 0..1
* valuePeriod 0..1
* valueQuantity MS
* valueCodeableConcept MS
* valueCodeableConcept from ResultsCodedValuesLaboratoryUvIps (preferred)

* valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = Canonical(ResultsBloodGroupSnomedCtIpsFreeSet)
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Vinculación de conformidad adicional a un conjunto de valores de enfermedades objetivo del conjunto gratuito de SNOMED CT IPS para uso global (en jurisdicciones miembros y no miembros de SNOMED)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = Canonical(ResultsPresenceAbsenceSnomedCtIpsFreeSet)
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Vinculación de conformidad adicional a un conjunto de valores de enfermedades objetivo del conjunto gratuito de SNOMED CT IPS para uso global (en jurisdicciones miembros y no miembros de SNOMED)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = Canonical(ResultsMicroorganismSnomedCtIpsFreeSet)
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Vinculación de conformidad adicional a un conjunto de valores de enfermedades objetivo del conjunto gratuito de SNOMED CT IPS para uso global (en jurisdicciones miembros y no miembros de SNOMED)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"


* interpretation only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"

* specimen only Reference(Speciment-cl-ips)

* referenceRange 0..*
  * ^short = "Utilizados como guía para la interpretación"

* hasMember only Reference(Observation-resultado-laboratorio-cl-ips or Observation-ips-cl)

/*
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true

* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = false

* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = false

* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = false

* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = false

* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true

* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
*/

Instance: CategoryLaboratorio
InstanceOf: CodeableConceptIPS
Usage: #inline
* coding = CodingLaboratorio

Instance: CodingLaboratorio
InstanceOf: CodingIPS
Usage: #inline
* system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = #laboratory
/*
* display.extension[translation]
  * url = "http://hl7.org/fhir/StructureDefinition/translation"
  * extension[lang].valueCode = #es
  * extension[content].valueString = "Laboratorio"
*/

Invariant: ips-obs-2
Description: "Si no hay un elemento \"hasMember\" presente entonces debe  haber un elemento \"value\""
* severity = #error
* expression = "value.exists() or hasMember.exists()"