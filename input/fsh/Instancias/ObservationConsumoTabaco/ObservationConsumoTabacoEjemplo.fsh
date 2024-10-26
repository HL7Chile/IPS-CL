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
* effectiveDateTime = "2023-08-10"
* performer = Reference(PrestadorClIpsEjemplo)

* valueCodeableConcept
  * coding = SNOMED_CT_INT#428041000124106 "Fumador ocasional de tabaco (hallazgo)"
  * text = "Fumador ocasional de tabaco (hallazgo)"
//* valueCodeableConcept.coding.system = snomed
//* valueCodeableConcept.coding.code = #428041000124106
//* valueCodeableConcept.coding.display = "Fumador ocasional de tabaco (hallazgo)"