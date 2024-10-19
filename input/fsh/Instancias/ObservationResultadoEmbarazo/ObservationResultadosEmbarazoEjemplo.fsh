Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    ObservacionResultadoEmbarazoEjemplo
InstanceOf:  ObservationResultadoEmbarazoClIps
Usage:       #example
Title:       "Observación: Resultado de Embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre un resumen de los resultados de embarazo del paciente"

* status = #final
* code.coding.system = loinc
* code.coding.code = #11640-0
* code.coding.display = "[#] Births total"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2022-08-18"
* performer = Reference(PrestadorClIpsEjemplo)

//* valueQuantity.value = 1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1