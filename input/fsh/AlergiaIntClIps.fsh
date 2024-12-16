Profile: AlergiaIntClIps
Parent: AlergiaIntCL
Id: AllergiaInt-cl-ips
Title: "Alergias e Intolerancias (IPS-CL)"
Description: "Este perfil restringe el recurso de Alergias e Intolerancias para representar este modelo a nivel nacional"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1 //nivel de madurez del perfil dentro del estándar

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* extension contains $allergyintolerance-abatement named abatement 0..1
* extension[abatement] ^short = "Cuando la alergia o intolerancia se resuelve."
* extension[abatement] ^definition = "La fecha o la fecha estimada en que la alergia o intolerancia se resolvió. Esto se denomina \"abatimiento\" debido a las múltiples connotaciones asociadas con el término \"resolución\"."
* extension[abatement] ^comment = "La edad generalmente se utiliza cuando el paciente informa la edad a la que la alergia o intolerancia se resolvió. Si no existe un elemento de abatimiento, se puede usar el clinicalStatus para indicar si la alergia o intolerancia ha sido resuelta o no. Cuando existe abatementString, indica que la alergia o intolerancia ha sido resuelta."

* clinicalStatus  only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
* clinicalStatus from 	http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)
* verificationStatus only CodeableConceptIPS
  * ^short = "Concepto - referencia a una terminología o sólo texto"
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
* patient only Reference(Paciente-cl-ips)
* patient.reference 1.. MS
  * ^short = "Referencia literal, interna o url absoluta"

* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* reaction MS
* reaction.manifestation only CodeableConceptIPS
* reaction.manifestation MS
* reaction.manifestation ^short = "Concepto - referencia a una terminología o sólo texto"
* reaction.manifestation from  AllergyReactionUvIps (preferred)
* reaction.manifestation ^binding.description = "Código para la manifestación de alergia o reacción de intolerancia del subconjunto SNOMED International Patient Set (IPS) de SNOMED CT (IPS Free Set)."
* reaction.severity MS