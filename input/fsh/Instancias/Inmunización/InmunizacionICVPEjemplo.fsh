Instance: Ejemplo-Inmunizacion-ICVP-FA
InstanceOf: InmunizacionClICVPIps
Usage: #example
Title: "Ejemplo de Inmunización ICVP - Fiebre Amarilla"
Description: "Ejemplo de Inmunización conforme al perfil InmunizacionClICVPIps para certificación internacional de fiebre amarilla."

// Ajusta esta URL a la canonical real de tu IG
* meta.profile[0] = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Inmunizacion-cl-ips-icvp"

// Estado de la inmunización
* status = #completed

// vaccineCode: debe pertenecer a http://smart.who.int/icvp/ValueSet/ICVPVaccineType
// Usamos el código real 'YellowFever' del CodeSystem PreQualVaccineType
* vaccineCode.coding[0].system = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType"
* vaccineCode.coding[0].code = #YellowFever
* vaccineCode.coding[0].display = "Yellow Fever"
* vaccineCode.text = "Vacuna contra fiebre amarilla"

// Extensión ProductID: value[x] only Coding, from ICVPProductIds (required)
// Usamos un código real del ValueSet ICVPProductIds (producto de vacuna de fiebre amarilla)
* extension[productID].valueCoding.system = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds"
* extension[productID].valueCoding.code = #YellowFeverProductd8a09f80301dc05e124f99ffe7711fc0
* extension[productID].valueCoding.display = "01/01/1987Yellow FeverSTAMARILVial + Ampoule10Sanofi PasteurAgence nationale de sécurité du médicament et des produits de santé"

// Paciente (perfil Paciente-cl-ips)
* patient.reference = "Patient/PacienteClIpsEjemplo"
* patient.type = "Patient"
* patient.display = "Valentina Henriquez"

// Fecha de administración (occurrence[x] 1..1 MS)
* occurrenceDateTime = "2024-09-25"

// Algunos campos adicionales útiles (opcionales)
* lotNumber = "Lote-FA-2024-001"
* route.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* route.coding[0].code = #IM
* route.coding[0].display = "Injection, intramuscular"

* site.coding[0].system = "http://snomed.info/sct"
* site.coding[0].code = #368208006
* site.coding[0].display = "Left upper arm structure"

* primarySource = true

* performer[0].actor.reference = "Practitioner/PrestadorMedInternaClIpsEjemplo"
* performer[0].actor.display = "Nicolás Bastian Figueroa"