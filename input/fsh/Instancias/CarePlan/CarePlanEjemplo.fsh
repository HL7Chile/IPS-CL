Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSIntent = http://hl7.org/fhir/request-intent

Instance:    CarePlan-CL-Ejemplo
InstanceOf:  CarePlanClIps
Usage:       #example
Title:       "Plan de cuidados - Ejemplo"
Description: "Ejemplo de un plan de cuidados para el paciente."
  
* status = #completed //estado actual del plan

* intent = #plan //código que indice el grado de autoridad asociado con un plan de atención
//La solicitud representa un plan,es decir, establece las acciones recomendadas para el paciente pero no implica una orden directa o que la actividades deban ejecutarse sin confirmacion.

* category
  * coding = snomed#773506001 "Gynecology care plan (record artifact)"
  * text = "Plan de atención ginecológica"

* description = "Este plan contempla el cuidado ginecológico para evaluar el estado del embarazo de la paciente."

* subject = Reference(PacienteClIpsEjemplo)

* period.start = "2023-04-01" //indica cuando el plan debe ser efectivo
* period.end = "2023-09-30"

* author = Reference(Organization-CL-Ejemplo) //responsables designados del plan

* activity.outcomeCodeableConcept.coding = snomed#708571001 "Demonstrates knowledge of who to contact in medical emergency" //Identificacion de resultados
* activity.outcomeCodeableConcept.text = "La paciente demuestra conocimiento de a quién contactar en caso de emergencia médica."

