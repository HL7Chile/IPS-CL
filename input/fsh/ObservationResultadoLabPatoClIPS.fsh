Profile: ObservationResultadoLaboratorioPatologiaClIps
Parent: CoreObservacionCL
Id: Observation-resultado-laboratorio-patologico-cl-ips
Title: "Observación Resultado: Laboratorio/Patología (IPS-CL)"
Description: "Resultados obtenidos para un examen de laboratorio"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^version = "0.1.0"
* ^publisher = "Hl7 Chile"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* obeys ips-obs-3 and ips-obs-4

* status 1..1 MS
  * ^short = "final | amended | corrected"
  * ^definition = "Filtro de los estados según el IPS International"
* status from ResultsStatusUvIps (required)

* category MS
* category only CodeableConceptIPS
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"Laboratorio\""
* category ^slicing.ordered = false
* category contains laboratorio 1..1 MS
* category[laboratorio] = CategoryLaboratorio
  * ^short = "Categoría de tipo: Laboratorio"

* code 1..1 MS
* code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* code only CodeableConceptIPS
* code from ResultsLaboratoryPathologyObservationUvIps (preferred)

* subject 1..1 MS
* subject only Reference(Paciente-cl-ips or Group or DispositivoClIps or CoreLocalizacionCl)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"
* effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
* effective[x].extension[data-absent-reason].value[x] ^binding.description = "Es usado para especificar porque el elemento esperado  por algún motivo el dato no se encuentra"

* performer 1..* MS
* performer only Reference(Prestador-cl-ips or RolPrestador-cl-ips or Organizacion-cl-ips or CareTeam or Paciente-cl-ips or RelatedPerson)

* value[x] 1..1 MS
* value[x] ^short = "Resultado Actual"
* valueString MS
  * ^short = "Resultado Actual"
* valueQuantity MS
* valueQuantity ^short = "Una cantidad medida utilizando UCUM (Unified Code for Units of Measure)."
* valueCodeableConcept MS
  * ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from ResultsCodedValuesLaboratoryPathologyUvIps (preferred)


* interpretation only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"

* specimen only Reference(Specimen-cl-ips)

* referenceRange 0..*
  * ^short = "Utilizados como guía para la interpretación"

* hasMember only Reference(Observation-resultado-laboratorio-patologico-cl-ips)

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

Invariant: ips-obs-3
Description: "Debe exisitir al menos uno de los siguientes elementos: value, dataAbsentReason, hasMember o component"
Severity: #error
Expression: "value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"

Invariant: ips-obs-4
Description: "Si el observation tiene un componenete entonces, este elemento debe proveer value o dataAbsentReason"
Expression: "component.exists() implies (component.value.exists() or component.dataAbsentReason.exists())"
Severity: #error