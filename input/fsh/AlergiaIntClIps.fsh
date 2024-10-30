Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $abatement-dateTime-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $allergy-intolerance-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips
Alias: $allergy-reaction-snomed-ct-ips-free-set = http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-snomed-ct-ips-free-set


Profile: AlergiaIntClIps
Parent: AlergiaIntCL
Id: AllergiaInt-cl-ips
Title: "Alergias e Intolerancias (IPS-CL)"
Description: "Este perfil restringe el recurso de Alergias e Intolerancias para representar este modelo a nivel nacional"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1 //nivel de madurez del perfil dentro del estándar
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Hl7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

//* extension[abatement-datetime] ^short = "Abatement datetime"
//* extension[abatement-datetime] ^definition = "The date or estimated date that the condition resolved or went into remission."
//* extension contains AbatementDateTimeUvIps named abatement-datetime
* clinicalStatus  only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* clinicalStatus from 	http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)
* verificationStatus only CodeableConceptIPS
  * ^short = "Concept - reference to a terminology or just text"
* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)
//* verificationStatus ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* type MS
* type from 	http://hl7.org/fhir/ValueSet/allergy-intolerance-type (required)
* code ..1 MS
* code only CodeableConceptIPS
  * ^short = "Código Relacionado con la Substancia o condición generada"
* code from AllergyIntoleranceUvIps (preferred)
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(WhoAtcUvIps)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Tipo de Substancia/Producto, condición de alergia o intolerancia."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* patient MS
* patient.reference 1.. MS
* patient only Reference(Paciente-cl-ips)

* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* reaction MS
* reaction.manifestation only CodeableConceptIPS
* reaction.manifestation MS
* reaction.manifestation from  AllergyReactionUvIps (preferred)
* reaction.manifestation ^binding.description = "Código para la manifestación de alergia o reacción de intolerancia del subconjunto SNOMED International Patient Set (IPS) de SNOMED CT (IPS Free Set)."
* reaction.severity MS