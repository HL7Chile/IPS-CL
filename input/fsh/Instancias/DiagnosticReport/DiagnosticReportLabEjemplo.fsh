Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSDiag = http://terminology.hl7.org/CodeSystem/v2-0074

Instance:    DiagnosticReportLab-CL-Ejemplo
InstanceOf:  DiagnosticReportClIps
Usage:       #example
Title:       "Reporte Laboratorio (Diagnóstico) - Ejemplo"
Description: "Ejemplo de un reporte de un estudio diagnóstico de alguna enfermedad que padece el paciente."

* status = #final //estado del reporte 

* category 
  * coding = CSDiag#LAB "Laboratory" //categoria del diagnostico
  * text = "Laboratorio"

* code
  * coding = loinc#11502-2 "Laboratory report" //codigo del informe de diagnostico
  * text = "Reporte de laboratorio"

* subject = Reference(PacienteClIpsEjemplo)

* effectiveDateTime = "2015-06-10" //periodo relevante para el informe, tiempo en el que se hizo el informe?

//agregar prestador u organizacion para hospital-laboratorio
* performer = Reference(OrganizationHospital-CL-Ejemplo)
* performer.display = "Hospital Dr. Gustavo Fricke"

* result[observacion-resultados] = Reference(LabPatologia-CL-Ejemplo)
* result.display = "Nivel normal de glucosa en sangre venosa"