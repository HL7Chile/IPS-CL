### 0.2.0
- Versión en construción de la guía IPS-CL basado en la guía ClCore 1.9.1 e IPS 2.0.0

- Perfil [AdvanceDirectives](StructureDefinition-ConsentClIps.html)
    - Se agrega el perfil Directivas Anticipadas.
    - Se basa en el recurso Consent directamente del estándar ya que el enlace al perfil es el recurso.

- Perfil [CarePlan](StructureDefinition-CarePlanClIps.html)
    - Se agrega el perfil CarePlan.
    - Se basa en el recurso CarePlan directamente del estándar ya que el enlace al perfil es  el recurso.

- Los perfiles a continuación contienen lo siguiente:
    - Se modifica la versión del perfil a 0.1.0
    - Se modifica extension[=].valueInteger = 2 -> extension[=].valueInteger = 1
    - Se modifica la canonica de la extension[=].valueInteger.extension.valueCanonical y extension[=].valueCode.extension.valueCanonical a la canonica de HL7 Chile para guías de implementación https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips
    - Se modifica todo dato de contacto al estándar chileno


- Perfil [DeclaraciónUsoDispositivo](StructureDefinition-DeclaracionUsoDispositivoClIps.html)
    - Se agrega el perfil Declaración de uso del dispositivo
    - Se basa en el recurso DeviceUseStatement
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se modifica la referencia Device-uv-ips a Dispositivo-cl-ips

- Perfil [DispositivoEjecutanteObservador](StructureDefinition-DispositivoObservadorClIps.html)
    - Se agrega el perfil Dispositivo Ejecutante;Observador
    - Se basa en el recurso Device
    - Status se establece como #draft

- Perfil [Dispositivo](StructureDefinition-DispositivoClIps.html)
    - Se agrega el perfil Dispositivo 
    - Se basa en el recurso Device
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips

- Perfil [FlagAlert](StructureDefinition-FlagAlertClIps.html)
    - Se agrega el perfil FlagAlert 
    - Se basa en el recurso Flag
    - Status se establece como #draft

- Perfil [ObservationConsumoAlcohol](StructureDefinition-ObservationUsoAlcoholClIps.html)
    - Se agrega el perfil Observación - Consumo de Alcohol
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
        - effective[x].extension[data-absent-reason].value[x] ^binding.description = ""
    - Se modifica el mustSupport del component; se omite por la CoreCl.

- Perfil [ObservationConsumoTabaco](StructureDefinition-ObservationUsoTabacoClIps.html)
    - Se agrega el perfil Observación - Consumo de Tabaco
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
        - effective[x].extension[data-absent-reason].value[x] ^binding.description = ""
    - Se modifica el mustSupport del component; se omite por la CoreCl.

- Perfil [ObservationEstadoEmbarazo](StructureDefinition-ObservationEstadoEmbarazoClIps.html)
    - Se agrega el perfil Observación - Estado del Embarazo
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
        - effective[x].extension[data-absent-reason].value[x] ^binding.description = ""
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl. 
    - Se modifica la referencia Observation-pregnancy-edd-uv-ips a Observation-embarazo-fecha-estimada-de-parto-cl-ips.

- Perfil [ObservationFechaEstimadaParto](StructureDefinition-ObservationEmbarazoFechaEstimadaDePartoClIps.html)
    - Se agrega el perfil Observación - Fecha Estimada de Parto
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
        - effective[x].extension[data-absent-reason].value[x] ^binding.description = ""
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl.

- Perfil [ObservationResultadoEmbarazo](StructureDefinition-ObservationResultadoEmbarazoClIps.html)
    - Se agrega el perfil Observación - Resultado de Embarazo
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - effective[x].extension[data-absent-reason].value[x] from $VSdataabsentreason (required)
        - effective[x].extension[data-absent-reason].value[x] ^binding.description = ""
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl.

- Perfil [SignosVitales](StructureDefinition-VitalSignsClIps.html)
    - Se agrega el perfil Signos Vitales
    - Se basa en el perfil Vital Signs proveniente directamente del recurso Observation del estándar FHIR.

