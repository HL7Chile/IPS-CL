Alias: loinc = http://loinc.org
Alias: snomed = https://www.snomed.org


Instance:    ObservacionEstadoEmbarazoEjemplo
InstanceOf:  ObservationEstadoEmbarazoClIps
Usage:       #example
Title:       "Observación: Estado del embarazo - Ejemplo"
Description: "Ejemplo de una observación sobre el estado del embarazo"

* status = #final
* code = loinc#82810-3 "Estado del Embarazo"
* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2020-01-10"
//* performer = Reference(EjemploPrestadorCL2)
* valueCodeableConcept = snomed#77386006 "Pregnant"
* hasMember = Reference(Observation/pregnancy-edd-example)