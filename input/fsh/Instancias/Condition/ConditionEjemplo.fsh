Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CScondition = http://terminology.hl7.org/CodeSystem/condition-clinical

Instance:    Condition-CL-Ejemplo
InstanceOf:  ConditionClIps
Usage:       #example
Title:       "Condición - Ejemplo"
Description: "Ejemplo de una condición que padece el paciente."

* clinicalStatus //estado de la condicion del paciente, en este caso se encuentra activa
  * coding = CScondition#active "Active"
  * text = "Activa"

* category //categoria de la condicion, en este caso es un problema
  * coding = loinc#75326-9 "Problem"
  * text = "Problema"

* code //codigo de la condicion clinica
  * coding = snomed#1201005 "Benign essential hypertension"
  * text = "Hipertensión esencial benigna"

* severity //grado de severidad de la condicion
  * coding = snomed#6736007 "Moderate severity"
  * text = "Moderado"

* subject = Reference(PacienteClIpsEjemplo)

* onsetPeriod.start = "2023-08-04" //periodo de inicio de la condicion

* asserter = Reference(PrestadorMedInternaClIpsEjemplo)
