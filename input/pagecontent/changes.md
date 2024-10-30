### 0.2.0
- Versión en construción de la guía IPS-CL basado en la guía ClCore 1.9.1 e IPS 2.0.0

- Perfil [AdvanceDirectives](StructureDefinition-Consent-cl-ips.html)
    - Se agrega el perfil Directivas Anticipadas.
    - Se basa en el recurso Consent directamente del estándar ya que el enlace al perfil es el recurso.
    - Se habilita el ejemplo:
      * [Directivas Avanzadas - Recurso Consent - Ejemplo](Consent-AdvanceDirectives-CL-Ejemplo.html)

- Perfil [CarePlan](StructureDefinition-CarePlan-cl-ips.html)
    - Se agrega el perfil CarePlan.
    - Se basa en el recurso CarePlan directamente del estándar ya que el enlace al perfil es  el recurso.

- Los perfiles a continuación contienen lo siguiente:
    - Se modifica la versión del perfil a 0.1.0
    - Se modifica la versión = 2 -> 1
    - Se modifica la canonica de la extension.valueInteger y extension.valueCode a la canonica de HL7 Chile para guías de implementación https://hl7chile.cl/fhir/ig/clips/ImplementationGuide/hl7.fhir.cl.clips
    - Se modifica todo dato de contacto al estándar chileno

- Perfil [DeclaraciónUsoDispositivo](StructureDefinition-Declaracion-uso-dispositivo-cl-ips.html)
    - Se agrega el perfil Declaración de uso del dispositivo
    - Se basa en el recurso DeviceUseStatement
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se modifica la referencia Device-uv-ips a Dispositivo-cl-ips

- Perfil [DispositivoEjecutanteObservador](StructureDefinition-Dispositivo-observador-cl-ips.html)
    - Se agrega el perfil Dispositivo Ejecutante;Observador
    - Se basa en el recurso Device
    - Status se establece como #draft

- Perfil [Dispositivo](StructureDefinition-Dispositivo-cl-ips.html)
    - Se agrega el perfil Dispositivo 
    - Se basa en el recurso Device
    - Status se establece como #draft
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips

- Perfil [FlagAlert](StructureDefinition-Flag-alerta-cl-ips.html)
    - Se agrega el perfil FlagAlert 
    - Se basa en el recurso Flag
    - Status se establece como #draft

- Perfil [ObservationConsumoAlcohol](StructureDefinition-Observation-uso-de-alcohol-cl-ips.html)
    - Se agrega el perfil Observación - Consumo de Alcohol
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de efective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component; se omite por la CoreCl.

- Perfil [ObservationConsumoTabaco](StructureDefinition-Observation-uso-de-tabaco-cl-ips.html)
    - Se agrega el perfil Observación - Consumo de Tabaco
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component; se omite por la CoreCl.

- Perfil [ObservationEstadoEmbarazo](StructureDefinition-Observation-estado-del-embarazo-cl-ips.html)
    - Se agrega el perfil Observación - Estado del Embarazo
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl. 
    - Se modifica la referencia "Observation-pregnancy-edd-uv-ips" a ["Observation-embarazo-fecha-estimada-de-parto-cl-ips"](https://hl7chile.cl/fhir/ig/clips/StructureDefinition/Observation-embarazo-fecha-estimada-de-parto-cl-ips)

- Perfil [ObservationFechaEstimadaParto](StructureDefinition-Observation-embarazo-fecha-estimada-de-parto-cl-ips.html)
    - Se agrega el perfil Observación - Fecha Estimada de Parto
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl.

- Perfil [ObservationResultadoEmbarazo](StructureDefinition-Observation-resultado-del-embarazo-cl-ips.html)
    - Se agrega el perfil Observación - Resultado de Embarazo
    - Se basa en el recurso Observation de la CoreCl
    - Se modifica la referencia Patient-uv-ips a Paciente-cl-ips
    - Se agrega lo siguiente a la extensión de effective[x]:
        - ValueSet $VSdataabsentreason que es requerido
        - El binding description
    - Se modifica el mustSupport del component y de specimen; se omite por la CoreCl.

- Perfil [SignosVitales](StructureDefinition-vitalsigns-cl-ips.html)
    - Se agrega el perfil Signos Vitales
    - Se basa en el perfil Vital Signs proveniente directamente del recurso Observation del estándar FHIR.

