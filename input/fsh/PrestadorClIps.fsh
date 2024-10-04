Profile: PrestadorClIps
Parent: PrestadorCL
Id: Prestador-cl-ips
Title: "Prestador Individual (IPS-CL)"
Description: "Este perfil restringe el recurso profesional para representar a un profesional que actúa como observador de resultados expresados."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* name 1.. MS
  * obeys ips-prac-1
* name.family MS
* name.given MS
* telecom MS
* address MS
//* qualification[TituloProfesional]  1..* MS

Invariant: ips-prac-1
Description: "Practitioner.name.given, Practitioner.name.family o Practiioner.name.text DEBEN estar presentes"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists()"