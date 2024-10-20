Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct

Instance:    AdvanceDirectives-CL-Ejemplo
InstanceOf:  ConsentClIps
Usage:       #example
Title:       "Directivas Avanzadas - Recurso Consent - Ejemplo"
Description: "Ejemplo sobre el consentimiento de un paciente de algo específico."

* status = #inactive

* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy
* scope.coding.display = "Privacy Consent"

* category.coding.system = loinc
* category.coding.code = #59284-0
* category.coding.display = "Consent Document" //en https://hl7.org/fhir/R4/valueset-consent-category.html aparece como "Patient Consent", pero es Consent Document en loinc

* patient = Reference(PacienteClIpsEjemplo)

* dateTime = "2018-03-12"

* verification.verified = true
* verification.verifiedWith = Reference(PacienteClIpsEjemplo)
* verification.verificationDate = "2018-03-12"

* provision.period.start = "2018-03-22"
* provision.period.end = "2018-05-20"