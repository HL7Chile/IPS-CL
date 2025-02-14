Profile: ParametrosDeEntradasIPS
Parent: Parameters
Id: Parametros-entradas-ips-cl
Title: "Parametros De Entradas Summary"
Description: "Parámetros de Entradas para usar la operación IPS-Summary de manera POST"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

//* ^version = "0.1.1"
* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* implicitRules 0..0
* parameter.modifierExtension 0..0

* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.description = "Definición de parametros de entradas para usar la operación IPS-Summary"
* parameter ^slicing.ordered = false

* parameter ^short = "Parametros de Entrada"
* parameter contains 
  identifier 0..1 and
  profile 1..1

* parameter[identifier]
  * name 1..1
    * ^short = "Nombre del Parametro"
  * name = "identifier"
  * value[x] only Identifier
  * value[x] 1..1
    * ^short = "Identificador del Paciente"

* parameter[profile]
  * name 1..1
    * ^short = "Nombre del Perfil"
  * name = "profile"
  * value[x] only uri
  * value[x] = Canonical(DocumentoClIps)
  * value[x] 1..1
    * ^short = "Perfil que debe cumplir, para el caso del perfil nacional debe cumplir con el Composition, indicado en está guía"


