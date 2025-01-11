Instance: cl-ips-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement Servidor del Resumen Clínico de Paciente de Chile"
Description: "CapabilityStatement para definir las caracteristicas mínimas del servidor para ver las interacciones posibles"
Usage: #definition

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 1

* version = "0.1.0"
* name = "ClIpsServerCapabilityStatement"
* status = #active
* experimental = false
* date = "2025-11-25T16:30:00-03:00"


* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #application/fhir+xml


* implementationGuide[0] = "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore"
* implementationGuide[1] =  "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"

* rest
  * mode = #server

* rest.documentation = """
El Servidor Cl IPS :

* Permite la creación de resumenes clínicos en base a la operación $summary

"""

* rest.resource[0] //Bundle
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Bundle
  * profile = Canonical(Bundle-documento-ips-cl)
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL

* rest.resource[+] //Composition
  * type = #Composition
  * profile = Canonical(Composition-cl-ips)
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL

* rest.resource[+] //Patient
  * type = #Patient
  * profile = Canonical(Paciente-cl-ips)
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * operation
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * name = "summary"
    * definition = Canonical(IpsClSummary)

* rest.resource[+] //AllergyIntolerance
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * type = #AllergyIntolerance
  * supportedProfile = Canonical(AllergiaInt-cl-ips)
  
* rest.resource[+] //Condition
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * type = #Condition
  * supportedProfile = Canonical(Condition-cl-ips)

* rest.resource[+] //MedicationRequest
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * type = #MedicationRequest
  * supportedProfile = Canonical(MedicationRequest-cl-ips)
  * documentation = "Es posible que algunos sistemas solo admitan Solicitud de medicación o Declaración de medicación"

* rest.resource[+] //MedicationStatement
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * type = #MedicationStatement
  * supportedProfile = Canonical(RegMedicamentos-cl-ips)
  * documentation = "Es posible que algunos sistemas solo admitan Solicitud de medicación o Declaración de medicación"

* rest.resource[+] //CarePlan
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #CarePlan

* rest.resource[+] //ClinicalImpression
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #ClinicalImpression

* rest.resource[+] //Consent
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #Consent

* rest.resource[+] //Device
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #Device
  * supportedProfile = Canonical(Dispositivo-cl-ips)

* rest.resource[+] //DeviceUseStatement
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #DeviceUseStatement
  * supportedProfile = Canonical(Declaracion-uso-dispositivo-cl-ips)

* rest.resource[+] //DocumentReference
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #DocumentReference

* rest.resource[+] //DiagnosticReport
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #DiagnosticReport
  * supportedProfile = Canonical(DiagnosticReport-cl-ips)

* rest.resource[+] //Flag
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #Flag
  * supportedProfile = Canonical(Flag-alerta-cl-ips)

* rest.resource[+] //ImagingStudy
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #ImagingStudy
  * supportedProfile = Canonical(ImagingStudy-cl-ips)

* rest.resource[+] //Immunization
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #Immunization
  * supportedProfile = Canonical(Inmunizacion-cl-ips)

* rest.resource[+] //Medication
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #Medication
  * supportedProfile = Canonical(Medicamento-cl-ips)

* rest.resource[+] //MedicationAdministration
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #MedicationAdministration

* rest.resource[+] //MedicationDispense
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #MedicationDispense

* rest.resource[+] //Observation
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #Observation
  * supportedProfile[0] = Canonical(Observation-embarazo-fecha-estimada-de-parto-cl-ips)
  * supportedProfile[+] = Canonical(Observation-resultado-del-embarazo-cl-ips)
  * supportedProfile[+] = Canonical(Observation-estado-del-embarazo-cl-ips)
  * supportedProfile[+] = Canonical(Observation-uso-de-tabaco-cl-ips)
  * supportedProfile[+] = Canonical(Observation-uso-de-alcohol-cl-ips)
  * supportedProfile[+] = Canonical(Observation-resultado-laboratorio-patologico-cl-ips)
  
* rest.resource[+] //Organization
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Organization
  * supportedProfile = Canonical(Organizacion-cl-ips)

* rest.resource[+] //Practitioner
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Practitioner
  * supportedProfile = Canonical(Prestador-cl-ips)

* rest.resource[+] //PractitionerRole
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #PractitionerRole
  * supportedProfile = Canonical(RolPrestador-cl-ips)

* rest.resource[+] //Procedure
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Procedure
  * supportedProfile = Canonical(Procedimientos-cl-ips)

* rest.resource[+] //RelatedPerson
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * type = #RelatedPerson

* rest.resource[+] //Specimen
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Specimen
  * supportedProfile = Canonical(Specimen-cl-ips)
      