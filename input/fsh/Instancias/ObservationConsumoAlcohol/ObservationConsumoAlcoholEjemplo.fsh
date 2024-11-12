Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org

Instance:    ObservacionConsumoAlcoholEjemplo
InstanceOf:  ObservationUsoAlcoholClIps
Usage:       #example
Title:       "Observación: Consumo de Alcohol - Ejemplo"
Description: "Ejemplo de una observación sobre el consumo de alcohol del paciente"

* status = #final

* code
  * coding = loinc#74013-4 "Alcoholic drinks per day"
  * text = "Bebidas alcohólicas por día"
//* code.coding.system = loinc
//* code.coding.code = #74013-4
//* code.coding.display = "Alcoholic drinks per day"

* subject = Reference(PacienteClIpsEjemplo)
* effectiveDateTime = "2023-08-10"
* performer = Reference(PrestadorMedFamiliarClIpsEjemplo)

* valueQuantity.value = 2
* valueQuantity.system = ucum
* valueQuantity.code = #d
* valueQuantity.unit = "Copas de vino por día" //2 copas de vino por dia