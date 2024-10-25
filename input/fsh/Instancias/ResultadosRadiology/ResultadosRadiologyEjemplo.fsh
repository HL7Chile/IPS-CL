Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CScategoria = http://terminology.hl7.org/CodeSystem/observation-category
Alias: CSDicom = http://dicom.nema.org/resources/ontology/DCM

Instance:    ResultadoRadiologyCLEjemplo
InstanceOf:  ObservationResultadoRadiologyClIps
Usage:       #example
Title:       "Resultado de Radiología - Ejemplo"
Description: "Ejemplo sobre el resultado de radiología de un paciente."

* partOf = Reference(EstudioImagenologiaCLEjemplo)

* status = #final //Observación completa y no se necesian más acciones

* category.coding.system = CScategoria //categoria de los resultados de radiologia
* category.coding.code = #imaging
* category.coding.display = "Imaging"

* code //tipo de prueba de imagenologia
  * coding = loinc#103284-6	"Portable XR Abdomen 2 Views"
  * text = "Radiografía portátil de abdomen 2 vistas"

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2014-07-09"

* performer = Reference(PrestadorClIpsEjemplo)

* component[observacionTextual]
  * code
    * coding = CSDicom#121069 "Previous Finding"
    * text = "Hallazgo previo"
  * valueString = "Lesión en tejido abdominal e inflamación de estómago."