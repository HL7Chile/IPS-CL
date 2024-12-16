//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Profile: DispositivoObservadorClIps
Parent: Device
Id: Dispositivo-observador-cl-ips
Title: "Dispositivo - Ejecutante, Observador (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Device por la Guía de implementación de FHIR del Resumen Internacional del Paciente Adaptación Chile (IPS-CL).

Este perfil describe un dispositivo que desempeña el papel de observador o ejecutante."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^publisher = "Hl7 Chile"
* ^contact.name = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador de la instancia"
* manufacturer MS
  * ^short = "Nombre del fabricante del dispositivo"
* modelNumber MS
  * ^short = "El número del modelo para el dispositivo"