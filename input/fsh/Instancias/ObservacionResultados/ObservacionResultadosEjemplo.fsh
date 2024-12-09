Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSCategory = http://terminology.hl7.org/CodeSystem/observation-category

Instance:    ObservacionResultadoEjemplo
InstanceOf:  ObservationResultsIpsCl
Usage:       #example
Title:       "Observación: Resultado de exámen físico - Ejemplo"
Description: "Ejemplo de una observación sobre un exámen físico realizado al paciente."

* status = #final

* category
  * coding = CSCategory#exam "Exam"
  * text = "Exámen"

* code
  * coding = loinc#10193-1 "Physical findings of Breasts Narrative"
  * text = "Hallazgo físico en senos"

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2023-05-23"

* performer = Reference(Organization-CL-Ejemplo)

* note.text = """
### NOTA: La paciente presentó un pequeño bulto (posible quiste) en la mama derecha. Puede ser benigno; no canceroso.
"""