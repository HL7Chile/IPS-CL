Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu
Alias: especialidad = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL

Instance:    RolProfesionalMedInternaCLEjemplo
InstanceOf:  RolPrestadorClIps
Usage:       #example
Title:       "Rol Profesional Medicina Interna - Ejemplo"
Description: "Ejemplo sobre el rol de un profesional de la salud, específicamente de medicina interna."

* practitioner = Reference(PrestadorMedInternaClIpsEjemplo) //hace referencia al prestador de salud

* organization = Reference(OrganizationHospital-CL-Ejemplo) //hace referencia a la organizacion a la que pertenece el prestador

* specialty //Rol que cumple el profesional; especialidad
  * coding = especialidad#30 "Medicina Interna"
  * text = "Medicina Interna"