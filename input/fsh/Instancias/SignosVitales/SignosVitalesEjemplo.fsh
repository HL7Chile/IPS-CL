Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    SignosVitales-CL-Ejemplo
InstanceOf:  VitalSignsClIps
Usage:       #example
Title:       "Signos Vitales - Ejemplo"
Description: "Ejemplo de una observación sobre los signos vitales de un paciente."

* status = #registered

* category[VSCat].coding.system = 	"http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = loinc
* code.coding.code = #8867-4
* code.coding.display = "Heart rate" //frecuencia cardiaca

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2024-02-14" //fecha en la que se registró

* valueQuantity.value = 75
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* valueQuantity.unit = "per minute"

//* component.dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/data-absent-reason"
//* component.dataAbsentReason.coding.code = #not-performed	
//* component.dataAbsentReason.coding.display = "Not Performed"