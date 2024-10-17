Alias: loinc = http://loinc.org

Instance:    ObservacionFechaEstimadaPartoEjemplo
InstanceOf:  ObservationEmbarazoFechaEstimadaDePartoClIps
Usage:       #example
Title:       "Observación: Fecha Estimada de Parto - Ejemplo"
Description: "Ejemplo de una observación sobre la fecha estimada de parto"

* status = #final
//* code = loinc#11778-8 "Fecha Estimada de Parto"
* code.coding.system = loinc
* code.coding.code = #82810-3
* code.coding.display = "Delivery date Estimated"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2020-01-10"
//* performer = Reference(EjemploPrestadorCL2)
* valueDateTime = "2020-08-02"