Profile: SpecimentClIPS
Parent: Specimen 
Id: Specimen-cl-ips
Title: "Muestra (IPS-CL)"
Description: "Muestra por la cual hicieron el estudio"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^version = "0.1.0"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* type 1..1 MS
* type ^short = "Concepto que referencia a una terminología o un texto acorde"
* type only CodeableConceptIPS
* type from ResultsSpecimenTypeUvIps (preferred)

* subject MS
  * ^short = "De que paciente proviene la muestra"
* subject only Reference(PacienteCLIps)
  * reference 1..1
    * ^short = "Referencia literal, interna o url absoluta"

* collection MS
  * ^short = "Detalle de la collección"
  * method ^short = "Concepto que referencia a una terminología o un texto acorde"
  * method only CodeableConceptIPS
  * method from ResultsSpecimenCollectionMethodUvIps (preferred)
  * bodySite only CodeableConceptIPS
  * bodySite ^short = "Concepto que referencia a una terminología o un texto acorde"
  * bodySite from BodySiteUvIps (preferred)
  * fastingStatus[x] ^short = "Si el paciente se abstuvo de alimentos y/o bebidas, y por cuánto tiempo"
  * fastingStatus[x] MS
  * fastingStatus[x] only CodeableConceptIPS or Duration
 
