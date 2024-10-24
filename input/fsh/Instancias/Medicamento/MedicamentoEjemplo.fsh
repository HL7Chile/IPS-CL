Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu

Instance:    MedicamentoCLEjemplo
InstanceOf:  MedicamentoClIps
Usage:       #example
Title:       "Medicamento - Ejemplo"
Description: "Ejemplo sobre un medicamento que utiliza el paciente."

* language = #es

* status = #inactive

* extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/NombreComercial"
* extension.valueString = "Aspirina"

* code.coding[0] = snomed#7947003 "Product containing aspirin (medicinal product)"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #es
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Producto que contiene aspirina (medicamento)"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding[+] = CSAtc#A01AD05 "acetylsalicylic acid"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #es
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Ácido acetilsalicílico"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"

* code.text = "Producto que contiene aspirina (medicamento)"

//* manufacturer = Reference(OrganizationEjemplo...) //laboratorio del medicamento
//* manufacturer.display = "Bayer"

* form
  * coding = EDQM#10323000 "Pastille" //En que forma se proporciona el medicamento, en este caso es en formato pastilla
  * text = "Pastilla"

* ingredient[0]
  * itemCodeableConcept //componente del medicamento
    * coding[0] = snomed#387458008 "Acetylsalicylic acid"
    * text = "Ácido acetilsalicílico"

* ingredient[1]
  * itemCodeableConcept //componente del medicamento
    * coding[0] = snomed#78439009 "Product containing citrate salt"
    * text = "Producto que contiene sal de citrato"

* ingredient[2]
  * itemCodeableConcept //componente del medicamento
    * coding[0] = snomed#420616006 "Sodium carbonate (substance)"
    * text = "Carbonato de sodio"

* ingredient.strength.numerator.value = 500
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = ucum
* ingredient.strength.numerator.code = #mg

* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.system = ucum
* ingredient.strength.denominator.code = #1
* ingredient.strength.denominator.unit = "pastilla"