Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    ObservacionEstadoEmbarazoEjemplo
InstanceOf:  ObservationEstadoEmbarazoClIps
Usage:       #example
Title:       "Observación: Estado del embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre el estado del embarazo"

* status = #final

* code
  * coding = loinc#82810-3 "Pregnancy status"
  * text = "Estado de embarazo"
//* code.coding.system = loinc
//* code.coding.code = #82810-3
//* code.coding.display = "Pregnancy status"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2023-01-10"
* performer = Reference(PrestadorMedFamiliarClIpsEjemplo)

* valueCodeableConcept
  * coding = snomed#77386006 "Pregnancy"
  * text = "Embarazada"
//* valueCodeableConcept.coding.system = snomed
//* valueCodeableConcept.coding.code = #77386006
//* valueCodeableConcept.coding.display = "Embarazada"

* hasMember = Reference(ObservacionFechaEstimadaPartoEjemplo)