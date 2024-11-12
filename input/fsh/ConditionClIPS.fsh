Alias: ConditionSeverity = http://hl7.org/fhir/ValueSet/condition-severity
Alias: ConditionClinicalStatus = http://hl7.org/fhir/ValueSet/condition-clinical
Alias: ConditionVerificationSeverity = http://hl7.org/fhir/ValueSet/condition-ver-status
Alias: ConditionBodySite = http://hl7.org/fhir/ValueSet/body-site

Profile: ConditionClIps
Parent: DiagnosticoCl
Id: Condition-cl-ips
Title: "Condición (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Condition por la Guía de Implementación FHIR del Resumen Internacional del Paciente Adaptación de Chile (IPS-CL). Un registro de un problema se representa en el resumen del paciente como una instancia del recurso Condition restringido por este perfil.

Representación de un problema en el resumen internacional del paciente."

* clinicalStatus only CodeableConceptIPS
  * ^short = "El estatus en el cual se encuentra la condición: active| recurrece | relapse | inactive | remission | resolved"
* clinicalStatus from ConditionClinicalStatus
  * ^binding.description = "Códigos definidos por estándar"

* verificationStatus only CodeableConceptIPS
  * ^short = "Estado de verificación de la condición o diagnóstico: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
* verificationStatus from ConditionVerificationSeverity
  * ^binding.description = "Códigos definidos por estándar"

* category only CodeableConceptIPS
* category MS
  * ^short = "Concepto que referencia a una terminología o un texto acorde"

* category from ProblemTypeUvIps (extensible)
  * ^binding.extension[0].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = Canonical(ProblemTypeLoinc)
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Una vinculación adicional alternativa al código \"Problem\" de LOINC, mantenida para compatibilidad retroactiva."
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* severity MS
  * ^short = "Grado de severidad del problema"
* severity only CodeableConceptIPS
* severity from ConditionSeverity (preferred)

* code 1..1 MS
  * ^short = "Código del problema clínico"
* code only CodeableConceptIPS
* code from ProblemsUvIps (preferred)
  * ^binding.description = "Código para un problema clínico (o problema ausente/desconocido) que se selecciona de SNOMED CT."

* bodySite MS
  * ^short = "Ubicación del cuerpo donde se presenta el problema"
* bodySite only CodeableConceptIPS
* bodySite from ConditionBodySite (example)

* subject 1..1 MS
  * reference 1..
* subject only Reference(Paciente-cl-ips)
* onset[x] MS
  * ^short = "Fecha, fecha y hora estimada o real."

* onset[x] only dateTime or Period

* onset[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type[=].extension.valueBoolean = true
* onset[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type[=].extension.valueBoolean = false

