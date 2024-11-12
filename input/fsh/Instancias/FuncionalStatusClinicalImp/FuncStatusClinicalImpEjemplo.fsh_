Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSIntent = http://hl7.org/fhir/request-intent

Instance:    FuncionalStatusClinicalImpression-CL-Ejemplo
InstanceOf:  FuncionalStatusClinicalImpressionClIps
Usage:       #example
Title:       "Estado funcional: Impresión/Evaluación Clínica - Ejemplo"
Description: "Ejemplo sobre la evaluación clínica del paciente."

* status = #completed

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2006-12-04T13:00:00.000-03:00" //tiempo de la evaluación

* date = "2006-12-04" //fecha en la que se documentó la evaluación

* assessor = Reference(PrestadorMedInternaClIpsEjemplo) //Medico que realizó la evaluación

* summary = "La paciente presenta múltiples inflamaciones en su piel, específicamente manos y brazos, esto posterior a utilizar Clotrimazol en crema. 

Problema: Posible alergia al componente mencionado anteriormente."  //resumen de la evaluación

* prognosisCodeableConcept
  * coding = snomed#60484009 "Conditional prognosis"
  * text = "Pronóstico condicional"

* supportingInfo = Reference(FlagAlertEjemplo) //informacion que respalda la impresion clinica, en este caso es que el paciente presenta reacciones adversas a medicamentos

* investigation.code.text = "Examinación inicial"
* investigation.item.display = "Comezón e inflamación en extremidades superiores."