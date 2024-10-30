Instance:    Parametros-CL-Ejemplo
InstanceOf:  ParametrosDeEntradasIPS
Usage:       #example
Title:       "Parametros - Ejemplo"
Description: "Ejemplo sobre los parámetros de entrada para usar la operación Summary como un POST."

* parameter[identifier].name = "identifier"
* parameter[identifier].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN" //identificador del paciente
* parameter[identifier].valueIdentifier.value = "19.241.323-8"

* parameter[profile].name = "profile" //hace referencia al perfil que se encuentra dentro del composition
* parameter[profile].valueUri = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Composition-cl-ips"
