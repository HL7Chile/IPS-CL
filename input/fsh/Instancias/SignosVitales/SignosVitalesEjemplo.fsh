Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSObsCat = http://terminology.hl7.org/CodeSystem/observation-category

Instance:    SignosVitales-CL-Ejemplo
InstanceOf:  VitalSignsClIps
Usage:       #example
Title:       "Signos Vitales - Ejemplo"
Description: "Ejemplo de una observación sobre los signos vitales de un paciente."

* status = #registered

* category[VSCat].coding.system = CSObsCat
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = loinc
* code.coding.code = #8867-4
* code.coding.display = "Heart rate" //frecuencia cardiaca

* subject = Reference(PacienteClIpsEjemplo)

* performer = Reference(PrestadorMedInternaClIpsEjemplo)

* effectiveDateTime = "2024-02-14" //fecha en la que se registró

* valueQuantity.value = 75
* valueQuantity.system = ucum
* valueQuantity.code = #/min
* valueQuantity.unit = "por minuto"