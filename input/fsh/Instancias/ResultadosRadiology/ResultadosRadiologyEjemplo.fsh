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

//El slicing se especifica porque el elemento category es un array de codeableconcept (puede repetirse varias veces). se requiere diferenciar la categoria con la cual se va a trabajar
//discriminador = coding.code, lo que permite que la categoria "laboratorio" se identifique por el codigo "imaging"
//un discriminador permite identificar las partes o slices de un elemento. en este caso el discriminador define que se usará para distinguir entre categorias, en este caso el código.
//* category ^slicing.discriminator.type = #value //tipo de dato, en este caso coding.code
//* category ^slicing.discriminator.path = "coding.code"
//* category ^slicing.ordered = false
//* category ^slicing.rules = #open
//* category ^slicing.description = ""
// Inicializamos el primer elemento del array category[0]

//* category[laboratorio].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category" //categoria de los resultados de radiologia
//* category[laboratorio].coding[0].code = #imaging
//* category[laboratorio].coding[0].display = "Imaging"
* category[laboratorio]
  * coding = CScategoria#imaging "Imaging"
  * text = "Imágenes"
  
* code //tipo de prueba de imagenologia
  * coding = loinc#103284-6	"Portable XR Abdomen 2 Views"
  * text = "Radiografía portátil de abdomen 2 vistas"

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2014-07-09"

* performer = Reference(OrganizationHospital-CL-Ejemplo)

* component[observacionTextual]
  * code
    * coding = CSDicom#121069 "Previous Finding"
    * text = "Hallazgo previo"
  * valueString = "Lesión en tejido abdominal e inflamación de estómago."