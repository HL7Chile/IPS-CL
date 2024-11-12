Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CScategory = http://terminology.hl7.org/CodeSystem/observation-category

Instance:    LabPatologia-CL-Ejemplo
InstanceOf:  ObservationResultadoLaboratorioPatologiaClIps
Usage:       #example
Title:       "Laboratorio Patología - Ejemplo"
Description: "Ejemplo de una observación sobre un resultado proveniente del laboratorio de patología."

* status = #final

* category[laboratorio] //categoria: en este caso es laboratorio
  * coding = CScategory#laboratory "Laboratory"
  * text = "Laboratorio"

* code //hace referencia al codigo de la categoria de laboratorio
  * coding = loinc#100746-7	"Glucose [Moles/volume] in Mixed venous blood"
  * text = "Glucosa en sangre venosa mixta"

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2015-06-04"

* performer = Reference(OrganizationHospital-CL-Ejemplo) //en este caso se referencia a la organizacion, que el hospital es responsable de la observación

* valueQuantity.value = 5.5
* valueQuantity.unit = "[mmol/L]"
* valueQuantity.system = ucum
* valueQuantity.code = #mmol/L

* note.text = "Nivel normal de glucosa en sangre venosa"

