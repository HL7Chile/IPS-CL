# Estructura de la Guía de Implementación de Resumen de Datos Clínicos de Pacientes IPS-CL

Esta guía de implementación, al momento de ser trabajada, se estableció con la versión 0.2.0, sin embargo, actualmente se han ido añadiendo cambios a la misma, estableciendola en la versión 0.3.0 "ballot". Esto último significa que, si bien se ha actualizado la guía, aún es una versión que está en fase de revisión y evaluación, lo que permite realizar mejoras sobre ella antes de convertirse en oficial.

Por lo tanto, el análisis a continuación va para la guía en su versión 0.2.0, la cual cuenta con las siguientes páginas:

1. **Página de inicio:** Contiene el alcance de la guía, antecedentes, descripción y objetivos de la guía. Este último punto en la versión 0.2.0 no fue trabajado.
   
 <img src="https://github.com/user-attachments/assets/41d361fd-6225-4b9e-8043-e45072a6c29e" alt="proceso" width="700" height="600">

Para más información visitar [Guía Resumen Embarazos - Inicio](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/index.html).

2. **Página de Objetivos:** Contiene tanto el objetivo general como los objetivos específicos de la guía de implementación. Para más información visitar [Objetivos Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/Objetivos.html).
   
3. **Página de Casos de Uso:** Contiene los casos de uso a partir del proceso identificado. Además, se establecen las operaciones FHIR a utilizar:
   - ***Para la solicitud del resumen:***
   ```
   POST [base]/Patient/[id]/$summary
   ```
   - ***Para la creación de un recurso:***
   ```
   POST [URL_Base]/{TypeResource}/
   ```
   - ***Para la actualización de un recurso:***
   ```
   PUT [URL_Base]/{TypeResource}/[id]
   ```
   El siguiente diagrama representa las transacciones y operaciones FHIR por caso de uso:
  
   <img src="https://github.com/user-attachments/assets/73eadd01-ae49-4df6-a28a-71afe0af3dda" alt="caso uso" width="550" height="600">

   Visitar [Casos de Uso - Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/Casos-de-uso.html) para más información.

4. **Página de Artefactos:** Contiene todos los artefactos FHIR creados a partir de la guía de implementación IPS-CL. Estos artefactos comprenden los perfiles, ejemplos, extensiones y terminologías como ValueSets y CodeSystem. Visitar [Artefactos Guía Resumen Embarazos](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/artifacts.html) para más información. En caso de requerir mayor detalle sobre cómo utilizar e implementar cada uno de los artefactos FHIR visitar el [Manual FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html).

5. **Página de Historial de Cambios:** Contiene todos los cambios que se han realizado en la guía desde que se obtuvo la primera versión en adelante. Para más información visitar el [Historial de Cambios - Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/Changes.html).

Como se mencionó anteriormente, esta guía de implementación está compuesta por los siguientes artefactos:

## Perfiles

- Esta guía contiene un total de 17 perfiles, cada uno adaptado de acuerdo a lo referenciado a partir de la IPS nacional. Sin embargo, para desarrollar cada perfil, fue necesario realizar un levantamiento de información con un profesional del área, en este caso fue con una matrona del hospital Carlos Van Buren de Valparaíso. Esta información, compone el denominado *Modelo Lógico de Datos* que contiene el cómo deben distribuirse los datos, su cardinalidad, si es que requieren de alguna extensión y/o de algún set de códigos correspondientes a un sistema de terminología en particular, etc. Este modelo se encuentra aquí: [Modelo Logico Datos](https://github.com/SIMSADIs/GI-EMBARAZOS-IPS/blob/main/Modelo%20L%C3%B3gico%20de%20Datos.xlsx) y puede ser descargado y visualizado con mayor detalle y detenimiento.

Los perfiles, los cuales se pueden visualizar en [Perfiles Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/artifacts.html#structures-resource-profiles), son los siguientes:

| Perfiles | Descripción |
| :--------: | :-----------: |
| `Perfil Alergias` | Se basa en el perfil Alergias de IPS-CL. |
| `Perfil Bundle` | Se basa en el perfil Bundle de IPS-CL. |
| `Perfil Composition` | Se basa en el perfil Composition de IPS-CL. |
| `Perfil Condición` | Se basa en el perfil Condición de IPS-CL.|
| `Perfil Hábitos de Alcohol` | Se basa en el perfil Consumo de Alcohol de IPS-CL. |
| `Perfil Hábitos de Drogas` | Se basa en el perfil Consumo de Tabaco de IPS-CL. |
| `Perfil Medicamentos` | Se basa en el perfil de Medicamentos de IPS-CL. |
| `Perfil Observación Estado Embarazo` | Se basa en el perfil de Observación de Estado de embarazo de IPS-CL. |
| `Perfil Observación Fecha Estimada de Parto` | Se basa en el perfil de Observación de Fecha estimada de parto de IPS-CL. |
| `Perfil Observación Resultados Embarazo: Resumen` | Se basa en el perfil de Observación de Resultados de embarazos de IPS-CL. |
| `Perfil Organización` |Se basa en el perfil Organización de IPS-CL. |
| `Perfil Paciente` | Se basa en el perfil Paciente de IPS-CL. |
| `Perfil Prestador` | Se basa en el perfil Prestador de IPS-CL. |
| `Perfil Procedimientos` | Se basa en el perfil Procedimientos de IPS-CL. |
| `Perfil Rol Prestador` | Se basa en el perfil Rol de Prestador de IPS-CL. |
| `Perfil Uso de Medicamentos` | Se basa en el perfil Declaración de Medicación de IPS-CL. |

## Instancias

- Cada perfil cuenta con su propio ejemplo, los cuales se desarrollan con el fin de que cualquier persona, incluido el implementador, logre comprender mejor cómo se aplican los perfiles a un contexto clínico específico. Estos se pueden observar en [Ejemplos Perfiles](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/artifacts.html#example-example-instances).

## CodeSystem y ValueSets

- Se definieron un total de 8 ValueSets y 1 CodeSystem en particular. En la siguiente imagen se observan cada uno de ellos:
  
<img src="https://github.com/user-attachments/assets/064d4f17-956e-480b-ae24-4ca2c033253d" alt="terminologias" width="850" height="550">

Para más información visitar [ValueSets - Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/artifacts.html#terminology-value-sets) y [CodeSystem - Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/artifacts.html#terminology-code-systems).

## Extensiones

- Se definió solo una extensión que corresponde a la edad del paciente dentro del perfil Paciente. Si bien esta es una extensión ya definida en otras guías de implementación, se definió nuevamente para permitir que sea más personalizable si es que así se requiere. Para más información visitar [Extensión - Guía](https://build.fhir.org/ig/HL7Chile-BiomedicaUv/IPS-Embarazo/artifacts.html#structures-extension-definitions).
  
![image](https://github.com/user-attachments/assets/902d705f-d0ab-4594-acff-749214c08b99)

# QA Report

Este apartado resulta ser uno de los más importantes dentro de una guía de implementación, debido que permite realizar una validación interna de todos los artefactos, dependencias, entre otros elementos que puedan generar errores y/o adevertencias dentro de la guía. 
Para ello, una vez publicada la guía con los cambios generados, se recomienda **revisar este apartado**, ya que en ocasiones el comando *sushi .* no muestra todos los errores o advertencias, sino que los deja pasar al publicar la guía. En el video que se muestra a continuación, se observa el QA Report de esta guía de implementación.

![image](https://github.com/user-attachments/assets/cb069281-bed6-4d59-9d78-32d38ab158c5)

<img src="https://github.com/user-attachments/assets/d4494d51-c7db-4870-b9e2-003b2f6dd963" alt="terminologias" width="850" height="500">

