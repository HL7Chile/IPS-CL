Profile: MedicamentoClIps
Parent: CoreMedicamentoCl
Id: Medicamento-cl-ips
Title: "Medicamento (IPS-CL)"
Description: "Este perfil representa las restricciones aplicadas al recurso Medicamento por la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS), basada en FHIR R4. Un medicamento se describe en el resumen del paciente como una instancia de un recurso Medicamento restringido por este perfil."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* code 1..1 MS
* code only CodeableConceptIPS
 
* code from MedicationsUvIps (preferred)
* code ^short = "Medicación administrada o que se iba a administrar (código de medicación de cualquier sistema de códigos)"
//* code ^definition = "Medicación administrada o se iba a administrar. \Se pueden proporcionar varios tipos de codificación de la medicación"
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(WhoAtcUvIps)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Clasificación WHO ATC"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://minsal.cl/term/TFC"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Códigos de medicamentos como extensión SNOMED para uso nacional"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"
* form only CodeableConceptIPS
* form MS
* form from MedicineDoseFormUvIps (preferred)
  * ^short = "Describe la forma del producto: Polvo, cápsula, comprimido, etc."
* ingredient MS
* ingredient.item[x] only CodeableConceptIPS or Reference(Substance or Medication)
* ingredient.item[x] MS
* ingredient.item[x] from MedicationsUvIps (preferred)
//* ingredient.item[x] ^comment = "The IDMP ISO 11238 standard addresses the identification and exchange of regulated information on substances. \r\nThe Global Ingredient Archival System (GInAS) will provide a common global identifier for all of the substances used in medicinal products, providing a definition of substances globally consistent with this standard.\r\nThose identifiers however are yet available for concrete usage, therefore in this version of the template, SNOMED CT has been chosen as reference terminology also for the active substances.\r\nThis choice will be revised based on the availability and the maturity of GInAS."
* ingredient.item[x] ^binding.description = "SNOMED CT drogas/substancias"
* ingredient.strength only RatioIPS
* ingredient.strength MS
  * ^short = "Una proporción de dos valores de Cantidad: un numerador y un denominador"