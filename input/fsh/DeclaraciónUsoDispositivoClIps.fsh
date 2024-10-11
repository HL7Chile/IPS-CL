Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $Device-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips

Profile: DeviceUseStatementUvIps
Parent: DeviceUseStatement
Id: DeviceUseStatement-uv-ips
Title: "Device Use Statement (IPS)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A statement about a device used by or implanted on the patient is described in the patient summary as an instance of a DeviceUseStatement resource constrained by this profile."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
* ^version = "2.0.0-ballot"
* ^status = #active
* ^experimental = false
* ^date = "2024-06-19T10:50:07-05:00"
* ^publisher = "HL7 International / Patient Care"
* ^contact.name = "HL7 International / Patient Care"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001 "World"
* ^purpose = "This profile constrains the representation of a statement about a medical device used by or impanted on the patient, part of the \"Medical Devices\" section of the Composition resource representing the international patient summary, as specified by the IPS project of HL7 International."
* subject only Reference($Patient-uv-ips)
* subject MS
* subject ^definition = "The patient using the device."
* subject.reference 1.. MS
* timing[x] 1.. MS
* timing[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* timing[x].extension[data-absent-reason] ^definition = "Provides a reason why the timing is missing."
* device only Reference($Device-uv-ips)
* device MS
* bodySite only $CodeableConcept-uv-ips