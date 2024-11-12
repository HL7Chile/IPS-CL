Alias: CScaterogy = http://terminology.hl7.org/CodeSystem/observation-category

Profile: ObservationResultadoRadiologyClIps
Parent: CoreObservacionCL
Id: Observation-resultado-radiology-cl-ips
Title: "Observación Resultado: Imagenológico (IPS-CL)"
Description: "Resultados obtenidos para un examen imagenológico"

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

* obeys ips-obs-1

* partOf only Reference(ImagingStudy-cl-ips)
  * ^short = "Referencia al estudio"

* status 1..1 MS
  * ^short = "final | amended | corrected"
  * ^definition = "Filtro de los estados según el IPS International"
* status from ResultsStatusUvIps (required)

* category 1..*
* category only CodeableConceptIPS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.code"
//* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"Laboratorio\""
* category ^slicing.ordered = false
* category contains laboratorio 1..1 MS
* category[laboratorio].coding.code = #imaging
//* category[laboratorio].coding.display = "Imaging"
  * ^short = "Categoría de tipo: Laboratorio"

* code from ResultsRadiologyObservationUvIps (extensible)

* subject 1..1 MS
* subject only Reference(Paciente-cl-ips)

* effective[x] 1..1 MS
* effective[x] obeys ips-obs-2
* effective[x] only dateTime or Period
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"
* effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
* effective[x].extension[data-absent-reason].value[x] ^binding.description = "Es usado para especificar porque el elemento esperado  por algún motivo el dato no se encuentra"

* performer 1..* MS
* performer only Reference(Prestador-cl-ips or RolPrestador-cl-ips or Organizacion-cl-ips or CareTeam or Paciente-cl-ips or RelatedPerson)

* valueString MS

* interpretation only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"

* specimen only Reference(Speciment-cl-ips)

* device only Reference(DispositivoClIps or DeviceMetric)

* referenceRange 0..*
  * ^short = "Utilizados como guía para la interpretación"

* hasMember only Reference(Observation-resultado-radiology-cl-ips)

* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.rules = #closed
* component ^slicing.ordered = false
* component contains
  observacionTextual 0..* and
  observacionCodigo 0..* and
  observacionMedicionNumericaCuantitativa 0..* and
  observacionMedicionRangoNumerico 0..* and
  observacionMedicionRadioNumerico 0..* and
  observacionMedicionMuestraDatos 0..*

* component[observacionTextual]
  * code only CodeableConceptIPS
  * code from ResultsRadiologyTextualObservationUvIps (extensible)
  * value[x] only string

* component[observacionCodigo]
  * code only CodeableConceptIPS
  * code from ResultsRadiologyObservationUvIps (extensible)
  * value[x] only CodeableConceptIPS

* component[observacionMedicionNumericaCuantitativa]
  * code only CodeableConceptIPS
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only QuantityIPS

* component[observacionMedicionRangoNumerico]
  * code only CodeableConceptIPS
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only RangeIPS

* component[observacionMedicionRadioNumerico]
  * code only CodeableConceptIPS
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only RatioIPS

* component[observacionMedicionMuestraDatos]
  * code only CodeableConceptIPS
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only SampledData

Instance: CategoryRadiologia
InstanceOf: CodeableConceptIPS
Usage: #inline
* coding = CodingRadiologia

Instance: CodingRadiologia
InstanceOf: CodingIPS
Usage: #inline
* system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = #imaging
/*
* display.extension[translation]
  * url = "http://hl7.org/fhir/StructureDefinition/translation"
  * extension[lang].valueCode = #es
  * extension[content].valueString = "Laboratorio"
*/

Invariant: ips-obs-1
Description: "hasMember y el component son mutuamente exclusivo"
Severity: #error
Expression: "hasMember.empty() or component.empty()"

Invariant: ips-obs-2
Description: "La fecha y hora deben ser al menos hasta el día."
Expression: "$this.ofType(dateTime).empty() or ($this as dateTime).toString().length() >= 8"
Severity: #error


