Profile:     ProcedimientosClIps
Parent:      Procedure
Id:          Procedimientos-cl-ips
Title:       "Procedimientos (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Procedure por el proyecto IPS, el cual especifica una entrada en el Historial de Procedimientos para el resumen internacional del paciente basado en el estándar FHIR R4."

* code 1..1 MS
* code only CodeableConceptIPS
* code from ProceduresUvIps (preferred)
* subject 1..1 MS
  * reference 1..1 MS
* subject only Reference(Paciente-cl-ips)
* performed[x] 1..1 MS
* performed[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* performed[x].extension[data-absent-reason] ^short = "effective[x] razón de no existencia"
* performed[x].extension[data-absent-reason] ^definition = "Indica la razón por la cual la fecha no se encuentra registrada."

* asserter only Reference(PacienteCl or RelatedPerson or PrestadorCL or CoreRolClinicoCl)
* performer
  * actor only Reference(Paciente-cl-ips or RelatedPerson or  DispositivoObservadorClIps or Prestador-cl-ips or RolPrestador-cl-ips or Organizacion-cl-ips)
  * onBehalfOf only Reference(Organizacion-cl-ips)

* bodySite only CodeableConceptIPS
* bodySite from SNOMEDCTBodyStructures (example)
