Alias: loinc = http://loinc.org

Instance:    ObservacionFechaEstimadaPartoEjemplo
InstanceOf:  ObservationEmbarazoFechaEstimadaDePartoClIps
Usage:       #example
Title:       "Observación: Fecha Estimada de Parto - Ejemplo"
Description: "Ejemplo de una observación sobre la fecha estimada de parto"

* status = #final

* code
  * coding = loinc#11778-8 "Delivery date Estimated"
  * text = "Fecha estimada de parto"
//* code.coding.system = loinc
//* code.coding.code = #11778-8
//* code.coding.display = "Delivery date Estimated"

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2023-01-20"

* performer = Reference(PrestadorMedFamiliarClIpsEjemplo)

* valueDateTime = "2023-10-02" //corresponde a la fecha estimada de parto segun el prestador
