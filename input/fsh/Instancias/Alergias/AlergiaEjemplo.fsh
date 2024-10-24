Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSallergy = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: CSallergyver = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: CSAtc = http://www.whocc.no/atc
Alias: ucum = http://unitsofmeasure.org

Instance:    Alergia-CL-Ejemplo
InstanceOf:  AlergiaIntClIps
Usage:       #example
Title:       "Alergias - Ejemplo"
Description: "Ejemplo sobre el padecimiento de una o más alergias por parte del paciente."

* clinicalStatus
  * coding = CSallergy#active "Active"
  * text = "Activo"

* verificationStatus
  * coding = CSallergyver#confirmed "Confirmed"
  * text = "Confirmado"

* code
  * coding[0] = snomed#3829006 "Iron"
  * coding[1] = CSAtc#A01AB18 "clotrimazole"
  * text = "Hierro y Clotrimazol"

* patient = Reference(PacienteClIpsEjemplo) //Para quien es la prescripción de medicacion

* onsetAge.value = 6
* onsetAge.system = ucum
* onsetAge.code = #a
* onsetAge.unit = "años"

//* reaction.manifestation.coding.system =
//* reaction.manifestation.coding.code =
//* reaction.manifestation.coding.display =
* reaction
  * manifestation
    * coding[0] = snomed#4556007 "Gastritis (disorder)"
    * coding[1] = snomed#703938007 "Inflammatory dermatosis (disorder)"
    * text = "Gastritis y Dermatitis inflamatoria"