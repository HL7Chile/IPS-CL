Instance:    PacienteClIpsEjemplo
InstanceOf:  PacienteCLIps
Usage:       #example
Title:       "Ejemplo de Paciente CL - IPS"
Description: "Ejemplo de paciente según el estándar IPS nacional"

* identifier.use = #official    // Obligado
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"

// Extensión para el País de Emisión del Documento
* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension.valueCodeableConcept.coding.code = #152
* identifier.type.extension.valueCodeableConcept.coding.display = "Chile"

// Definir el sistema y valor del identificador
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "19.241.323-8"


* active = true //Registro activo

//Nombre principal del paciente
//* name.use = #official
//* name.family = "Henriquez"
//* name.given = "Valentina"

//Nombre Oficial
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Henriquez"
//* name[NombreOficial].family.extension[segundoApellido] = SegundoApellidoPacienteCL
* name[NombreOficial].given[0] = "Valentina"
* name[NombreOficial].given[+] = "Ester"
//* name[NombreOficial].given[+] = ""

//nombre social
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Vale"

* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "932785678"

* gender = #female
* birthDate = "1995-05-01"

//Address
* address.use = #home
* address.line[0] = "Av. General Vidaurre, casa 84 G"

// Ciudad (Comuna)
* address.city = "Santiago Centro"

// Extensión de comuna
* address.city.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[0].valueCodeableConcept.coding.code = #13101  // Código para Santiago
* address.city.extension[0].valueCodeableConcept.coding.display = "Santiago Centro"

// Provincia
//* district = "Santiago"
// Extensión de provincia
//* extension[1].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCL"
//* extension[1].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSProvincias"
//* extension[1].valueCodeableConcept.coding.code = "131"  // Código para provincia de Santiago
//* extension[1].valueCodeableConcept.coding.display = "Santiago"

// Región
* address.state = "Metropolitana de Santiago"

// Extensión de región
* address.state.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension[0].valueCodeableConcept.coding.code = #13  // Código para Región Metropolitana
* address.state.extension[0].valueCodeableConcept.coding.display = "Metropolitana de Santiago"

// País
* address.country = "Chile"

// Extensión de país
* address.country.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[0].valueCodeableConcept.coding.code = #152  // Código para Chile
* address.country.extension[0].valueCodeableConcept.coding.display = "Chile"