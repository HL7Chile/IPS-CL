Profile: RolPrestadorClIps
Parent: CoreRolClinicoCl
Id: RolPrestador-cl-ips
Title: "Función o Rol de Prestador Individual (IPS-CL)"
Description: "Este perfil restringe el recurso profesional para representar a un profesional que actúa como observador de resultaos expresados"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* practitioner only Reference(Prestador-cl-ips)
* organization MS
* organization only Reference(Organizacion-cl-ips)
* code ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* code only CodeableConceptIPS
* code from HealthcareProfessionalRolesUvIps (preferred)