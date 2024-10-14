//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
//Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//Alias: $Device-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips
//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips

Profile: DeclaracionUsoDispositivoClIps
Parent: DeviceUseStatement
Id: Declaracion-uso-dispositivo-cl-ips
Title: "Declaración de uso del dispositivo (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso DeviceUseStatement por la Guía de implementación de FHIR del Resumen Internacional del Paciente Adaptación Chile (IPS-CL). Una declaración sobre un dispositivo utilizado por el paciente o implantado en él se describe en el resumen del paciente como una instancia de un recurso DeviceUseStatement restringido por este perfil."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Hl7 Chile"
* ^contact.name = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
//* ^purpose = "Este perfil restringe la representación de una declaración sobre un dispositivo médico utilizado o implantado en el paciente, parte de la sección \"Dispositivos médicos\" del recurso Composición que representa el resumen internacional del paciente, según lo especificado por el proyecto IPS de HL7 Chile."

* subject only Reference(Paciente-cl-ips)
* subject MS
* subject ^definition = "Paciente que utiliza el dispositivo."
* subject.reference 1.. MS

* timing[x] 1.. MS
* timing[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* timing[x].extension[data-absent-reason] ^definition = "Proporciona una razón por la cual no se encuentra la frecuencia con la que se utilizó el dispositivo."

* device only Reference(Dispositivo-cl-ips)
* device MS

* bodySite only CodeableConceptIPS