Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSv3 = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: EDQM = http://standardterms.edqm.eu

Instance:    MedicationStatement-CL-Ejemplo
InstanceOf:  RegMedicamentosClIps
Usage:       #example
Title:       "Medication Statement - Ejemplo"
Description: "Ejemplo sobre la declaración de uso de medicación del paciente."

* status = #completed

* medicationReference = Reference(MedicamentoCLEjemplo)
* medicationReference.display = "Pastilla Aspirina"

* subject = Reference(PacienteClIpsEjemplo)

* effectivePeriod.start = "2019-02-04"
* effectivePeriod.end = "2019-02-07"

* dosage.text = "Administrar 500 mg/día"
* dosage.timing.repeat.frequency = 1 //con que frecuencia ocurre el evento: el tratamiento es una vez
* dosage.timing.repeat.period = 3 //con que frecuencia ocurre el evento: un día; seria una vez al día
* dosage.timing.repeat.periodUnit = #d //unidad de medida de la frecuencia

* dosage.doseAndRate.doseQuantity = 500 ucum#mg "mg" //cantidad de medicamento administrado

* dosage.route
  * coding = EDQM#20002500 "Buccal use"
  * text = "Vía de administración bucal"
