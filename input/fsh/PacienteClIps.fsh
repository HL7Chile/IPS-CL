// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PacienteCLIps
Parent: PacienteCl
Id: Paciente-cl-ips
Title: "Paciente (IPS-CL)"
Description: "Perfil basado en IPS para paciente Chileno."

//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips


* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
* name 1..* MS
* name obeys ips-pat-1
* name ^requirements = "Debe siempre existir un nombre sobre el cual se pueda requerir información del paciente"
* name.text MS
* name.text ^definition = "En caso de no poderse describir adecuadamenre el nombre se puede escribir en este campo de texto como lo interpreta el registrador"
* name.text ^min = 0
* name.family  MS
* name.given MS
* name.given ^min = 0
* telecom MS
* gender MS
* birthDate 1.. MS
* address MS

//* contact.relationship only $CodeableConcept-uv-ips
* generalPractitioner MS

Invariant: ips-pat-1
Description: "Patient.name.given, Patient.name.family o Patient.name.text DEBEN estar presentes"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists()"

/*
Invariant: pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
* severity = #warning
* expression = "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"
*/
