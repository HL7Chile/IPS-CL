Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSv3 = http://terminology.hl7.org/CodeSystem/v3-ActCode

Instance:    AdvanceDirectives-CL-Ejemplo
InstanceOf:  ConsentClIps
Usage:       #example
Title:       "Directivas Avanzadas - Recurso Consent - Ejemplo"
Description: "Ejemplo sobre el consentimiento de un paciente de algo específico."

* status = #inactive

* scope 
  * coding = CSConsent#patient-privacy "Privacy Consent"
  * text = "Consentimiento privado"

//* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
//* scope.coding.code = #patient-privacy
//* scope.coding.display = "Privacy Consent"
* category
  * coding = loinc#59284-0 "Consent Document"
  * text = "Documento de consentimiento"

//* category.coding.system = loinc
//* category.coding.code = #59284-0
//* category.coding.display = "Consent Document" //en https://hl7.org/fhir/R4/valueset-consent-category.html aparece como "Patient Consent", pero es Consent Document en loinc

* patient = Reference(PacienteClIpsEjemplo)

* dateTime = "2018-03-12"

* policyRule.coding.system = CSv3
* policyRule.coding.code = #OPTIN //indica que el paciente da explícitamente su consentimiento para que su información sea usada

* verification.verified = true
* verification.verifiedWith = Reference(PacienteClIpsEjemplo)
* verification.verificationDate = "2018-03-12" //fecha de verificación del consentimiento por parte del paciente

* provision.period.start = "2018-03-22" //fechas en las que el consentimiento estuvo activo
* provision.period.end = "2018-05-20"