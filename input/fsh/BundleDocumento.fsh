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
  device 0..* and
  deviceusestatement 0..* and
  deviceperformerobserver 0..* and //se agrego
  imagingstudy 0..* and
  immunization 0..* and
  medication 0..* and
  medicationrequest 0..* and
  medicationstatement 0..* and
  practitioner 0..* and
  practitionerrole 0..* and
  procedimientos 0..* and
  organization 0..* and
  observation-laboratory 0..* and
  observation-radiology 0..* and
  observation-pregnancy-edd 0..* and
  observation-pregnancy-outcome 0..* and
  observation-pregnancy-status 0..* and
  observation-alcohol-use 0..* and
  observation-tobacco-use 0..* and
  observation-vital-signs 0..* and
  specimen 0..* and
  flag 0..* and
  clinicalimpression 0..* and
  careplan 0..* and
  consent 0..*

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

* entry[device]
  * resource 1..
    * ^short = "Dispositivo utilizado por el Paciente"
  * resource only Dispositivo-cl-ips

* entry[deviceusestatement]
  * resource 1..
    * ^short = "Declaración de uso del dispositivo"
  * resource only Declaracion-uso-dispositivo-cl-ips

* entry[deviceperformerobserver]
  * resource 1..
    * ^short = "Dispositivo en rol de observador o ejecutante"
  * resource only Dispositivo-observador-cl-ips

* entry[imagingstudy]
  * resource 1..
    * ^short = "Estudios de Imagen del Paciente"
  * resource only ImagingStudy-cl-ips

* entry[immunization]
  * resource 1..
    * ^short = "Vacunas e inmunizaciones del Paciente"
  * resource only Inmunizacion-cl-ips

* entry[medication]
  * resource 1..
    * ^short = "Medicamentos utilizados en registros o prescripciones para el Paciente"
  * resource only Medicamento-cl-ips

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

* entry[observation-pregnancy-edd]
  * resource 1..
    * ^short = "Observaciones sobre la fecha estimada de parto"
  * resource only Observation-embarazo-fecha-estimada-de-parto-cl-ips

* entry[observation-pregnancy-outcome]
  * resource 1..
    * ^short = "Observaciones sobre resultados del embarazo"
  * resource only Observation-resultado-del-embarazo-cl-ips

* entry[observation-pregnancy-status]
  * resource 1..
    * ^short = "Observaciones sobre el estado del embarazo"
  * resource only Observation-estado-del-embarazo-cl-ips

* entry[observation-alcohol-use]
  * resource 1..
    * ^short = "Observaciones sobre el consumo de alcohol"
  * resource only Observation-uso-de-alcohol-cl-ips

* entry[observation-tobacco-use]
  * resource 1..
    * ^short = "Observaciones sobre el consumo de tabaco"
  * resource only Observation-uso-de-tabaco-cl-ips

* entry[observation-vital-signs]
  * resource 1..
    * ^short = "Observaciones sobre los signos vitales del paciente"
  * resource only observation-vitalsigns

* entry[specimen]
  * resource 1..
    * ^short = "Muestras utilizadas para laboratorio o estudios patológicos del Paciente"
  * resource only Speciment-cl-ips

* entry[flag]
  * resource 1..
    * ^short = "Alerta específica de IPS"
  * resource only Flag-alerta-cl-ips

* entry[clinicalimpression] //agregado recientemente
  * resource 1..
    * ^short = "Plan de cuidados de un paciente"
  * resource only ClinicalImpression //hace referencia al recurso del estándar

* entry[careplan]
  * resource 1..
    * ^short = "Plan de cuidados de un paciente"
  * resource only CarePlan

* entry[consent]
  * resource 1..
    * ^short = "Voluntades anticipadas de un paciente"
  * resource only Consent




