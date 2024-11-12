Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct

Instance:    Dispositivo-CL-Ejemplo
InstanceOf:  DispositivoClIps
Usage:       #example
Title:       "Dispositivo Médico - Ejemplo"
Description: "Ejemplo sobre el dispositivo médico que utiliza el paciente"

* type
  * coding = snomed#16349000 "Orthopedic device" //tipo de dispositivo
  * text = "Dispositivo ortopédico"

* manufacturer = "Ortopedia-Care" //fabricante

* patient = Reference(PacienteClIpsEjemplo)