Profile: PrestadorClIps
Parent: PrestadorCL
Id: Prestador-cl-ips
Title: "Prestador Individual (IPS-CL)"
Description: "Este perfil restringe el recurso profesional para representar a un profesional que actúa como observador de resultados expresados."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
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