Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $vaccines-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration
Alias: $target-diseases-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/target-diseases-uv-ips

Profile: InmunizacionClIps
Parent: ImmunizationCL
Id: Inmunizacion-cl-ips
Title: "Immunización (IPS-CL)"
Description: """Este perfil representa las restricciones aplicadas al recurso Inmunización por la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS). Un registro de una vacunación se representa en el resumen del paciente como una instancia de un recurso Inmunización restringido por este perfil.

Describe el evento de un paciente al que se le ha administrado una vacuna o un registro de una vacuna notificado por un paciente, un clínico u otra parte."""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Chile"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status MS
* vaccineCode 1..1 MS
* vaccineCode only $CodeableConcept-uv-ips
  * ^short = "Código de la Vacuna que fue administrada o será administrada" 

* vaccineCode ^binding.extension[0].extension[0].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-snomed-ct-ips-free-set"
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Conformidad adicional vinculante con un conjunto de valores de vacunas del conjunto libre SNOMED CT IPS para uso global (en jurisdicciones miembros y no miembros de SNOMED)."
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "Para cuando se prefieran códigos del conjunto libre SNOMED CT IPS"
* vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* vaccineCode ^binding.extension[+].extension[0].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Conformidad adicional vinculante con un conjunto de valores de vacunas del sistema de códigos ATC de la OMS para su uso en contextos jurisdiccionales específicos u otros contextos en los que se prefiera el uso de la terminología ATC."
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "Para cuando se prefiera el sistema de códigos ATC de la OMS"
* vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* vaccineCode ^binding.extension[+].extension[0].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-immunizations-uv-ips"
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Vinculación de conformidad adicional para datos de inmunización \"ausente conocido\" y \"no conocido\".  Este conjunto de valores está destinado a utilizarse como parte de un conjunto de valores combinado junto con uno de los otros conjuntos de valores de  \"vinculación adicional\"."
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "\"known absent\" and \"not known\", for use with other value sets"
* vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* vaccineCode ^binding.description = "El tipo de vacuna para la enfermedad o enfermedades concretas contra las que se ha inmunizado al paciente, o un código para inmunización ausente/desconocida."

* vaccineCode ^binding.extension[0].extension[0].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = "https://hl7chile.cl/fhir/ig/clcore2/ValueSet/VSTiposVacunas"
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Códigos de ejemplo según la referencia nacional para vacunas"
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "Conjunto de códigos para vacunas según la descripción nacional"
* vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* patient only Reference(Paciente-cl-ips)
* patient MS
* patient.reference 1.. MS
* occurrence[x] 1..1 MS
* occurrence[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* occurrence[x].extension[data-absent-reason] ^short = "occurrence[x] razón de la ausencia"
* occurrence[x].extension[data-absent-reason] ^definition = "Razón por la cual existió ausencia."
* site only $CodeableConcept-uv-ips
* site from SNOMEDCTBodyStructures (preferred)
* site ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* site ^binding.extension[=].valueString = "SNOMEDCTBodyStructures"
* route only $CodeableConcept-uv-ips
* route from $medicine-route-of-administration (preferred)
* route ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension[=].valueString = "ImmunizationRoute"
* protocolApplied.targetDisease from $target-diseases-uv-ips (preferred)
* protocolApplied.targetDisease ^short = "Enfermedades prevenibles mediante vacunación"
* protocolApplied.targetDisease ^definition = "La enfermedad concreta contra la que se ha inmunizado al paciente. Los enlaces de conformidad adicionales proporcionados para el uso de este elemento en contextos específicos (jurisdiccionales o de otro tipo) incluyen (estos enlaces se representan en la StructureDefinition como instancias de la extensión [elementdefinition-additionalBinding](http://hl7.org/fhir/tools/StructureDefinition/additional-binding)):\n[targetDiseases-uv-ips](./ValueSet-target-diseases-uv-ips.html)"
* protocolApplied.targetDisease ^binding.extension[0].extension[0].url = "purpose"
* protocolApplied.targetDisease ^binding.extension[=].extension[=].valueCode = #candidate
* protocolApplied.targetDisease ^binding.extension[=].extension[+].url = "valueSet"
* protocolApplied.targetDisease ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/target-diseases-snomed-ct-ips-free-set"
* protocolApplied.targetDisease ^binding.extension[=].extension[+].url = "documentation"
* protocolApplied.targetDisease ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a target diseases value set from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* protocolApplied.targetDisease ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* protocolApplied.targetDisease ^binding.description = "La enfermedad o enfermedades concretas contra las que se ha inmunizado al paciente."