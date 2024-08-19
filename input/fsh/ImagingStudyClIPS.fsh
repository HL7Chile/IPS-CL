Profile: ImagingStudyClIps
Parent: ImagingStudy
Id: ImagingStudy-cl-ips
Title: "Estudio de Imagenología (IPS-Cl)"
Description: "Estudio de imagenología realizado a un paciente, del cual se obtiene despues una observación para un reporte diagnóstico"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^version = "0.1.0"
* ^publisher = "Hl7 Chile"
* ^status = #draft
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
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