Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
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

* category
  * coding = flag-category#drug "Drug"
  * text = "Alerta relacionada con la medicación del paciente"

* code.coding.system = snomed
* code.coding.code = #419511003
* code.coding.display = "Propensity to adverse reactions to drug" //la alerta se debe a que el paciente es inmunocomprometido
* code.text = "Paciente propenso a reacciones adversas a medicamentos"

* subject = Reference(PacienteClIpsEjemplo)
