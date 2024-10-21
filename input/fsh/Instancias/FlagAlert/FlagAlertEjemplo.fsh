Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct
Alias: flag-priority-code = http://hl7.org/fhir/flag-priority-code
Alias: flag-category = http://terminology.hl7.org/CodeSystem/flag-category

Instance:    FlagAlertEjemplo
InstanceOf:  FlagAlertClIps
Usage:       #example
Title:       "Alerta Paciente- Ejemplo"
Description: "Ejemplo de una alerta sobre un problema  que sufre el paciente"

* language = #es //idioma legible

* extension[flag-priority].url = "http://hl7.org/fhir/StructureDefinition/flag-priority"
* extension[flag-priority].valueCodeableConcept.coding.system = flag-priority-code
* extension[flag-priority].valueCodeableConcept.coding.code = #PH  // se refiere a alta prioridad
* extension[flag-priority].valueCodeableConcept.coding.display = "High priority"

* status = #active //alerta se encuentra activa

* category.coding.system = flag-category
* category.coding.code = #contact
* category.coding.display = "Subject Contact"

* code.coding.system = snomed
* code.coding.code = #370388006
* code.coding.display = "Patient Inmunocompromised" //la alerta se debe a que el paciente es inmunocomprometido

* subject = Reference(PacienteClIpsEjemplo)