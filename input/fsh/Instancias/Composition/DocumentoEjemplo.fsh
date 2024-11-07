Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSIntent = http://hl7.org/fhir/request-intent

Instance:    Composition-CL-Ejemplo
InstanceOf:  DocumentoClIps
Usage:       #example
Title:       "Composition - Ejemplo"
Description: "Ejemplo sobre un documento clínico que representa un conjunto de datos para el Resumen Internacional de Pacientes (IPS)."

* status = #final

* type
  * coding = loinc#60591-5 "Patient summary Document"
  * text = "Documento resumen del paciente"

* subject = Reference(PacienteClIpsEjemplo)

* date = "2024-05-28" //tiempo de edición del documento

* author = Reference(PrestadorMedInternaClIpsEjemplo)

* title = "International Patient Summary Genérico para uso en Chile"

* custodian = Reference(OrganizationHospital-CL-Ejemplo) //organizacion que mantiene el documento

* relatesTo.code = #appends //este documento agrega informacion adicional al documento de destino

//un OID es un identificador para estándares, en este caso FHIR. los 1ros numeros representan el país, el resto representa una institucion
* relatesTo.targetIdentifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* relatesTo.targetIdentifier.value = "IPS-CL-2024-001"

* section[sectionMedicamentos].title = "Medicamentos"
* section[sectionMedicamentos].code.coding.system = loinc
* section[sectionMedicamentos].code.coding.code = #10160-0
* section[sectionMedicamentos].code.coding.display = "History of Medication use Narrative"
* section[sectionMedicamentos].code.text = "Historial de uso de medicamentos"

* section[sectionMedicamentos].text.status = #generated
* section[sectionMedicamentos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Medication Name</b>: Aspirina (medicamento)</div><div><b>Code</b>: <span>7947003</span></div><div><b>Status</b>: <span>completed, started 2019-02-04</span></div><div>Instructions: Administrar 500 mg por 3 días</div></li></ul></div>"

* section[sectionMedicamentos].entry[listMedicamentos] = Reference(MedicationStatement-CL-Ejemplo)
* section[sectionMedicamentos].entry[prescripciones] = Reference(MedicationRequest-CL-Ejemplo)

* section[sectionAlergias].title = "Alergias"
* section[sectionAlergias].code.coding.system = loinc
* section[sectionAlergias].code.coding.code = #48765-2
* section[sectionAlergias].code.coding.display = "Allergies and adverse reactions Document"
* section[sectionAlergias].code.text = "Documento de alergias y reacciones adversas"

* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Allergy Name</b>: Hierro y Clotrimazol</div><div><b>Verification Status</b>: Confirmado</div><div><b>Reaction</b>: <span>Gastritis y Dermatitis inflamatoria</span></div></li></ul></div>"

* section[sectionAlergias].entry[alergias] = Reference(Alergia-CL-Ejemplo)

* section[sectionProblemas].title = "Problemas de salud - Condiciones"
* section[sectionProblemas].code.coding.system = loinc
* section[sectionProblemas].code.coding.code = #11450-4
* section[sectionProblemas].code.coding.display = "Problem list - Reported"
* section[sectionProblemas].code.text = "Lista de problemas"

* section[sectionProblemas].text.status = #generated
* section[sectionProblemas].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Condition Name</b>: Faringitis viral</div><div><b>Code</b>: <span>1532007</span></div><div><b>Status</b>: <span>Inactiva</span></div></li></ul></div>"

* section[sectionProblemas].entry[problema] = Reference(Condition-CL-Ejemplo)
