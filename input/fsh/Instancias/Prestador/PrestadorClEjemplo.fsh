Alias: CSTipoIdentificador = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador

Instance:    PrestadorMedInternaClIpsEjemplo
InstanceOf:  PrestadorClIps
Usage:       #example
Title:       "Ejemplo de Prestador Medicina Interna CL - IPS"
Description: "Ejemplo de prestador de medicina interna que atiende al paciente según el estándar IPS nacional"

//Identificación por Cédula Chilena
* identifier[run].use = #official
* identifier[run].value = "17435678-2"
* identifier[run].type.coding.system = CSTipoIdentificador
* identifier[run].type.coding.code = #01
* identifier[run].type.coding.display = "RUN"

//Nombre Prestador
* name.use = #official
* name.family = "Figueroa"
//* family.extension[segundoApellido] = SegundoApellidoPrestadorCL2
* name.given = "Nicolás"
* name.given[1] = "Bastian"

//* telecom.system = #phone
//* telecom.use = #mobile
//* telecom.value = "944323278"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "DrNicolasB@hotmail.com"

* qualification[EspecialidadMedica].identifier.value = "esp"
* qualification[EspecialidadMedica].code.text = "Medicina Interna"

* qualification[Subespecialidad].identifier.value = "subesp"
* qualification[Subespecialidad].code.text = "Cirugía cardiovascular"