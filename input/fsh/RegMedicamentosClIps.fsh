Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $abatement-dateTime-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $allergy-intolerance-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips
Alias: $allergy-reaction-snomed-ct-ips-free-set = http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-snomed-ct-ips-free-set


Profile: RegMedicamentosClIps
Parent: MedicationStatement
Id: RegMedicamentos-cl-ips
Title: "Medication Statement (IPS-CL)"
Description: "This profile represents the constraints applied to the MedicationStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile."


* status ^comment = "En IPS el alcance del proyecto impide el uso del concepto  entered-in-error ."
* medication[x] only $CodeableConcept-uv-ips or Reference(MedicamentoClIps)
* medication[x] MS
* medication[x] from $medication-snomed-absent-unknown-uv-ips (preferred)
* medication[x] ^definition = "Identifica la medicación que se está administrando o el motivo de ausencia o desconocimiento de la medicación. Se trata de un enlace a un recurso que representa los detalles de la medicación o de un simple atributo que contiene un código. Para mejorar la interoperabilidad global se recomienda encarecidamente que se utilice la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."
* medication[x] ^binding.description = "SNOMED CT medicamentos (Producto farmacéutico / biológico) o un código para medicamento ausente/desconocido"
* subject only Reference(PacienteCLIps)
* subject MS
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x].extension contains DataAbsentReason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] razón de no existencia"
* effective[x].extension[data-absent-reason] ^definition = "Indica la razón por la cual la fecha no se encuentra registrada."
* dosage MS
* dosage.text MS
* dosage.timing MS
* dosage.route only $CodeableConcept-uv-ips
* dosage.route from $medicine-route-of-administration (preferred)
* dosage.route ^binding.description = "Términos estándar EDQM"