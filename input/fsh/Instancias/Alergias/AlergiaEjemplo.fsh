Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
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
  //* coding[0] = snomed#3829006 "Iron"
  * coding = CSAtc#A01AB18 "clotrimazole"
  * text = "Clotrimazol"

* patient = Reference(PacienteClIpsEjemplo) //Para quien es la prescripción de medicacion

* onsetAge.value = 11
* onsetAge.system = ucum
* onsetAge.code = #a
* onsetAge.unit = "años"

* recorder = Reference(PrestadorMedInternaClIpsEjemplo) //es quien registro la alergia

* reaction
  * manifestation
    //* coding[0] = snomed#4556007 "Gastritis (disorder)"
    * coding = snomed#703938007 "Inflammatory dermatosis (disorder)"
    * text = "Dermatitis inflamatoria"

* reaction.severity = #severe
