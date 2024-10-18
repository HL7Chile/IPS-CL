Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    ObservacionConsumoAlcoholEjemplo
InstanceOf:  ObservationUsoAlcoholClIps
Usage:       #example
Title:       "Observación: Consumo de Alcohol - Ejemplo"
Description: "Ejemplo de una observación sobre el consumo de alcohol del paciente"

* status = #final
* code.coding.system = loinc
* code.coding.code = #74013-4
* code.coding.display = "Alcoholic drinks per day"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2023-08-10"
* performer = Reference(PrestadorClIpsEjemplo)

* valueQuantity.value = 2
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #d
* valueQuantity.unit = "wine glasses per day"