Profile: RolPrestadorClIps
Parent: CoreRolClinicoCl
Id: RolPrestador-cl-ips
Title: "Función o Rol de Prestador Individual (IPS-CL)"
Description: "Este perfil restringe el recurso profesional para representar a un profesional que actúa como observador de resultaos expresados"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* practitioner only Reference(Prestador-cl-ips)
* organization MS
* organization only Reference(Organizacion-cl-ips)
* code only CodeableConceptIPS
* code from HealthcareProfessionalRolesUvIps (preferred)