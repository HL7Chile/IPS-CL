# Estructura de la Guía de Implementación de Resumen de Datos Clínicos de Pacientes IPS-CL

Esta guía de implementación, al momento de ser trabajada, se estableció con la versión 0.2.0. Actualmente se han ido añadiendo cambios a la misma, estableciendola en la versión 0.3.0 "ballot". Esto último significa que, si bien se ha actualizado la guía, aún es una versión que está en fase de revisión y evaluación, lo que permite realizar mejoras sobre ella antes de convertirse en oficial.

Por lo tanto, el análisis a continuación va para la guía en su versión 0.2.0, la cual cuenta con las siguientes páginas:

1. **Página de inicio:** Contiene el alcance de la guía, antecedentes, descripción y objetivos de la guía. Este último punto en la versión 0.2.0 no fue trabajado.

Para más información visitar [Guía IPS - Inicio](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/index.html).

2. **Página de Especificaciones de Negocio:** Contiene información relacionada a la estructura del IPS, con las descripciones de cada sección además de la lista de perfiles que contiene la guía. Para más información visitar [Especificaciones Negocio - Estructura IPS](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/EstructuraIPS.html).
   
3. **Página de Especificaciones Técnicas:** Contiene información relacionada a la operación a utilizar para la generación de resumenes clínicos. La operación FHIR se denomina *$Summary*, la cual retorna un Bundle como documento clínico. Para más información visitar [Especificaciones Técnicas - Operaciones IPS](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/OperacionesIPS.html).
   
   - ***Para la solicitud del resumen:***
   ```
   POST [base]/Patient/[id]/$summary
   ```

4. **Página de Artefactos:** Contiene todos los artefactos FHIR creados a partir de la guía de implementación IPS Internacional y la Core-CL. Estos artefactos comprenden los perfiles y ejemplos de los mismos. En el caso de las terminologías y extensiones, se heredaron de las guías mencionadas anteriormente. Visitar [Artefactos Guía Resumen Embarazos](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/artifacts.html) para más información. En caso de requerir mayor detalle sobre cómo utilizar e implementar cada uno de los artefactos FHIR visitar el [Manual FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html).

5. **Página de Historial de Cambios:** Contiene todos los cambios que se han realizado en la guía a partir de la versión 0.2.0. Para más información visitar el [Historial de Cambios - Guía](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/changes.html).

Como se mencionó anteriormente, esta guía de implementación está compuesta por los siguientes artefactos:

## Perfiles

- Esta guía tiene un total de 28 perfiles. En este proyecto, 16 de los 28 perfiles fueron adaptados y modificados de acuerdo a la realidad nacional. Cabe destacar que para llevar a cabo esto, se tomó como base el formato JSON de los perfiles provenientes de la IPS Internacional, realizando una comparación con lo establecido en la Core-CL para que la guía efectivamente cumpla con los estándares de una guía de implementación chilena.

Los perfiles, los cuales se pueden visualizar en [Perfiles Guía](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/artifacts.html#structures-resource-profiles), son los siguientes:

| Perfiles | Descripción |
| :--------: | :-----------: |
| `Perfil Alergias` | Se basa en el perfil Allergy Intolerance de IPS Internacional y Core-CL. |
| `Perfil Bundle` | Se basa en el perfil Bundle de IPS Internacional y el estándar FHIR. |
| `Perfil Composition` | Se basa en el perfil Composition de IPS Internacional y el estándar FHIR. |
| `Perfil Condición` | Se basa en el perfil Condition de IPS Internacional y DiagnosticoCl de la Core-CL.|
| `Perfil Declaración de uso del dispositivo` | Se basa en el perfil DeviceUseStatement de IPS Internacional y el estándar FHIR.|
| `Perfil Dispositivo` | Se basa en el perfil Device de IPS Internacional y estándar FHIR. |
| `Perfil Dispositivo ejecutante, observador` | Se basa en el perfil Device de IPS Internacional y estándar FHIR. |
| `Perfil Estudio de imagenología` | Se basa en el perfil ImagingStudy de IPS Internacional y el estándar FHIR. |
| `Perfil Flag-Alerta` | Se basa en el perfil Flag de IPS Internacional y el estándar FHIR.|
| `Perfil Hábitos de Alcohol` | Se basa en el perfil Observation (SH: alcohol use) de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Hábitos de Drogas` | Se basa en el perfil Observation (SH: tobacco use) de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Immunización` | Se basa en el perfil de Immunization de IPS Internacional e ImmunizationCL de la Core-CL. |
| `Perfil Medicamentos` | Se basa en el perfil de Medication de IPS Internacional y CoreMedicamentoCl de la Core-CL. |
| `Perfil Muestra` | Se basa en el perfil Specimen de IPS Internacional y el estándar FHIR. |
| `Perfil Observación Estado Embarazo` | Se basa en el perfil de Observation (Pregnancy: status) de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Observación Fecha Estimada de Parto` | Se basa en el perfil de Observation (Pregnancy: EDD) de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Observación Resultados Embarazo: Resumen` | Se basa en el perfil de Observation (Pregnancy: outcome) de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Observación  Resultado: Imagenológico` | Se basa en el perfil de Observation Results: radiology de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Observación Resultados: Laboratorio/Patología` | Se basa en el perfil de Observation Results: laboratory de IPS Internacional y ObservacionCL de la Core-CL. |
| `Perfil Organización` |Se basa en el perfil Organization de IPS Internacional y OrganizacionCL de la Core-CL. |
| `Perfil Paciente` | Se basa en el perfil Patient de IPS Internacional y PacienteCl de la Core-CL. |
| `Perfil Prestador` | Se basa en el perfil Practitioner de IPS Internacional y PrestadorCL de la Core-CL. |
| `Perfil Procedimientos` | Se basa en el perfil Procedure de IPS Internacional y el estándar FHIR. |
| `Perfil Rol Prestador` | Se basa en el perfil PractitionerRole de IPS Internacional y CoreRolClinicoCl de la Core-CL. |
| `Perfil Reporte Diagnóstico` | Se basa en el perfil  DiagnosticReport de IPS Internacional y el estándar FHIR. |
| `Perfil Declaración de Medicamentos` | Se basa en el perfil Medication Statement de IPS Internacional y el estándar FHIR. |
| `Perfil Solicitud de Medicamentos` | Se basa en el perfil Medication Request de IPS Internacional y el estándar FHIR. |
| `Parámetros de entradas IPS Summary` | Se basa en el perfil Parameters del estándar FHIR. |

## Instancias

- Cada perfil cuenta con su propio ejemplo, los cuales se desarrollan con el fin de que cualquier persona, incluido el implementador, logre comprender mejor cómo se aplican los perfiles a un contexto clínico específico. Estos se pueden observar en [Ejemplos Perfiles](https://build.fhir.org/ig/HL7Chile/IPS-CL/branches/Tesis/artifacts.html#example-example-instances).

# QA Report

Este apartado resulta ser uno de los más importantes dentro de una guía de implementación, debido que permite realizar una validación interna de todos los artefactos, dependencias, entre otros elementos que puedan generar errores y/o adevertencias dentro de la guía. 
Para ello, una vez publicada la guía con los cambios generados, se recomienda **revisar este apartado**, ya que en ocasiones el comando *sushi .* no muestra todos los errores o advertencias, sino que los deja pasar al publicar la guía.

![image](https://github.com/user-attachments/assets/cb069281-bed6-4d59-9d78-32d38ab158c5)

