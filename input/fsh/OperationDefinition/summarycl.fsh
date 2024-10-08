Instance: IpsClSummary
InstanceOf: OperationDefinition
Usage: #definition
Title: "IPS-Cl Summary"
Description: """
Esta operación devuelve un documento IPS en respuesta a una solicitud POST/GET (ver Operaciones FHIR). El documento devuelto **PUEDE** generarse bajo demanda y **DEBERÍA** representar la información más reciente disponible. Esta operación no necesariamente crearía una instancia IPS persistida en el servidor que responde a la solicitud. Cuando se desean registros históricos u otros documentos, esta operación no es adecuada. Para operaciones alternativas y guía sobre la generación de IPS, consulte **IPS Generation and Data Inclusion**.

Generalmente, cuando se conoce el id lógico de un paciente, ese id se utilizaría para solicitar el resumen del paciente desde un servidor FHIR (ver patrón [id] a continuación). Cuando no se conoce, los servidores **PUEDEN** admitir el uso de otros identificadores (ver el parámetro identifier a continuación).

El servidor **DEBE** permitir el uso del perfil del [Documento (IPS-CL)](StructureDefinition-Composition-cl-ips.html).

Está operación nace de la operación [IPS Summary](https://build.fhir.org/ig/HL7/fhir-ips/OperationDefinition-summary.html) pero especificada para el caso de uso nacional de Chile.
"""

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 1
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #draft
* base = "http://hl7.org/fhir/uv/ips/OperationDefinition/summary"
* name = "IpsClSummary"
* status = #draft
* kind = #operation
* date = "2024-10-04"
* code = #summary
* resource = #Patient
* system = false
* type = true
* instance = true
* inputProfile = Canonical(ParametrosDeEntradasIPS)
* outputProfile = Canonical(Bundle-documento-ips-cl)

* parameter[0]
  * name = #identifier
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Cuando no se utiliza el id lógico del paciente, los servidores **PUEDEN** optar por admitir la selección del paciente basada en el identificador proporcionado. A menos que el sistema de identificadores sea desconocido, los solicitantes **DEBERÍAN** incluir tanto el sistema como el valor (por ejemplo, 'identifier=https://standards.digital.health.nz/ns/nhi-id|CNNJ9186') al usar este parámetro."
  * type = #string
  * searchType = #token

* parameter[+]
  * name = #profile
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Se debe especificar un perfil específico para el resumen del paciente. Para el caso de Chile se debe especificar el [Documento (IPS-CL)](StructureDefinition-Composition-cl-ips.html)."
  * type = #uri 

* parameter[+]
  * name = #return
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "El Bundle devuelto es un documento que cumple con el parámetro del perfil de Composición [Documento (IPS-CL)](StructureDefinition-Composition-cl-ips.html)."
  * type = #Bundle

