Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    Dispositivo-CL-Ejemplo
InstanceOf:  DispositivoClIps
Usage:       #example
Title:       "Dispositivo Médico - Ejemplo"
Description: "Ejemplo sobre el dispositivo médico que utiliza el paciente"

* type.coding.system = snomed
* type.coding.code = #16349000
* type.coding.display = "Orthopedic device"

* manufacturer = "Ortopedia-Care" //fabricante

* patient = Reference(PacienteClIpsEjemplo)