ValueSet: PregnancyStatusUvIps
Id: pregnancy-status-uv-ips
Title: "Pregnancy Status - IPS"
Description: """IPS pregnancy status codes value set.  This value set includes codes from SNOMED CT®: 77386006 \|Pregnant\|; 60001007 \|Not pregnant\|; 152231000119106 \|Pregnancy not yet confirmed\|; 146799005 \|Possible pregnancy\|

SNOMED CT® ECL definition:\
77386006 \|Pregnant\| OR 60001007 \|Not pregnant\| OR 152231000119106 \|Pregnancy not yet confirmed\| OR 146799005 \|Possible pregnancy\|"""

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^version = "0.1.0" //Estado de prueba o desarrollo; traduccion en revision
* ^experimental = false
* ^status = #draft
* ^date = "2024-10-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^immutable = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

//* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/display-translation"
//* ^extension[0].extension[0].url = "lang" 
//* ^extension[0].extension[0].valueCode = #es // Código de idioma para español

* SNOMED_CT_INT#77386006 "Pregnant" 
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
  * ^extension[0].extension[0].url = "lang" 
  * ^extension[0].extension[0].valueCode = #es // Código de idioma para español
  * ^extension[0].extension[1].url = "content"
  * ^extension[0].extension[1].valueString = "Embarazada"

* SNOMED_CT_INT#60001007 "Not pregnant"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
  * ^extension[0].extension[0].url = "lang" 
  * ^extension[0].extension[0].valueCode = #es // Código de idioma para español
  * ^extension[0].extension[1].url = "content"
  * ^extension[0].extension[1].valueString = "No Embarazada"

* SNOMED_CT_INT#152231000119106 "Pregnancy not yet confirmed"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
  * ^extension[0].extension[0].url = "lang" 
  * ^extension[0].extension[0].valueCode = #es // Código de idioma para español
  * ^extension[0].extension[1].url = "content"
  * ^extension[0].extension[1].valueString = "Embarazo no confirmado"

* SNOMED_CT_INT#146799005 "Possible pregnancy"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
  * ^extension[0].extension[0].url = "lang" 
  * ^extension[0].extension[0].valueCode = #es // Código de idioma para español
  * ^extension[0].extension[1].url = "content"
  * ^extension[0].extension[1].valueString = "Posible embarazo"