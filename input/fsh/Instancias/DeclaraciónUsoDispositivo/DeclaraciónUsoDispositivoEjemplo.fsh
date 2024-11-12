Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    DeclaracionUsoDispositivo-CL-Ejemplo
InstanceOf:  DeclaracionUsoDispositivoClIps
Usage:       #example
Title:       "Declaración Uso Dispositivo - Ejemplo"
Description: "Ejemplo sobre la declaración de uso de un dispositivo médico"

* status = #completed

* subject = Reference(PacienteClIpsEjemplo)

* timingPeriod.start = "2022-12-20" //Fecha en las que se uso el dispositivo
* timingPeriod.end = "2023-04-03"

* device = Reference(Dispositivo-CL-Ejemplo)

//* bodySite.coding.system = snomed
//* bodySite.coding.code = #1927002
//* bodySite.coding.display = "Left elbow"

* bodySite 
  * coding = snomed#1927002 "Entire left elbow region"
  * text = "Toda región del codo izquierdo"
