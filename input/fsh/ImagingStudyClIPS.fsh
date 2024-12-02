Profile: ImagingStudyClIps
Parent: ImagingStudy
Id: ImagingStudy-cl-ips
Title: "Estudio de Imagenología (IPS-Cl)"
Description: "Estudio de imagenología realizado a un paciente, del cual se obtiene despues una observación para un reporte diagnóstico"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^version = "0.1.0"
* ^publisher = "Hl7 Chile"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
* subject 1..1 MS
* subject only Reference(Paciente-cl-ips)
* started MS
* procedureCode MS
* procedureCode only CodeableConceptIPS
* procedureCode from ResultsRadiologyObservationUvIps (extensible)
* reasonCode MS
* reasonCode only CodeableConceptIPS
* series MS
  * uid MS
  * modality MS
  * instance MS
    * uid MS
    * sopClass MS