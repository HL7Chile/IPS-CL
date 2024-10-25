Alias: loinc = http://loinc.org
Alias: snomed = https://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu
Alias: function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Instance:    EstudioImagenologiaCLEjemplo
InstanceOf:  ImagingStudyClIps
Usage:       #example
Title:       "Estudio de imagenología - Ejemplo"
Description: "Ejemplo sobre el estudio imagenológico de un paciente."

* status = #registered

* subject = Reference(PacienteClIpsEjemplo)

* started = "2014-07-09" //cuando el estudio se realizó

* procedureCode //procedimiento que se realizó
  * coding = loinc#103284-6	 "Portable XR Abdomen 2 Views"
  * text = "Radiografía portátil de abdomen 2 vistas"

* reasonCode //razon por la que se realiza el estudio
  * coding = snomed#2919008 "Nausea, vomiting and diarrhea"
  * text = "Náuseas, vómitos y diarrea."

* series.performer.actor = Reference(PrestadorClIpsEjemplo)
* series.performer.function = function#CON "consultant" //Funcion del prestador de salud
* series.performer.function.text = "Consultante: Realiza evaluaciones y recomendaciones"

* series
  * bodySite //sitio del cuerpo donde se realizó el estudio
    * coding = snomed#818983003 "Abdomen"
    * text = "Abdomen"