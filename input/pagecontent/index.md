### Alcance

Está versión del resumen de paciente internacional (IPS, por sus siglas en inglés), busca ser una adaptación de la guía internacional y una base a nivel nacional. Tomando como referencia la misma guía [IPS](https://hl7.org/fhir/uv/ips/) y la guía [Cl Core](https://hl7chile.cl/fhir/ig/clcore/1.9.1/).

### Antecedentes

Un documento de Resumen de Paciente Internacional o IPS, por sus siglas en inglés, es un extracto de la historia clínica electrónica que contiene información esencial sobre la atención sanitaria de un sujeto de atención. Según lo especificado en EN 17269 e ISO 27269, está diseñado para apoyar el caso de uso de 'atención no planificada y transfronteriza', aunque no se limita a este escenario. Está pensado para ser internacional, es decir, para proporcionar soluciones genéricas de aplicación global más allá de una región o país particular.

El conjunto de datos del IPS es mínimo y no exhaustivo; no está orientado a especialidades ni condicionado por enfermedades específicas; pero sigue siendo clínicamente relevante.

El documento IPS está compuesto por un conjunto de elementos de datos básicos, bien definidos y potencialmente reutilizables (indicados como biblioteca IPS en la figura a continuación). El enfoque específico del IPS en la atención no planificada no es una limitación, sino que, por el contrario, facilita su potencial reutilización más allá del ámbito del IPS. Fuente: *International Patient Summary Implementation Guide* ([https://hl7.org/fhir/uv/ips/](https://hl7.org/fhir/uv/ips/))

<br>
<div align="center">
  <img src="IPS_doc_library.png" style="width:70%"> 
  <p>El producto de un IPS y por productos (Fuente: International Patient Summary Implementation Guide)</p>
</div>
<br>

### Descripción

Para adaptar el International Patient Summary (IPS) a una versión chilena, es fundamental integrar los lineamientos establecidos en la Guía CORE de Chile, desarrollada por HL7 Chile con el apoyo del Ministerio de Salud. Esta guía define los perfiles específicos para la interoperabilidad de datos de salud en el país, facilitando la comunicación entre distintos sistemas de información y asegurando que estos cumplan con las normativas y necesidades del sistema chileno.

La incorporación de la Guía "CL CORE" en la Adaptación del "IPS", permite establecer un conjunto de perfiles FHIR específicos para datos clínicos que deben integrarse en el IPS chileno, garantizando su compatibilidad con los sistemas de salud locales. Esto implica utilizar los perfiles CORE para representar información como datos de pacientes, medicamentos, diagnósticos y alergias, alineando estos datos con las necesidades de interoperabilidad nacional.

### Objetivos



### Perfiles

{% include globals-table.xhtml %}

### Dependencias

{% include dependency-table.xhtml %}

### Analisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}

### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}