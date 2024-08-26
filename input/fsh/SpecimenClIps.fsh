Profile: SpecimentClIPS
Parent: Specimen 
Id: Speciment-cl-ips
Title: "Muestra (IPS-CL)"
Description: "Muestra por la cual hicieron el estudio"

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

* type 1..1 MS
* type only CodeableConceptIPS
* type from ResultsSpecimenTypeUvIps (preferred)

* subject MS
* subject only Reference(PacienteCLIps)
  * reference 1..1

* collection MS
  * method only CodeableConceptIPS
  * method from ResultsSpecimenCollectionMethodUvIps (preferred)
  * bodySite only CodeableConceptIPS
  * bodySite from BodySiteUvIps (preferred)
  * fastingStatus[x] MS
  * fastingStatus[x] only CodeableConceptIPS or Duration
 
