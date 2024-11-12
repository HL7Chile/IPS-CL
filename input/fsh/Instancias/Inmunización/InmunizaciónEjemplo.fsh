Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: ucum = http://unitsofmeasure.org
Alias: CSCodigoVacunas = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoVacunas
Alias: EDQM = http://standardterms.edqm.eu

Instance:    Inmunizacion-CL-Ejemplo
InstanceOf:  InmunizacionClIps
Usage:       #example
Title:       "Inmunización - Ejemplo"
Description: "Ejemplo sobre las inmunizaciones que posee el paciente."

* language = #es

* status = #completed

* vaccineCode.coding[0] = snomed#871765008 "Measles vaccine"
* vaccineCode.coding[=].display.extension.extension[0].url = "lang"
* vaccineCode.coding[=].display.extension.extension[=].valueCode = #es
* vaccineCode.coding[=].display.extension.extension[+].url = "content"
* vaccineCode.coding[=].display.extension.extension[=].valueString = "Vacuna contra el sarampión"
* vaccineCode.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* vaccineCode.coding[+] = CSCodigoVacunas#vacunaSRPTrivMonodos "Vacuna SRP (trivirica) Monodosis"
* vaccineCode.text = "Vacuna contra el sarampión"

* patient = Reference(PacienteClIpsEjemplo) //Para quien es la prescripción de medicacion

* occurrenceDateTime = "2005-04-23"

* site.coding = snomed#368208006 "Left upper arm structure (body structure)"
* site.coding.display.extension.extension[0].url = "lang"
* site.coding.display.extension.extension[=].valueCode = #es
* site.coding.display.extension.extension[+].url = "content"
* site.coding.display.extension.extension[=].valueString = "Brazo izquierdo"
* site.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* site.text = "Brazo izquierdo"

* route.coding = EDQM#20066000 "Subcutaneous use"
* route.coding.display.extension.extension[0].url = "lang"
* route.coding.display.extension.extension[=].valueCode = #es
* route.coding.display.extension.extension[+].url = "content"
* route.coding.display.extension.extension[=].valueString = "Uso subcutáneo"
* route.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* route.text = "Uso subcutáneo"
