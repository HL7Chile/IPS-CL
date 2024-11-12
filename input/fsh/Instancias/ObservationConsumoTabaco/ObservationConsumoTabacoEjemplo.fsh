Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    ObservacionConsumoTabacoEjemplo
InstanceOf:  ObservationUsoTabacoClIps
Usage:       #example
Title:       "Observación: Consumo de Tabaco - Ejemplo"
Description: "Ejemplo de una observación sobre el consumo de tabaco del paciente"

* status = #final

* code
  * coding = loinc#72166-2 "Tobacco smoking status"
  * text = "Estado de tabaquismo"
//* code.coding.system = loinc
//* code.coding.code = #72166-2
//* code.coding.display = "Tobacco smoking status"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2020-08-10"
* performer = Reference(PrestadorMedFamiliarClIpsEjemplo)

* valueCodeableConcept
  * coding = snomed#428041000124106 "Occasional tobacco smoker"
  * text = "Fumador ocasional de tabaco"
//* valueCodeableConcept.coding.system = snomed
//* valueCodeableConcept.coding.code = #428041000124106
//* valueCodeableConcept.coding.display = "Fumador ocasional de tabaco (hallazgo)"