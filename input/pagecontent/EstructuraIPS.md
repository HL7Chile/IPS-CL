### Especificaciones del IPS

El IPS está compuesto por las siguientes secciones que se describen a continuación.

<br> 
<div align="left"> 
 <img src="IPS_composition.png" style="width:60%"> <p>Componentes de un IPS (Fuente: International Patient Summary Implementation Guide)</p> 
</div>
<br> 

### Descripción de las secciones

#### Información de la cabecera del documento

La cabecera del documento contiene datos para la identificación de las siguientes secciones:

- Patient, donde se deben indicar datos de identificación del sujeto de atencion.
- Author, donde se deben indicar datos de identificación del presunto autor del documento.
- Attester, donde se deben indicar datos sobre cuándo y quién dio fe de la composición del documento.
- Custodian, donde se debe indicar la organización que mantiene el documento.

#### Alergias e Intolerancias

Esta sección documenta las alergias y/o intolerancias relevantes para un paciente, describiendo el tipo de reacción (por ejemplo, erupción cutánea, anafilaxia, inflamaciones, etc.); indicando preferiblemente los agentes que la causan; y opcionalmente la criticidad y certeza de la alergia.

Como mínimo, debe incluir las alergias y reacciones adversas actuales y las alergias históricas relevantes del paciente. Si no hay información disponible o si no se conocen alergias, debe documentarse en el recurso de referencia de la sección (en el Composition.section.entry).

##### Resúmen de medicación

La sección de resumen de la medicación contiene una descripción de los medicamentos relevantes del paciente para el alcance del resumen del paciente.

El contenido podría informar acerca de:

- Los medicamentos actualmente activos.
- Los medicamentos actuales y pasados considerados relevantes por el médico.
- Las prescripciones o dispensaciones de medicamentos extraídas automáticamente de un registro clínico electrónico regional o nacional.

Sin embargo, en todos estos casos los medicamentos se documentan en el resumen del paciente como "Declaraciones de medicamentos" o "Solicitudes de medicamentos".

Para completar esta sección se debe utilizar una de las siguientes opciones:

- Una entrada que indique que se sabe que el paciente no está tomando ningún medicamento relevante u otra información sobre "ausencia de medicación".
- Una o más entradas que enumeren la medicación relevante del paciente (una entrada por medicación).

#### Listado de problemas

La sección de problemas del IPS enumera y describe los problemas o condiciones clínicas que se está monitoreando actualmente el paciente. Si no hay información sobre los problemas o no hay problemas conocidos, debe documentarse en el recurso de referencia de la sección (en el Composition.section.entry).

#### Historial de procedimientos

La sección Historial de procedimientos contiene una descripción de los procedimientos pasados del paciente que son pertinentes al alcence del IPS.

Por ejemplo, los procedimientos pueden referirse a:
  
1. Procedimiento diagnóstico invasivo: por ejemplo, cateterismo cardíaco, biopsias de tejidos; (los resultados de estos procedimientos se documentan en la sección de resultados).
2. Procedimiento terapéutico: por ejemplo, diálisis, oxigenoterapia, etc
3. Procedimiento quirúrgico: por ejemplo, apendicectomía, cirugía de tiroides, cirguía de hernia umbilical, etc.

#### Inmunizaciones

La sección de inmunizaciones define el estado de inmunización actual de un paciente y el historial de inmunización pertinente que se conoce. El caso de uso principal de esta sección es permitir la comunicación del estado de inmunización de un paciente.

#### Dispositivos médicos

La secicón de dispositivos médicos contiene texto narrativo y entradas codificadas que describen el historial del paciente sobre el uso de dispositivos médicos.

#### Resultados del diagnóstico 

En esta sección se reúnen los resultados de las observaciones pertinentes obtenidas del paciente o de muestras biológicas in vitro del mismo. Estos resultados pueden incluir resultados de laboratorio, patología y radiología.

Esta sección incluye opciones de entrada para realizar observaciones de resultados (usando Observacion-CL) de:

- Laboratorio/Patología
- Radiología

U observaciones referenciadas en DiagnosticReport:

- Reporte-Diagnóstico

#### Directivas anticipadas

La sección de directivas anticipadas contiene una descripción narrativa de las directivas anticipadas del paciente con enlaces a documentos de respaldo y consentimientos.

#### Estado funcional

La sección sobre el estado funcional contiene una descripción narrativa sobre la capacidad del paciente para realizar actos de la vida diaria, incluidas las posibles necesidades del paciente de ser evaluado continuamente por terceros. El estado de invalidez puede influir en las decisiones sobre cómo administrar los tratamientos. En futuras versionas de esta guía se podrán especificar perfiles para expresar discapacidades y evaluaciones funcionales.

#### Embarazo (resumen del estado y antecedentes)

El estado y la historia del embarazo se componen de:

- Una entrada como Observación del Estado del Embarazo y, opcionalmente, un miembro como Observación de la Fecha Estimada de Parto.

- Una entrada como Observación de la historia del embarazo (resumen.)

#### Plan de cuidados

La sección del plan de cuidados contiene una descripción narrativa de las expectativas de atención, incluidas propuestas, objetivos y solicitudes de órdenes para monitorear, seguir o mejorar la condición del paciente.

#### Signos vitales

La sección de signos vitales incluye la presión arterial, la temperatura corporal, la frecuencia cardíaca y la frecuencia respiratoria. También puede incluir otros hallazgos clínicos, como la altura, el peso, el índice de masa corporal, la circunferencia de la cabeza y la oximetría de pulso. En particular, se pueden incluir signos vitales o hallazgos físicos notables, como los más recientes, máximos y/o mínimos, de referencia o tendencias relevantes.

#### Alertas

La sección de alertas se utiliza para transmitir información y crear conciencia sobre posibles preocupaciones y/o peligros para/del paciente de la IPS.

#### Historial de enfermedades pasadas

La sección Historial de enfermedades pasadas contiene una descripción de las condiciones que sufrió el paciente en el pasado.

#### Historia del paciente

La sección Historia del paciente contiene texto narrativo junto con recursos opcionales que expresan lo que le importa al paciente. Esto puede incluir necesidades, fortalezas, valores, inquietudes y preferencias con respecto a otras personas que brindan apoyo y atención. Se puede utilizar cualquier tipo de recurso para respaldar la narración.

#### Historia social

La sección Historia social se compone de las siguientes entradas:

- Uso de tabaco.
- Consumo de alcohol.

### Lista de Perfiles

Los perfiles que se han definido para esta guía de implementación se enumeran <a href="artifacts.html">aquí</a>.

A continuación se muestran los perfiles que se han definido para cada sección:
* (R) denota una sección obligatoria (es decir, debe estar presente en el documento IPS).
* (S) denota una sección recomendada.
* El resto de las secciones son opcionales.

- Alergias e Intolerancias (R)
  [ <a href="StructureDefinition-AllergiaInt-cl-ips.html">Alergias e Intolerancias (IPS-CL)</a> ]

- Resumen de medicación (R)
  [ <a href="StructureDefinition-RegMedicamentos-cl-ips.html">Declaración de medicación (IPS-CL)</a> |
  <a href="StructureDefinition-MedicationRequest-cl-ips.html">Solicitud de medicación (IPS-CL)</a> |
  <a href="StructureDefinition-Medicamento-cl-ips.html">Medicamento (IPS-CL)</a> ]

- Listado de problemas (R)
  [ <a href="StructureDefinition-Condition-cl-ips.html">Condición (IPS-CL)</a> ]

- Historial de procedimientos (S)
  [ <a href="StructureDefinition-Procedimientos-cl-ips.html">Procedimientos (IPS-CL)</a> | 
  <a href="StructureDefinition-Dispositivo-observador-cl-ips.html">Dispositivo - Ejecutante, Observador (IPS-CL)</a> ]

- Inmunizaciones (S)
  [ <a href="StructureDefinition-Inmunizacion-cl-ips.html">Immunización (IPS-CL)</a> ]

- Dispositivos médicos (S)
  [ <a href="StructureDefinition-Declaracion-uso-dispositivo-cl-ips.html">Declaración de uso del dispositivo (IPS-CL)</a> |
  <a href="StructureDefinition-Dispositivo-cl-ips.html">Dispositivo (IPS-CL)</a> ]

- Resultados de diagnóstico(S)
  [ <a href="StructureDefinition-DiagnosticReport-cl-ips.html">Reporte Diagnóstico (IPS-CL)</a> ]
  - Resultados de Laboratorio/Patología
    [ <a href="StructureDefinition-Observation-resultado-laboratorio-patologico-cl-ips.html">Observación Resultado: Laboratorio/Patología (IPS-CL)</a> |
    <a href="StructureDefinition-Speciment-cl-ips.html">Muestra (IPS-CL)</a> ]
  - Resultados de Radiología/Imagenología
    [ <a href="StructureDefinition-Observation-resultado-radiology-cl-ips.html">Observación Resultado: Imagenológico (IPS-CL)</a> |
    <a href="StructureDefinition-Dispositivo-observador-cl-ips.html">Dispositivo - Ejecutante, Observador (IPS-CL)</a> |
    <a href="StructureDefinition-ImagingStudy-cl-ips.html">Estudio de Imagenología (IPS-Cl)</a> ]

- Directivas avanzadas
  [ <a href="{{site.data.fhir.path}}consent.html">Consent</a> ]

- Estado funcional (Autonomía/Invalidez)
  [ <a href="StructureDefinition-Condition-cl-ips.html">Condición (IPS-CL)</a> |
  <a href="{{site.data.fhir.path}}clinicalimpression.html">Clinical Impression</a> ]

- Embarazo (resumen del estado y antecedentes)
  [ <a href="StructureDefinition-Observation-embarazo-fecha-estimada-de-parto-cl-ips.html">Observación - Embarazo: Fecha Estimada de Parto (IPS-CL)</a> |
  <a href="StructureDefinition-Observation-resultado-del-embarazo-cl-ips.html">Observación - Embarazo: Resultados (IPS-CL)</a> |
  <a href="StructureDefinition-Observation-estado-del-embarazo-cl-ips.html">Observación - Embarazo: Estado (IPS-CL)</a> ]

- Plan de cuidado
  [ <a href="{{site.data.fhir.path}}careplan.html">Care Plan</a> ]

- Signos vitales
  [ <a href="{{site.data.fhir.path}}observation-vitalsigns.html">Vital Signs Profiles</a> ]

- Alertas
  [ <a href="StructureDefinition-Flag-alerta-cl-ips.html">Flag - Alerta (IPS-CL)</a> ]

- Historial de enfermedades pasadas
  [ <a href="StructureDefinition-Condition-cl-ips.html">Condición (IPS-CL)</a> ]

- Historia del paciente
  [ No se requieren recursos específicos. Se puede utilizar cualquiera de ellos para respaldar la narración. ]

- Historia social
  [ <a href="StructureDefinition-Observation-uso-de-tabaco-cl-ips.html">Observación - SH: Uso de tabaco (IPS CL)</a> |
    <a href="StructureDefinition-Observation-uso-de-alcohol-cl-ips.html">Observación - SH: Uso de Alcohol (IPS CL)</a> ]

- Recursos y perfiles utilizados en varias secciones
  [ <a href="StructureDefinition-Organizacion-cl-ips.html">Organización (IPS-CL)</a> | <a href="StructureDefinition-Prestador-cl-ips.html">Prestador Individual (IPS-CL)</a> | <a href="StructureDefinition-RolPrestador-cl-ips.html">Función o Rol de Prestador Individual (IPS-CL)</a> | <a href="{{site.data.fhir.path}}documentreference.html">DocumentReference</a>]