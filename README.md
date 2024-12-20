# Guía de Implementación de Resumen de Datos Clínicos de Pacientes IPS-CL.

Guía "International Patient Summary" adaptado a la realidad local de Chile

Esta guía de implementación busca ser una adaptación de la guía IPS Internacional, tomando como referencia la misma guía IPS (International Patient Summary) y la guía Cl Core para su desarrollo. La incorporación de la Guía CL CORE en la Adaptación del IPS nacional, permite establecer un conjunto de perfiles FHIR específicos que representan la información clínica mínima necesaria para la conformación de resumenes de pacientes a nivel nacional.

Un resumen de datos clínicos de pacientes es un documento clínico que contiene la información más relevante del sujeto de atención, esto es información relacionada con alergias, condiciones de salud, medicamentos u otros datos esenciales para brindar una atención de calidad y más enfocada en el propio paciente que en la lectura y documentación de datos.

Esta guía de implementación permitirá atacar el problema relacionado al tiempo que dedican los prestadores de salud a la lectura y documentación de datos clínicos dentro de la historia clínica de un paciente, quienes al tener un resumen clínico podrán acceder a la información más relevante de un paciente dedicando más tiempo a la propia atención del sujeto de atención.

# Instalación previa y requisitos

Para llevar a cabo el desarrollo de este proyecto, fue necesario seguir los siguientes requisitos previos a la instalación:

## Requisitos
- Toda instalación debe ser en modo administrador dentro del computador.

## Instalación

- Instalar [**Visual Studio Code**](https://code.visualstudio.com/download), el cual servirá como editor de código.
- Instalar **Java jdk** dependiendo de su sistema operativo. Para ello, ingresar a [Java-downloads](https://www.oracle.com/cl/java/technologies/downloads/) y seguir las instrucciones de instalación.
- Instalar **Node js**. Para ello ingresar a [Node.js](https://nodejs.org/en) y seguir las instrucciones de instalación. Escribir *node -v* para verificar su versión.
```
node -v
```
- Instalar **sushi FHIR**. Para este último:
  - Abrir el símbolo del sistema o cmd en el buscador de windows.
  - Escribir **npm install -g fsh-sushi** y ejecutar.
  ```
  npm install -g fsh-sushi
  ```
  ** Se debe tener en cuenta que con el comando *cd* dentro del símbolo del sistema, se puede cambiar de directorio si es que así lo desea, como paso previo a la instalación de sushi. Ejemplo:
  ```
  cd C:\Users\usuario\Desktop\Nombre_Carpeta
  ```
  - Escribir *sushi help* para verificar su instalación, o escribir *sushi -v* para verificar la versión de sushi.
  ```
  sushi help
  ```
  ```
  sushi -v
  ```
- Instalar las herramientas de publicación para la guía de implementación:
  - Primero, instalar **Ruby Jeckyll**. Ingresar a [Jeckyll-installation](https://jekyllrb.com/docs/installation/) y escoger según su sistema operativo.
  - Descargar e instalar **Ruby**. Para ello, ingresar a [Ruby-installation](https://rubyinstaller.org/) e instalar las 3 opciones que aparecen al momento de realizar la instalación. Esta es especificamente para windows.
  - Escribir en símbolo del sistema **gem install jekyll bundler**.
  ```
  gem install jekyll bundler
  ```
  - Escribir jekyll -v para verificar la versión e instalación de jekyll.
  ```
  jekyll -v
  ```
  <img src="https://github.com/user-attachments/assets/8a42106c-d7ba-40c6-abdd-cfc654dff340" alt="jekyll" width="550" height="300">

- Se recomienda agregar *java* en las variables de entorno.
  - Para ello, buscar **variables de entorno** en el buscador de windows, y seleccionar el botón **variables de entorno**.
  - Allí, se deberá seleccionar **variables del sistema** y posteriormente se deberá hacer doble click en **path**.
  - A continuación, se deberá seleccionar el botón **examinar**. Allí se deberá buscar la ruta donde se instaló *java./java/bin* y se deberá seleccionar y guardar. Ejemplo:
  ```
  C:Program Files\Java\jdk-22\bin
  ```
  - Finalmente, en **variables de usuario**, se deberá seleccionar el botón **Nueva**. Allí, colocar **JAVA_HOME** como nombre de la variable, mientras que en el valor de la variable, se deberá colocar la carpeta que almacena el archivo de Java. Ejemplo:
  ```
  C:Program Files\Java\jdk-22
  ```
Ahora, ¡debiera estar configurado para comenzar a utilizar sushi para crear una guía de implementación!

# Uso de SUSHI FHIR

SUSHI es un compilador de código que se basa en el lenguaje **FHIR Shorthand (FSH)**. Este es un lenguaje utilizado para definir el contenido de las guías de implementación, es decir, los artefactos FHIR. Para mayor detalle visitar el [Manual FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand/).

## Mejores prácticas: GitHub

Para comenzar con el desarrollo de una guía de implementación, se recomienda descargar e instalar [GitHub Desktop](https://desktop.github.com/download/). Esto permitirá al usuario un manejo más sencillo de los archivos al estar almacenados en un repositorio.
Para ello, los pasos a seguir son:
- [Crearse una cuenta en github](https://github.com/join). Si ya tiene una cuenta, omitir este paso.
- Durante la instalación, iniciar sesión con su cuenta de GitHub.
- Finalmente, verificar la instalación de git con *git -v* en el cmd.
 ```
 git -v
 ```
Posteriormente, se debe ingresar a [GitHub Sign in](https://github.com/login) y seleccionar donde dice **New Repository** para crear un nuevo repositorio, esto con el fin de que se almacenen todos los archivos y la información correspondiente. El repositorio debe llevar un nombre específico, en este proyecto se denomina IPS-CL.

![create_repo](https://github.com/user-attachments/assets/8f54c9d9-6797-4e56-98ed-e3e7ef732fe1)

- Luego, se debe seleccionar el botón **Code** y posteriormente escoger la opción **Open with GitHub Desktop**. Esto permitirá que el repositorio se abra en el github de escritorio instalado previamente.
- En GitHub Desktop se debe elegir la ubicación donde se descargará el repositorio, y luego se debe hacer presionar el botón **Clone**.
- Una vez clonado el repositorio, se deberá hacer click derecho sobre la carpeta del repositorio y seleccionar **abrir con Visual Studio Code**. ¡Y Listo! Ya tendrás la carpeta creada en la cual podrás comenzar a desarrollar tu guía de implementación.

![clonar_repo](https://github.com/user-attachments/assets/c1f04655-450f-46b9-b65f-3a136f5c1403)

## SUSHI Init

Luego de abrir la carpeta en Visual Studio Code, se deberá abrir el terminal. En el terminal se puede observar el directorio en el cual se van a ejecutar los comandos y crear los archivos.
  - En el terminal, se deberá escribir y ejecutar el comando **sushi init .** solo una vez. El punto al final es muy importante, ya que permitirá que los archivos se creen directamente en el repositorio de github.
    ```
    sushi init .
    ```
  - Se desplegarán una serie de elementos a rellenar por el usuario:
    ```
    Name:
    Id (Default: fhir.example):
    Canonical (Default: http://example.org):
    Status (Default: draft):
    Version (Default: 0.1.0):
    Release Label (Default: ci-build):
    Publisher Name (Default: Example Publisher):
    Publisher Url (Default: http://example.org/example-publisher):
    ```
    Se pueden dejar vacíos y luego editarlos directamente en el archivo *sushi-config.yaml* de la guía.

Y luego, para iniciar el proyecto en sushi se debe colocar *y*. Esto último permitirá la descarga de archivos como *genonce y publisher*.
```
Initialize SUSHI project in C:\Users\aguil\Desktop\IPS_Tesis\IPS-CL? [y/n]: y
```
Finalmente, ejecutar el siguiente comando para la generación de artefactos:
```
sushi .
```

Este último comando permitirá evidenciar si es que la guía está lista como para poder subirla al repositorio y publicar sus cambios para su visualización, o bien, permitirá observar la presencia de errores y/o advertencias que se hayan generado. Cada vez que se quieran observar posibles errores o resultados, ejecutar *sushi .*.

![vscode](https://github.com/user-attachments/assets/9abb73e6-b23e-4d13-a50b-5aca4d6ec77b)

- Consultar la [documentación de SUSHI/Incialización de proyecto](https://fshschool.org/docs/sushi/project/#initializing-a-sushi-project) y [SUSHI RUNNING](https://fshschool.org/docs/sushi/running/) para más información sobre el uso de sushi.

## Configuración del archivo sushi-config.yaml

Toda guía de implementación cuenta con un archivo denominado **sushi-config.yaml**, en el cual se configura la estructura y dependencias de una guía de implementación. En él se pueden editar metadatos (nombre de la guía, versión, estado, url canónica, etc) así como también escribir todas las dependencias de la guía, es decir, los paquetes o recursos externos que la guía necesita para funcionar correctamente.

En el caso de esta guía de implementación, las dependencias son:
  - [Guía Core CL](https://hl7chile.cl/fhir/ig/clcore/1.9.1/): La guía Core-CL establece las reglas y requerimientos necesarios para aplicar FHIR bajo el contexto nacional. Esta debe utilizarse para el desarrollo de cualquier guía de implementación. En este caso, la guía IPS-CL referencia directamente a la Core-CL en su versión 1.9.1 debido a que la utiliza para su desarrollo.
  - [Guía IPS Internacional](https://build.fhir.org/ig/HL7/fhir-ips/): La guía IPS internacional en su versión 2.0.0, permite definir la estructura de los artefactos FHIR necesarios para la generación de un resumen de pacientes a nivel internacional en modo de documento clínico (Bundle Document). A partir de esta guía, se llevó a cabo la guía IPS nacional.

Mientras que la URL canónica, la cual apunta la versión actual de la guía de implementación, corresponde a:
```
https://hl7chile.cl/fhir/ig/clips
```
Esto último es importante, ya que esta URL se utiliza en todos los recursos FHIR de la guía. Generalmente, todas las canonical tienen una estructura similar.

- Consultar la [documentación de SUSHI/configuration](https://fshschool.org/docs/sushi/configuration/) para mayor información.

## Configuración de páginas - pagecontent

Una guía de implementación puede contener múltiples páginas que redirigen a distinta información. Para ello, es necesario configurar tanto la carpeta *input* como el archivo *sushi-config.yaml*.

### Input

Al momento de ejecutar *sushi init .*, se crea una carpeta denominada **input**, la cual contiene lo siguiente:
  - Una carpeta denominada **fsh**, la cual debe contener todos los artefactos generados, desde perfiles hasta instancias, extensiones y terminologías.
  - Una carpeta denominada **pagecontent** que deberá contener todas las páginas creadas en la guía de implementación. Generalmente son archivos tipo *Nombre_carpeta.md*.
  - Y si es que se requiere de imagenes, **input** puede contener una carpeta denominada **images** y/o una carpeta denominada **images-source**.
    - La carpeta **images** puede contener imágenes *.png* o *.svg*. Estas suelen agregarse dentro de las páginas de este modo:
    ```
    <br>
    <div align="center">
      <img src="Nombre_imagen.png" style="width:70%"> 
      <p>Pie de imagen</p>
    </div>
    <br>
    ```
    - La carpeta **images-source** contiene diagramas en formato *.plantuml*, los cuales son desarrollados por medio de *Plantuml* dentro de Visual Studio. Para ello, se recomienda buscar e instalar las extensiones dentro de Visual Studio Code, siendo la primera **PlantUML Previewer** y la segunda **PlantUML**.
      
    ![image](https://github.com/user-attachments/assets/43a2cce8-bc97-45c3-acc1-5606ce9cdf6c)

    - Generalmente, este es el formato a seguir para agregar un diagrama *.plantuml* dentro de un archivo:
    ```
    <div align="center" >
      {% include Nombre_diagrama.svg %}
    </div>
    <br clear="all"/>
    ```
### sushi-config.yaml

Además de las otras configuraciones, en este archivo se pueden habilitar la cantidad de páginas que se quieren agregar a la guía:

  - En *pages* se deberán colocar las páginas ya sea *.md* o *.html* con su respectivo título.
  - En *menu* se deberá colocar cada una de las páginas con un nombre y su respectiva referencia a como se configuraron en *pages*. Estas deben ser *.html*.

- Para un mejor entendimiento de todos los archivos, visualizar el contenido de este repositorio. Además, puede consultar [Estructura de un proyecto sushi](https://fshschool.org/docs/sushi/project/) para mayor información.

## Guardar y publicar la guía

Una vez se tenga seguridad de querer visualizar los cambios dentro de la guía de implementación, y haber ejecutado el comando *sushi .*, se debe realizar lo siguiente:

### 1. En GitHub: git add ., git commit -m y git push

Para subir cualquier información y archivos de la guía de implementación al repositorio de github, es necesario ejecutar los siguientes comandos en este orden y uno tras otro, en la terminal de Visual Studio:
1) El primero corresponde a un paso previo para confirmar los cambios en el repositorio local. Indica los cambios a incluir en el siguiente commit.
```
git add .
```
2) El siguiente comando registra los cambios que has preparado en el repositorio local, escribiendo un mensaje que explique el propósito de los cambios generados.
```
git commit -m "Ejemplo: Cambios generados"
```
3) El último comando permite subir los cambios realizados al repositorio remoto (de GitHub), en la rama que se está trabajando. En caso de que la guía esté en el build, entonces los cambios pueden visualizarse unos minutos después de hacer un *push*.
```
git push
```
- Con *git branch* se puede revisar en qué rama del repositorio se está trabajando.

### 2. Con el comando genonce

**Genonce** es un comando que permite ejecutar *IG Publisher* para generar y compilar la guía de manera local. Para ello, ejecutar el siguiente comando en windows:
```
.\_genonce
```
Esto puede tardar varios minutos, pero finalmente generará la guía en una carpeta denominada *output* dentro de la carpeta donde se encuentran almacenados todos los archivos del proyecto. Allí, se encuentra un archivo *html* que corresponde a la guía de implementación. Con esto ya puedes visualizar la guía de manera local!

![guiaips](https://github.com/user-attachments/assets/ec378226-0b9e-4666-be94-c92bcaf0b8bf)

## Package archivos
**En caso de que se quiera realizar**

Una vez establecidas las dependencias, por medio de la URL web de la guía de implementación se puede colocar la extensión **package.tgz** para descargar los paquetes asociados a la guía. Ejemplo: 
```
https://hl7chile.cl/fhir/ig/clips/0.2.0/package.tgz
```
Esto descargará un archivo comprimido con todos los artefactos FHIR incluidos en la guía de implementación. Se debe descomprimir para visualizar su contenido, como se observa a continuación.

<img src="https://github.com/user-attachments/assets/88e867da-59d8-4957-8595-ec8ad123830d" alt="jekyll" width="830" height="460">

Tener el package permitirá:
  - Validar los recursos FHIR asociados a los perfiles de la guía.
  - Garantizar que se utilizan los artefactos correctos
  - Garantiza que se trabaje con artefactos de una versión específica y estable.
  - Permite usar los artefactos localmente en caso de problemas con el servidor o GitHub.
