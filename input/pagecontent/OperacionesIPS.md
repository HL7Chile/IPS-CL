### Generación de un Documento IPS

El documento IPS esta compuesto por un conjunto de recursos organizados en un *Bundle*, está guía recomienda el uso de la operación "$summary" para la generación estos.

### Operación

Usando la operación [$summary](OperationDefinition-IpsClSummary.html) en el recurso Paciente. Está operación retorna un *Bundle* de tipo Documento IPS, en respuesta a una operación http. Está operación  es similar al *$everything*, pero con la diferencia de que este es un documento *Bundle* cuyo primer recurso es un *Composition*. La información generada por está operación no necesariamente es persistente en el tiempo. 

{% include OperacionSummary.svg %}