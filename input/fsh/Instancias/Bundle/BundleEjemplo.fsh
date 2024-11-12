Alias: loinc = http://loinc.org
Alias: snomed = http://snomed.info/sct
Alias: ucum = http://unitsofmeasure.org
Alias: CSIntent = http://hl7.org/fhir/request-intent
Alias: CSTipoIdentificador = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador
Alias: CSConsent = http://terminology.hl7.org/CodeSystem/consentscope
Alias: CSallergy = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: CSallergyver = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: CSAtc = http://www.whocc.no/atc
Alias: CScondition = http://terminology.hl7.org/CodeSystem/condition-clinical

Instance:    Bundle-CL-Ejemplo
InstanceOf:  BundleDocumentoIPSCl
Usage:       #example
Title:       "Bundle - Ejemplo"
Description: "Ejemplo sobre un documento clínico tipo Bundle que representa el conjunto mínimo de datos para el Resumen Internacional de Pacientes (IPS)."

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Bundle-documento-ips-cl"
* identifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio del documento; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* identifier.value = "IPS-Bundle-2024-001"

* type = #document //Tipo de bundle, en este caso es un documento

* timestamp = "2024-05-30T15:00:00.000-04:00" //instante de tiempo; fecha de creación del documento

//composition
* entry[0].fullUrl = "urn:uuid:debdd403-9c7e-48d0-93c4-71a4ecc89f2f" //URI para identificar el recurso composition dentro del bundle (se generó aleatoreamente)
* entry[=].resource = debdd403-9c7e-48d0-93c4-71a4ecc89f2f
//patient
* entry[+].fullUrl = "urn:uuid:a4104fff-1237-4cc4-8b7e-6c4c235f282a"
* entry[=].resource = a4104fff-1237-4cc4-8b7e-6c4c235f282a
//prestador
* entry[+].fullUrl = "urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc"
* entry[=].resource = 503a0267-1cfd-44cc-a382-e052a78fa5cc
//organizacion
* entry[+].fullUrl = "urn:uuid:e80c16ae-eec7-4ff7-99c4-27e756ace6fa"
* entry[=].resource = e80c16ae-eec7-4ff7-99c4-27e756ace6fa
//Medication Statement
* entry[+].fullUrl = "urn:uuid:f6759f7e-630f-400e-bbe2-c8378fa6a1a5"
* entry[=].resource = f6759f7e-630f-400e-bbe2-c8378fa6a1a5
//Medicamento
* entry[+].fullUrl = "urn:uuid:edbe2197-1ead-44d3-b572-4b26de4fb427"
* entry[=].resource = edbe2197-1ead-44d3-b572-4b26de4fb427
//Alergias
* entry[+].fullUrl = "urn:uuid:4383be84-d431-47e1-85e7-80d995742514"
* entry[=].resource = 4383be84-d431-47e1-85e7-80d995742514
//problemas
* entry[+].fullUrl = "urn:uuid:fd5676b3-0011-49a3-9c21-d1bd8458f350"
* entry[=].resource = fd5676b3-0011-49a3-9c21-d1bd8458f350

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: debdd403-9c7e-48d0-93c4-71a4ecc89f2f
InstanceOf: Composition
Usage: #inline

* status = #final

* type
  * coding = loinc#60591-5 "Patient summary Document"
  * text = "Documento resumen del paciente"

* subject = Reference(urn:uuid:a4104fff-1237-4cc4-8b7e-6c4c235f282a)

* date = "2024-05-28" //tiempo de edición del documento
//prestador
* author = Reference(urn:uuid:503a0267-1cfd-44cc-a382-e052a78fa5cc)

* title = "International Patient Summary Genérico para uso en Chile"
//organizacion
* custodian = Reference(urn:uuid:e80c16ae-eec7-4ff7-99c4-27e756ace6fa) //organizacion que mantiene el documento

* relatesTo.code = #appends //este documento agrega informacion adicional al documento de destino

//un OID es un identificador para estándares, en este caso FHIR. los 1ros numeros representan el país, el resto representa una institucion
* relatesTo.targetIdentifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* relatesTo.targetIdentifier.value = "IPS-CL-2024-001"

* section[0].title = "Medicamentos"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #10160-0
* section[=].code.coding.display = "History of Medication use Narrative"
* section[=].code.text = "Historial de uso de medicamentos"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Medication Name</b>: Aspirina (medicamento)</div><div><b>Code</b>: <span>7947003</span></div><div><b>Status</b>: <span>completed, started 2019-02-04</span></div><div>Instructions: Administrar 500 mg por 3 días</div></li></ul></div>"
* section[=].entry = Reference(urn:uuid:f6759f7e-630f-400e-bbe2-c8378fa6a1a5)

* section[+].title = "Alergias"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #48765-2
* section[=].code.coding.display = "Allergies and adverse reactions Document"
* section[=].code.text = "Documento de alergias y reacciones adversas"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Allergy Name</b>: Hierro y Clotrimazol</div><div><b>Verification Status</b>: Confirmado</div><div><b>Reaction</b>: <span>Gastritis y Dermatitis inflamatoria</span></div></li></ul></div>"
* section[=].entry = Reference(urn:uuid:4383be84-d431-47e1-85e7-80d995742514)

* section[+].title = "Problemas de salud - Condiciones"
* section[=].code.coding.system = loinc
* section[=].code.coding.code = #11450-4
* section[=].code.coding.display = "Problem list - Reported"
* section[=].code.text = "Lista de problemas"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Condition Name</b>: Hipertensión esencial benigna</div><div><b>Code</b>: <span>1201005</span></div><div><b>Status</b>: <span>Activa</span></div></li></ul></div>"
* section[=].entry = Reference(urn:uuid:fd5676b3-0011-49a3-9c21-d1bd8458f350)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 503a0267-1cfd-44cc-a382-e052a78fa5cc
InstanceOf: Practitioner
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Prestador-cl-ips"
//Identificación por Cédula Chilena
* identifier.use = #official
* identifier.value = "17435678-2"
* identifier.type.coding.system = CSTipoIdentificador
* identifier.type.coding.code = #01
* identifier.type.coding.display = "RUN"

//Nombre Prestador
* name.use = #official
* name.family = "Figueroa"
* name.given = "Nicolás"
* name.given[1] = "Bastian"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "DrNicolasB@hotmail.com"

* qualification.identifier.value = "esp"
* qualification.code.text = "Medicina Interna"

* qualification.identifier.value = "subesp"
* qualification.code.text = "Cirugía cardiovascular"
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: e80c16ae-eec7-4ff7-99c4-27e756ace6fa
InstanceOf: Organization
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Organizacion-cl-ips"
* identifier.system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc" //Corresponde al sistema en el cual se encuentran registrados los centros de salud vigentes
* identifier.value = "3271" //id del centro de salud (en este caso es el  hospital)

* name = "Hospital Dr. Gustavo Fricke"
* alias = "Hospital Gustavo Fricke"

* telecom.system = #phone //telefono de contacto con la organizacion
* telecom.use = #work
* telecom.value = "322577571"
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: a4104fff-1237-4cc4-8b7e-6c4c235f282a
InstanceOf: Patient
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Paciente-cl-ips"
* identifier.use = #official    // Obligado
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"

// Extensión para el País de Emisión del Documento
* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension.valueCodeableConcept.coding.code = #152
* identifier.type.extension.valueCodeableConcept.coding.display = "Chile"

// Definir el sistema y valor del identificador
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "19.241.323-8"

* active = true //Registro activo

//Nombre Oficial
* name.use = #official
* name.family = "Henriquez"
* name.given[0] = "Valentina"
* name.given[+] = "Ester"
//* name[NombreOficial].family.extension[segundoApellido]

* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "932785678"

* gender = #female
* birthDate = "1995-05-01"

//Address
* address.use = #home
* address.text = "Av. General Vidaurre, casa 84 G, playa ancha"
* address.line[0] = "Av. General Vidaurre, casa 84 G"

// Ciudad (Comuna)
* address.city = "Santiago Centro"

// Extensión de comuna
* address.city.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[0].valueCodeableConcept.coding.code = #13101  // Código para Santiago
* address.city.extension[0].valueCodeableConcept.coding.display = "Santiago Centro"

// Región
* address.state = "Metropolitana de Santiago"

// Extensión de región
* address.state.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension[0].valueCodeableConcept.coding.code = #13  // Código para Región Metropolitana
* address.state.extension[0].valueCodeableConcept.coding.display = "Metropolitana de Santiago"

// País
* address.country = "Chile"

// Extensión de país
* address.country.extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[0].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[0].valueCodeableConcept.coding.code = #152  // Código para Chile
* address.country.extension[0].valueCodeableConcept.coding.display = "Chile"

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: f6759f7e-630f-400e-bbe2-c8378fa6a1a5
InstanceOf: MedicationStatement
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/RegMedicamentos-cl-ips"

* status = #completed

* medicationReference = Reference(urn:uuid:edbe2197-1ead-44d3-b572-4b26de4fb427)
* medicationReference.display = "Pastilla Aspirina"

* subject = Reference(urn:uuid:a4104fff-1237-4cc4-8b7e-6c4c235f282a)

* effectivePeriod.start = "2019-02-04"
* effectivePeriod.end = "2019-02-07"

* dosage.text = "Administrar 500 mg/día"
* dosage.timing.repeat.frequency = 1 //con que frecuencia ocurre el evento: el tratamiento es una vez
* dosage.timing.repeat.period = 3 //con que frecuencia ocurre el evento: un día; seria una vez al día
* dosage.timing.repeat.periodUnit = #d //unidad de medida de la frecuencia

* dosage.doseAndRate.doseQuantity = 500 ucum#mg "mg" //cantidad de medicamento administrado

* dosage.route
  * coding = EDQM#20002500 "Buccal use"
  * text = "Vía de administración bucal"
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: edbe2197-1ead-44d3-b572-4b26de4fb427
InstanceOf: Medication
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Medicamento-cl-ips"

* extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/NombreComercial"
* extension.valueString = "Aspirina"

* code.coding[0] = snomed#7947003 "Product containing aspirin (medicinal product)"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #es
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Aspirina (medicamento)"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"

* code.text = "Aspirina (medicamento)"

* form
  * coding = EDQM#10323000 "Pastille" //En que forma se proporciona el medicamento, en este caso es en formato pastilla
  * text = "Pastilla"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: 4383be84-d431-47e1-85e7-80d995742514
InstanceOf: AllergyIntolerance
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/AllergiaInt-cl-ips"

* clinicalStatus
  * coding = CSallergy#active "Active"
  * text = "Activo"

* verificationStatus
  * coding = CSallergyver#confirmed "Confirmed"
  * text = "Confirmado"

* type = #allergy

* code
  * coding = CSAtc#A01AB18 "clotrimazole"
  * text = "Clotrimazol"

* patient = Reference(urn:uuid:a4104fff-1237-4cc4-8b7e-6c4c235f282a) //Para quien es la prescripción de medicacion

* onsetAge.value = 11
* onsetAge.system = ucum
* onsetAge.code = #a
* onsetAge.unit = "años"
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: fd5676b3-0011-49a3-9c21-d1bd8458f350
InstanceOf: Condition
Usage: #inline

* meta.profile = "https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Condition-cl-ips"

* clinicalStatus //estado de la condicion del paciente, en este caso se encuentra activa
  * coding = CScondition#active "Active"
  * text = "Activa"

* category //categoria de la condicion, en este caso es un problema
  * coding = loinc#75326-9 "Problem"
  * text = "Problema"

* code //codigo de la condicion clinica
  * coding = snomed#1201005 "Benign essential hypertension"
  * text = "Hipertensión esencial benigna"

* subject = Reference(urn:uuid:a4104fff-1237-4cc4-8b7e-6c4c235f282a)

* onsetPeriod.start = "2023-08-04" //periodo de inicio de la condicion
