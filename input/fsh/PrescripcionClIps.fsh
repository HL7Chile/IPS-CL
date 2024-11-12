Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $medication-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-snomed-absent-unknown-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

Profile: PrescripcionClIps
Parent: MedicationRequest
Id: MedicationRequest-cl-ips
Title: "Solicitud de medicación (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso MedicationRequest por la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS), basada en FHIR R4. Un registro de una solicitud de medicación se representa en el resumen del paciente como una instancia de un recurso MedicationRequest restringido por este perfil."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status ^comment = "En el alcance de IPS en \"entered-in-error\" no es aceptable"
* medication[x] only CodeableConceptIPS  or Reference(MedicamentoClIps)
* medication[x] MS
* medication[x] from MedicationsUvIps (preferred)
* medication[x] ^definition = "Identifica la medicación administrada. Puede ser un enlace a un recurso que represente los detalles de la medicación o un simple atributo que contenga un código. Para mejorar la interoperabilidad global, se recomienda encarecidamente utilizar la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."
* medication[x] ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"
* subject only Reference(PacienteCLIps)
* subject MS
* subject.reference 1.. MS
* dosageInstruction MS
* dosageInstruction.text MS
* dosageInstruction.timing MS
* dosageInstruction.route only CodeableConceptIPS 
* dosageInstruction.route from MedicineRouteOfAdministrationUvIps (preferred)
* dosageInstruction.route ^binding.description = "EDQM"
* dispenseRequest.validityPeriod.extension contains DataAbsentReason named data-absent-reason 0..1
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^short = "validityPeriod razón de ausencia"
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^definition = "Razón por la cual  validityPeriod no se encuentra como dato."