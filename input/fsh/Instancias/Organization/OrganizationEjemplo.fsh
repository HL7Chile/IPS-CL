Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: ucum = http://unitsofmeasure.org
Alias: CSCodigoVacunas = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoVacunas
Alias: EDQM = http://standardterms.edqm.eu

Instance:    Organization-CL-Ejemplo
InstanceOf:  OrganizacionClIps
Usage:       #example
Title:       "Organización - Ejemplo"
Description: "Ejemplo sobre la organización."

* identifier.system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc" //Corresponde al sistema en el cual se encuentran registrados los centros de salud vigentes
* identifier.value = "106302" //id del centro de salud (en este caso es el cesfam barón)

* name = "Centro de Salud Familiar Barón"
* alias = "CESFAM Barón"

* telecom.system = #phone //telefono de contacto con la organizacion
* telecom.use = #work
* telecom.value = "800500520"

* address.line = "Calle 2370 Barros Luco"

// Ciudad (Comuna)
* address.city = "Valparaíso"

// Extensión de comuna
* address.city.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[0].valueCodeableConcept.coding.code = #05101  // Código para Valparaíso
* address.city.extension[0].valueCodeableConcept.coding.display = "Valparaíso"

// Región
* address.state = "Valparaíso"

// Extensión de región
* address.state.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension[0].valueCodeableConcept.coding.code = #05  // Código para Valparaíso
* address.state.extension[0].valueCodeableConcept.coding.display = "Valparaíso"

// País
* address.country = "Chile"

// Extensión de país
* address.country.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[0].valueCodeableConcept.coding.code = #152  // Código para Chile
* address.country.extension[0].valueCodeableConcept.coding.display = "Chile"

