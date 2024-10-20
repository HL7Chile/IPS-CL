Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    ObservacionEstadoEmbarazoEjemplo
InstanceOf:  ObservationEstadoEmbarazoClIps
Usage:       #example
Title:       "Observación: Estado del embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre el estado del embarazo"

* status = #final
//* code = loinc#82810-3 "Pregnancy status"
* code.coding.system = loinc
* code.coding.code = #82810-3
* code.coding.display = "Pregnancy status"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2023-01-10"
* performer = Reference(PrestadorClIpsEjemplo)
//* valueCodeableConcept = snomed#77386006 "Embarazada"
* valueCodeableConcept.coding.system = snomed
* valueCodeableConcept.coding.code = #77386006
* valueCodeableConcept.coding.display = "Embarazada"

* hasMember = Reference(ObservacionFechaEstimadaPartoEjemplo)