Profile:     ProcedimientosClIps
Parent:      Procedure
Id:          Procedimientos-cl-ips
Title:       "Procedimientos (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Procedure por el proyecto IPS, el cual especifica una entrada en el Historial de Procedimientos para el resumen internacional del paciente basado en el estándar FHIR R4."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
  * ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* code only CodeableConceptIPS
* code from ProceduresUvIps (preferred)
* subject 1..1 MS
  * ^short = "¿Para quién o para qué grupo es la solicitud de medicación?"
  * reference 1..1 MS
    * ^short = "Referencia literal, interna o url absoluta"
* subject only Reference(Paciente-cl-ips)
* performed[x] 1..1 MS
  * ^short = "Cuando se realizó el procedimiento"
* performed[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* performed[x].extension[data-absent-reason] ^short = "effective[x] razón de no existencia"
* performed[x].extension[data-absent-reason] ^definition = "Indica la razón por la cual la fecha no se encuentra registrada."

* asserter only Reference(PacienteCl or RelatedPerson or PrestadorCL or CoreRolClinicoCl)
* asserter ^short = "Persona que afirma este procedimiento"
* performer
  * actor ^short = "La referencia al profesional"
  * actor only Reference(Paciente-cl-ips or RelatedPerson or  DispositivoObservadorClIps or Prestador-cl-ips or RolPrestador-cl-ips or Organizacion-cl-ips)
  * onBehalfOf only Reference(Organizacion-cl-ips)
  * onBehalfOf ^short = "Organización para la cual actuaba el dispositivo o el profesional"

* bodySite only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o simplemente a un texto"
* bodySite from SNOMEDCTBodyStructures (example)
