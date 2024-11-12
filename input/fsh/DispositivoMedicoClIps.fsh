//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
//Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//Alias: $medical-devices-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips

Profile: DispositivoClIps
Parent: Device
Id: Dispositivo-cl-ips
Title: "Dispositivo (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Device por la Guía de implementación de FHIR del Resumen Internacional del Paciente Adaptación de Chile (IPS-CL). Un dispositivo utilizado por el paciente o implantado en él se describe como una instancia del recurso Device restringido por este perfil."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^url = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Dispositivo-cl-ips"

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Hl7 Chile"
* ^contact.name = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^purpose = "Este perfil restringe la representación de un dispositivo médico utilizado o implantado en el paciente, en el contexto del resumen internacional del paciente según lo especificado por el proyecto IPS de HL7 Chile."
//* . ^comment = "Este perfil aplica las reglas definidas por HL7 International para representar el UDI en el estándar FHIR, mediante el documento Dispositivos médicos y patrón de identificación única de dispositivos (UDI), versión 1"

* type only CodeableConceptIPS
* type MS
* type from http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips (preferred)
* type ^short = "Tipo de dispositivo."
* type ^binding.description = "Tipo de dispositivo o un código en caso de dispositivo ausente/desconocido."

* patient 1.. MS
* patient only Reference(Paciente-cl-ips)
* patient.reference 1.. MS