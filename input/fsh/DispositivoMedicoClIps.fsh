Profile: DispositivoClIps
Parent: Device
Id: Dispositivo-cl-ips
Title: "Dispositivo (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Device por la Guía de implementación de FHIR del Resumen Internacional del Paciente Adaptación de Chile (IPS-CL). Un dispositivo utilizado por el paciente o implantado en él se describe como una instancia del recurso Device restringido por este perfil."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^purpose = "Este perfil restringe la representación de un dispositivo médico utilizado o implantado en el paciente, en el contexto del resumen internacional del paciente según lo especificado por el proyecto IPS de HL7 Chile."
//* . ^comment = "Este perfil aplica las reglas definidas por HL7 International para representar el UDI en el estándar FHIR, mediante el documento Dispositivos médicos y patrón de identificación única de dispositivos (UDI), versión 1"

* type only CodeableConceptIPS
* type MS
* type from http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips (preferred)
* type ^short = "Tipo de dispositivo."
* type ^binding.description = "Tipo de dispositivo o un código en caso de dispositivo ausente/desconocido."

* patient 1.. MS
  * ^short = "Paciente al que está adherido el dispositivo"
* patient only Reference(Paciente-cl-ips)
* patient.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"