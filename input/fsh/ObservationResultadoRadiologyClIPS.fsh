Alias: CScaterogy = http://terminology.hl7.org/CodeSystem/observation-category

Profile: ObservationResultadoRadiologyClIps
Parent: CoreObservacionCL
Id: Observation-resultado-radiology-cl-ips
Title: "Observación Resultado: Imagenológico (IPS-CL)"
Description: "Resultados obtenidos para un examen imagenológico"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
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
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing para obligar el uso de una categoria de tipo: \"radiologia\""
* category ^slicing.ordered = false
* category contains radiologia 1..1 MS
* category[radiologia] = CategoryRadiologia
  * ^short = "Categoría de tipo: Radiología"

* code only CodeableConceptIPS
* code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* code from ResultsRadiologyObservationUvIps (extensible)

* subject 1..1 MS
* subject only Reference(Paciente-cl-ips)

* effective[x] 1..1 MS
* effective[x] obeys ips-obs-2
* effective[x] only dateTime or Period
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "Motivo por el cual no se encuentra el dato"

* performer 1..* MS
* performer only Reference(Prestador-cl-ips or RolPrestador-cl-ips or Organizacion-cl-ips or CareTeam or Paciente-cl-ips or RelatedPerson)

* value[x] ^short = "Resultado Actual"
* valueString MS
* valueString ^short = "Resultado Actual"

* interpretation only CodeableConceptIPS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"

* specimen only Reference(Specimen-cl-ips)

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
  * code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
  * code from ResultsRadiologyTextualObservationUvIps (extensible)
  * value[x] only string

* component[observacionCodigo]
  * code only CodeableConceptIPS
  * code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
  * code from ResultsRadiologyObservationUvIps (extensible)
  * value[x] only CodeableConceptIPS

* component[observacionMedicionNumericaCuantitativa]
  * code only CodeableConceptIPS
  * code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only QuantityIPS

* component[observacionMedicionRangoNumerico]
  * code only CodeableConceptIPS
  * code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only RangeIPS

* component[observacionMedicionRadioNumerico]
  * code only CodeableConceptIPS
  * code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
  * code from ResultsRadiologyMeasurementObservationUvIps (extensible)
  * value[x] only RatioIPS

* component[observacionMedicionMuestraDatos]
  * code only CodeableConceptIPS
  * code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
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


Invariant: ips-obs-1
Description: "hasMember y el component son mutuamente exclusivo"
Severity: #error
Expression: "hasMember.empty() or component.empty()"

Invariant: ips-obs-2
Description: "La fecha y hora deben ser al menos hasta el día."
Expression: "$this.ofType(dateTime).empty() or ($this as dateTime).toString().length() >= 8"
Severity: #error


