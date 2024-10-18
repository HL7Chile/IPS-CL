Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    ObservacionConsumoTabacoEjemplo
InstanceOf:  ObservationUsoTabacoClIps
Usage:       #example
Title:       "Observación: Consumo de Tabaco - Ejemplo"
Description: "Ejemplo de una observación sobre el consumo de tabaco del paciente"

* status = #final
* code.coding.system = loinc
* code.coding.code = #72166-2
* code.coding.display = "Tobacco smoking status"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2023-08-10"
* performer = Reference(PrestadorClIpsEjemplo)

* valueCodeableConcept.coding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding.code = #428041000124106
* valueCodeableConcept.coding.display = "Occasional tobacco smoker (finding)"