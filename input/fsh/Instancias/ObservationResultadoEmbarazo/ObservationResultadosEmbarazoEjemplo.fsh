Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org

Instance:    ObservacionResultadoEmbarazoEjemplo
InstanceOf:  ObservationResultadoEmbarazoClIps
Usage:       #example
Title:       "Observación: Resultado de Embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre un resumen de los resultados de embarazo del paciente"

* status = #final

* code
  * coding = loinc#11640-0 "[#] Births total"
  * text = "[#] Nacimientos totales"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2022-08-18"
* performer = Reference(PrestadorMedFamiliarClIpsEjemplo)

* valueQuantity.value = 1
* valueQuantity.unit = "Hijo"

