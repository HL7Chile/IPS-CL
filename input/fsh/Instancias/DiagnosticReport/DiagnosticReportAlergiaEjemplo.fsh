Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSDiag = http://terminology.hl7.org/CodeSystem/v2-0074

Instance:    DiagnosticReportAlergia-CL-Ejemplo
InstanceOf:  DiagnosticReportClIps
Usage:       #example
Title:       "Reporte Alergias (Diagnóstico) - Ejemplo"
Description: "Ejemplo de un reporte de un estudio diagnóstico de las alergias que padece el paciente."

* status = #final //estado del reporte registrado

* category 
  * coding = CSDiag#OTH "Other" //categoria del diagnostico
  * text = "Otra categoría"

* code
  * coding = loinc#10155-0 "History of allergies, reported" //codigo que describe el informe de diagnostico
  * text = "Historial de alergias, reportado"

* subject = Reference(PacienteClIpsEjemplo)
* subject.display = "Este es un reporte de alergias confirmadas por un profesional de la salud y declaradas por el paciente: Clotrimazol"

* effectiveDateTime = "2006-06-10" //periodo relevante para el informe, tiempo en el que se hizo el informe?

//agregar prestador u organizacion para hospital-laboratorio
* performer = Reference(OrganizationHospital-CL-Ejemplo)
* performer.display = "Hospital Dr. Gustavo Fricke"
