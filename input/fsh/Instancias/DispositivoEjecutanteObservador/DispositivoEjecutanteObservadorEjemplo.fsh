Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    DispositivoEjecutanteObservador-CL-Ejemplo
InstanceOf:  DispositivoObservadorClIps
Usage:       #example
Title:       "Dispositivo - Ejecutante, Observador Ejemplo"
Description: "Ejemplo sobre un dispositivo médico en rol de observador o ejecutante"

* identifier.system = "http://ortopedia.organization/devicesID"
* identifier.value = "2121"

* manufacturer = "Ortopedia-Care"

* deviceName.name = "Férula para codo"
//* deviceName.type.code.system = "http://hl7.org/fhir/device-nametype"
* deviceName.type = #manufacturer-name

* modelNumber = "2.0.1"

* type.coding.system = snomed
* type.coding.code = #16349000
* type.coding.display = "Orthopedic device"