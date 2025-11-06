
Profile: InmunizacionClICVPIps
Parent: ImmunizationCL
Id: Inmunizacion-cl-ips-icvp
Title: "Inmunización ICVP"
Description: """Este perfil representa las restricciones aplicadas al recurso Inmunización por la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS) orientado a la certificación internacional para fiebre amarilla y polio"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://smart.who.int/icvp/StructureDefinition/Immunization-uv-ips-ICVP"

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* extension contains ProductID named productID 1..1 MS
* extension[productID] ^short = "Identificador del producto de la vacuna según los códigos prequal de la OMS"
* extension[productID] obeys has-an-icvp-vaccine-product-id-code
* status MS
* vaccineCode 1..1 MS
  * ^short = "Código de la Vacuna que fue administrada o será administrada"

* vaccineCode obeys has-an-icvp-vaccine-type
* vaccineCode from ICVPVaccineType (required)

* patient only Reference(Paciente-cl-ips)
* patient MS
* patient.reference 1.. MS
* occurrence[x] 1..1 MS
* occurrence[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* occurrence[x].extension[data-absent-reason] ^short = "occurrence[x] razón de la ausencia"
* occurrence[x].extension[data-absent-reason] ^definition = "Razón por la cual existió ausencia."

Extension: ProductID
Parent: http://smart.who.int/pcmt/StructureDefinition/ProductID
Id: ProductID
Title: "ProductID"
Description: "Id de Producto de Vacuna según catálogo ICVP"
Context: Immunization

* value[x] only Coding
* value[x] from ICVPProductIds (required) 

Invariant: has-an-icvp-vaccine-product-id-code
Description: "Check if there is a business identifier of a vaccine product in the ICVP product catalogue, The ICVP product catalogue consists of vaccines listed in the list of Prequalified Vaccines and the Emergency Use Listing. - https://extranet.who.int/prequal/vaccines/prequalified-vaccines - https://www.who.int/teams/regulation-prequalification/eul In FHIR R6, this could also be a reference to an InventoryItem"
Severity: #error
Expression: ".valueCoding.code.memberOf('http://smart.who.int/icvp/ValueSet/ICVPProductIds')"

Invariant: has-an-icvp-vaccine-type
Description: "Ensure vaccine type is from the prequal vaccine database for ICVP vaccines"
Severity: #error
Expression: "memberOf('http://smart.who.int/icvp/ValueSet/ICVPVaccineType')"