Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu
Alias: muestra = 	http://terminology.hl7.org/CodeSystem/v2-0916

Instance:    SpecimenCLEjemplo
InstanceOf:  SpecimentClIPS
Usage:       #example
Title:       "Muestra - Ejemplo"
Description: "Ejemplo sobre una muestra biológica que se le extrajo al paciente para posteriormente hacer un estudio."

// Corresponde al tipo de muestra biológica; se utiliza translation
* type.coding[0] = snomed#119297000 "Blood specimen"
* type.coding[=].display.extension.extension[0].url = "lang"
* type.coding[=].display.extension.extension[=].valueCode = #es
* type.coding[=].display.extension.extension[+].url = "content"
* type.coding[=].display.extension.extension[=].valueString = "Muestra de sangre"
* type.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* type.text = "Muestra de sangre"

* subject = Reference(PacienteClIpsEjemplo) //Para quien es la prescripción de medicacion

//método de recolección de muestra
* collection.method.coding[0] = snomed#129300006 "Puncture - action"
* collection.method.coding[=].display.extension.extension[0].url = "lang"
* collection.method.coding[=].display.extension.extension[=].valueCode = #es
* collection.method.coding[=].display.extension.extension[+].url = "content"
* collection.method.coding[=].display.extension.extension[=].valueString = "Pinchazo"
* collection.method.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* collection.method.text = "Pinchazo"

// sitio del cuerpo donde se tomó la muestra
* collection
  * bodySite
    * coding = snomed#49852007 "Median cubital vein"
    * text = "Vena cubital media"

//* collection.fastingStatusCodeableConcept.coding = muestra#F "Patient was fasting prior to the procedure."
//* collection.fastingStatusCodeableConcept.text = 

* collection
  * fastingStatusCodeableConcept
    * coding = muestra#F "Patient was fasting prior to the procedure."
    * text = "El paciente estaba en ayunas antes del procedimiento."