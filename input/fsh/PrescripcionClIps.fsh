Profile: PrescripcionClIps
Parent: MedicationRequest
Id: MedicationRequest-cl-ips
Title: "Solicitud de medicación (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso MedicationRequest por la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS), basada en FHIR R4. Un registro de una solicitud de medicación se representa en el resumen del paciente como una instancia de un recurso MedicationRequest restringido por este perfil."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status ^comment = "En el alcance de IPS en \"entered-in-error\" no es aceptable"
* medication[x] only CodeableConceptIPS  or Reference(MedicamentoClIps)
* medication[x] MS
  * ^short = "Medicamentos que deben tomarse"
* medication[x] from MedicationsUvIps (preferred)
* medication[x] ^definition = "Identifica la medicación administrada. Puede ser un enlace a un recurso que represente los detalles de la medicación o un simple atributo que contenga un código. Para mejorar la interoperabilidad global, se recomienda encarecidamente utilizar la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."
* medication[x] ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"
* subject only Reference(PacienteCLIps)
* subject MS
  * ^short = "¿Para quién o para qué grupo es la solicitud de medicación?"
  * reference 1..1 MS
    * ^short = "Referencia literal, interna o url absoluta"
* dosageInstruction MS
  * ^short = "Cómo se debe tomar el medicamento"
* dosageInstruction.text MS
  * ^short = "Instrucciones de dosificación en texto libre, p. ej. SIG"
* dosageInstruction.timing MS
  * ^short = "Cuándo se debe administrar la medicación"
* dosageInstruction.route only CodeableConceptIPS 
* dosageInstruction.route from MedicineRouteOfAdministrationUvIps (preferred)
* dosageInstruction.route ^binding.description = "EDQM"
* dosageInstruction.route ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* dispenseRequest.validityPeriod.extension contains DataAbsentReason named data-absent-reason 0..1
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^short = "razón de ausencia del periodo de validez"
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^definition = "Razón por la cual periodo de validez no se encuentra como dato."