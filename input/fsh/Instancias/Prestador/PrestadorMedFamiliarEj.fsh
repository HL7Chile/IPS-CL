Alias: CSTipoIdentificador = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador

Instance:    PrestadorMedFamiliarClIpsEjemplo
InstanceOf:  PrestadorClIps
Usage:       #example
Title:       "Ejemplo de Prestador Medicina Familiar CL - IPS"
Description: "Ejemplo de prestador de medicina familiar que atiende al paciente según el estándar IPS nacional"

//Identificación por Cédula Chilena
* identifier[run].use = #official
* identifier[run].value = "12829325-k"
* identifier[run].type.coding.system = CSTipoIdentificador
* identifier[run].type.coding.code = #01
* identifier[run].type.coding.display = "RUN"

//Nombre Prestador
* name.use = #official
* name.family = "Donoso"
//* family.extension[segundoApellido] = SegundoApellidoPrestadorCL2
* name.given = "Catalina"
* name.given[1] = "Alexandra"

//* telecom.system = #phone
//* telecom.use = #mobile
//* telecom.value = "944323278"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "DraCatalinaAle@hotmail.com"

* qualification[EspecialidadMedica].identifier.value = "esp"
* qualification[EspecialidadMedica].code.text = "Medicina Familiar"
