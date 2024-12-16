Profile: RegMedicamentosClIps
Parent: MedicationStatement
Id: RegMedicamentos-cl-ips
Title: "Declaración de medicación (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso MedicationStatement según la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS), basada en FHIR R4. Un registro de una declaración de medicación se representa en el resumen del paciente como una instancia de un recurso MedicationStatement restringido por este perfil."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status ^comment = "En IPS el alcance del proyecto impide el uso del concepto entered-in-error"
* medication[x] only CodeableConceptIPS or Reference(Medicamento-cl-ips)
* medication[x] MS
  * ^short = "Medicamento que está tomando"
* medication[x] from MedicationsUvIps (preferred)
* medication[x] ^definition = "Identifica la medicación que se está administrando o el motivo de ausencia o desconocimiento de la medicación. Se trata de un enlace a un recurso que representa los detalles de la medicación o de un simple atributo que contiene un código. Para mejorar la interoperabilidad global se recomienda encarecidamente que se utilice la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."
* medication[x] ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"
* subject only Reference(Paciente-cl-ips)
* subject MS
  * ^short = "Paciente al que se le está declarando la medicación"
* subject.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"
* effective[x] 1..1 MS
  * ^short = "La fecha/hora o el intervalo en que se toma/se tomó/se tomará la medicación"
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] razón de no existencia"
* effective[x].extension[data-absent-reason] ^definition = "Indica la razón por la cual la fecha no se encuentra registrada."
* dosage MS
  * ^short = "Detalles de cómo se toma/se tomaba o debería tomarse la medicación"
* dosage.text MS
  * ^short = "Instrucciones de dosificación en texto libre, por ejemplo: SIG"
* dosage.timing MS
  * ^short = "Cuándo debe administrarse la medicación"
* dosage.route ^short = "Concepto - referencia a una terminología o sólo texto"
* dosage.route only CodeableConceptIPS
* dosage.route from MedicineRouteOfAdministrationUvIps (preferred)
* dosage.route ^binding.description = "Términos estándar EDQM"