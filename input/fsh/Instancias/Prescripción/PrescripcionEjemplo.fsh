Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSv3 = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: EDQM = http://standardterms.edqm.eu

Instance:    MedicationRequest-CL-Ejemplo
InstanceOf:  PrescripcionClIps
Usage:       #example
Title:       "Medication Request - Ejemplo"
Description: "Ejemplo sobre la solicitud de medicación relacionada con un paciente. Esta es prescrita por un profesional de salud"

* status = #completed

* intent = #original-order

* medicationReference = Reference(MedicamentoCLEjemplo)
* medicationReference.display = "Pastilla Aspirina"

* subject = Reference(PacienteClIpsEjemplo) //Para quien es la prescripción de medicacion

//Son las instrucciones sobre cómo se debe tomar el medicamento
* dosageInstruction.text = "Administrar 500 mg por 3 días" //instrucciones de dosificacion
* dosageInstruction.timing.repeat.frequency = 1 //Instrucciones: con que frecuencia ocurre el evento: una vez al día
* dosageInstruction.timing.repeat.period = 3 //Instrucciones: con que frecuencia ocurre el evento: día; seria una vez al día por 3 días
* dosageInstruction.timing.repeat.periodUnit = #d //unidad de medida de la frecuencia
* dosageInstruction.doseAndRate.doseQuantity = 500 ucum#mg "mg" //permite definir la dosis y su frecuencia o velocidad de administracion

* dosageInstruction
  * route
    * coding = EDQM#20002500 "Buccal use"
    * text = "Vía de administración bucal"

* dispenseRequest.validityPeriod.start = "2019-02-04" //periodo de validez de la prescripción. fecha en la que es valida la solicitud para dispensacion
* dispenseRequest.validityPeriod.end = "2019-02-05" //periodo de validez de la prescripción. fecha en la que es valida la solicitud para dispensacion