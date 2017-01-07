Proyecto Catalogo de Servicios con Arquetipos
=============================================

Existen 3 arquetipos para generar proyectos basicos, de orquestación o de negocio y un
tercero para exponer servicios tipo Rest o SOAP para consultar como para exponer.


### Componentes:
* supereduc-arquetipo-expositor
* supereduc-arquetipo-orquestador-negocio
* supereduc-arquetipo-servicios-basicos


Building
--------

Para construir el componente, es necesario ejecutar para cada componente su correspondiente 
instalación mediante el siguiente comando:

    mvn clean install


Para los arquetipos
-----------------------------

La información para la utilización de los arquetipos es posible encontrar dentro de cada
componente su propia especificación.


Drivers Install
-----------------------------
mvn install:install-file -Dfile=sqljdbc4.jar -DgroupId=com.microsoft.sqlserver -DartifactId=sqljdbc4 -Dversion=3.0 -Dpackaging=jar
