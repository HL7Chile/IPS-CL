Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: CSAtc = http://www.whocc.no/atc
Alias: EDQM = http://standardterms.edqm.eu

Instance:    ProcedimientoCLEjemplo
InstanceOf:  ProcedimientosClIps
Usage:       #example
Title:       "Procedimiento - Ejemplo"
Description: "Ejemplo sobre un procedimiento al que se somete un paciente."

* status = #completed //el procedimiento ya fue completado

* code
  * coding = snomed#2598006 "Open heart surgery" //procedimiento
  * text = "Cirugía a corazón abierto"

* category //tipo/clasificacion del procedimiento
  * coding = snomed#387713003 "Surgical procedure"
  * text = "Procedimiento quirúrgico"

* subject = Reference(PacienteClIpsEjemplo) //Quien se hizo el procedimiento

* performedDateTime = "2011-06-17" //cuando se hizo el procedimiento

* performer.actor = Reference(PrestadorMedInternaClIpsEjemplo) //quien participó en el procedimiento 

* bodySite //estructura del cuerpo donde se realizó el procedimiento
  * coding = snomed#80891009 "Heart structure"
  * text = "Corazón"