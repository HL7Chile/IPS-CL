Profile: OrganizacionClIps
Parent: OrganizacionCL
Id: Organizacion-cl-ips
Title: "Organización (IPS-CL)"
Description: "Este perfil restringe el recurso Organización para representar a una organización que actúa como ejecutante u observador para una observación de resultados (laboratorio, patología o imagen), o como ejecutante para un procedimiento."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* name 1.. MS