Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: CSDicom = http://dicom.nema.org/resources/ontology/DCM

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

* series.uid = "2.16.124.113543.6003.2588828330.45298.17418.2723805630"

//modalidad del estudio: bajo que tipo de modalidad se hará
* series.modality.system = CSDicom
* series.modality.code = #DX
* series.modality.display = "Digital Radiography"

* series.performer.actor = Reference(OrganizationHospital-CL-Ejemplo)
* series.performer.function = function#CON "consultant" //Funcion del prestador de salud
* series.performer.function.text = "Consultante: Realiza evaluación inicial y recomendaciones"

* series.bodySite.system = snomed //sitio del cuerpo donde se realizó el estudio
* series.bodySite.code = #818983003
* series.bodySite.display = "Abdomen"