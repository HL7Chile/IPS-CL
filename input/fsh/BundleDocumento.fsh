Profile: BundleDocumentoIPSCl
Parent: Bundle
Id: Bundle-documento-ips-cl
Title: "Bundle Resumen Clínico"
Description: """
Este perfil representa las restricciones aplicadas al recurso Bundle por la Guía de Implementación FHIR del Resumen Internacional del Paciente (IPS), incluyendo restricciones locales de chile, para ser aplicado a nivel nacional.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips"

* identifier 1..1 MS
  * ^short = "Identificador persistente para el documento"

* type 1..1 MS
  * ^short = "Tipo de Bundle. En este caso es un documento"
* type = #document
* timestamp 1..1 MS
  * ^short = "Fecha y hora de la creación del documento"
* entry 1..* MS
  * ^short = "Entradas del documento"
  * fullUrl 1.. MS
    * ^short = "URI para el recurso"
  * search 0..0
  * request 0..0 
  * response 0..0
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Identificador de tipo de documento"
* entry ^slicing.ordered = false

* entry contains
  composition 1..1 and
  patient 1..1 and
  allergyintolerance 0..* and
  condition 0..* and
  diagnosticreport 0..* and
  imagingstudy 0..* and
  immunization 0..* and
  medicationrequest 0..* and
  medicationstatement 0..* and
  practitioner 0..* and
  practitionerrole 0..* and
  procedimientos 0..* and
  organization 0..* and
  observation-laboratory 0..* and
  observation-radiology 0..* and
  specimen 0..* and
  medication 0..*

* entry[composition]
  * resource 1..1
    * ^short = "Composition del Resumén Internacional de Paciente versión adaptado a Chile"
  * resource only Composition-cl-ips

* entry[patient]
  * resource 1..1
    * ^short = "Información del Demografica del Paciente"
  * resource only Paciente-cl-ips

* entry[allergyintolerance]
  * resource 1..  
    * ^short = "Alergias del Paciente"
  * resource only AllergiaInt-cl-ips

* entry[condition]
  * resource 1..
    * ^short = "Condiciones del Paciente"
  * resource only Condition-cl-ips

* entry[diagnosticreport]
  * resource 1..
    * ^short = "Informes de Diagnostico del Paciente"
  * resource only DiagnosticReport-cl-ips

* entry[imagingstudy]
  * resource 1..
    * ^short = "Estudios de Imagen del Paciente"
  * resource only ImagingStudy-cl-ips

* entry[immunization]
  * resource 1..
    * ^short = "Vacunas e inmunizaciones del Paciente"
  * resource only Inmunizacion-cl-ips

* entry[medicationrequest]
  * resource 1..
    * ^short = "Prescripción de Medicamentos del Paciente"
  * resource only MedicationRequest-cl-ips

* entry[medicationstatement]
  * resource 1..
    * ^short = "Historial de Medicamentos del Paciente"
  * resource only RegMedicamentos-cl-ips

* entry[practitioner]
  * resource 1..
    * ^short = "Profesionales de la Salud"
  * resource only Prestador-cl-ips

* entry[practitionerrole]
  * resource 1..
    * ^short = "Roles de los Profesionales de la Salud"
  * resource only RolPrestador-cl-ips

* entry[procedimientos]
  * resource 1..
    * ^short = "Histotial de procedimientos realizados al paciente"
  * resource only Procedimientos-cl-ips

* entry[organization]
  * resource 1..
    * ^short = "Organizaciones de la Salud"
  * resource only Organizacion-cl-ips

* entry[observation-laboratory]
  * resource 1..
    * ^short = "Resultados de laboratorios o estudios patológicos del Paciente"
  * resource only Observation-resultado-laboratorio-patologico-cl-ips

* entry[observation-radiology]
  * resource 1..
    * ^short = "Observaciones de estudios de imagenes del Paciente"
  * resource only Observation-resultado-radiology-cl-ips

* entry[specimen]
  * resource 1..
    * ^short = "Muestras utilizadas para laboratorio o estudios patológicos del Paciente"
  * resource only Speciment-cl-ips

* entry[medication]
  * resource 1..
    * ^short = "Medicamentos utilizados en registros o prescripciones para el Paciente"
  * resource only Medicamento-cl-ips



