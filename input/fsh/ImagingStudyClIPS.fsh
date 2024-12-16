Profile: ImagingStudyClIps
Parent: ImagingStudy
Id: ImagingStudy-cl-ips
Title: "Estudio de Imagenología (IPS-Cl)"
Description: "Estudio de imagenología realizado a un paciente, del cual se obtiene despues una observación para un reporte diagnóstico"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificadores para todo el estudio"
* subject 1..1 MS
  * ^short = "¿Quién o qué es el sujeto del estudio?"
  * reference 1..1 MS
    * ^short = "Referencia literal, interna o url absoluta"
* subject only Reference(Paciente-cl-ips)
  
* started MS
  * ^short = "Cuando se inició el estudio"
* procedureCode MS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* procedureCode only CodeableConceptIPS
* procedureCode from ResultsRadiologyObservationUvIps (extensible)
* reasonCode MS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* reasonCode only CodeableConceptIPS
* series MS
  * ^short = "Cada estudio tiene una o más series de instancias"
  * uid MS
    * ^short = "UID de instancia de serie DICOM para la serie"
  * modality MS
    * ^short = "La modalidad de las instancias de la serie"
  * instance MS
    * ^short = "Una única instancia de SOP de la serie"
    * uid MS
      * ^short = "UID de instancia de DICOM SOP"
    * sopClass MS
      * ^short = "Tipo de clase DICOM"