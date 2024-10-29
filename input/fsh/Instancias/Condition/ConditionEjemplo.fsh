Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CScondition = http://terminology.hl7.org/CodeSystem/condition-clinical

Instance:    Condition-CL-Ejemplo
InstanceOf:  ConditionClIps
Usage:       #example
Title:       "Condición - Ejemplo"
Description: "Ejemplo de una condición que padece el paciente."

* clinicalStatus //estado de la condicion del paciente, en este caso se encuentra inactiva
  * coding = CScondition#inactive "Inactive"
  * text = "Inactiva"

* category //categoria de la condicion, en este caso es un problema
  * coding = loinc#75326-9 "Problem"
  * text = "Problema"

* code //codigo de la condicion clinica
  * coding = snomed#1532007 "Viral pharyngitis"
  * text = "Faringitis viral"

* severity //grado de severidad de la condicion
  * coding = snomed#6736007 "Moderate severity"
  * text = "Moderado"

* bodySite
  * coding = snomed#54066008 "Pharynx"
  * text = "Faringe"

* subject = Reference(PacienteClIpsEjemplo)

* onsetPeriod.start = "2017-08-04" //periodo de inicio de la condicion
* onsetPeriod.end = "2017-08-20" //periodo de termino de la condicion

* asserter = Reference(PrestadorMedInternaClIpsEjemplo)

