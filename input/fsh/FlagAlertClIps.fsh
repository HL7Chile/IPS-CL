//Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
//Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips

Profile: FlagAlertClIps
Parent: Flag
Id: Flag-alerta-cl-ips
Title: "Flag - Alerta (IPS-CL)"
Description: """Este perfil limita el recurso Flag según la Guía de implementación de FHIR del Resumen Internacional del Paciente Adaptación Chile (IPS-CL). Un registro de una alerta se representa en el resumen del paciente como una instancia de un recurso Flag restringido por este perfil. 

Flag se utiliza para transmitir información sobre una alerta específica de una IPS. La información se marca para crear conciencia sobre posibles preocupaciones o peligros para/del sujeto de la IPS. Pone la información en primer plano y puede hacer referencia a otra información del resumen (a través de la extensión supportedInfo), así como también presentar obstáculos para la atención."""

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false

* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* extension contains FlagPriority named flag-priority 0..1 MS

* status = #active (exactly)

* category only CodeableConceptIPS
* category MS
  * ^short = "Concepto - referencia a una terminología o sólo texto"

* code only CodeableConceptIPS
* code MS
  * ^short = "Concepto - referencia a una terminología o sólo texto"