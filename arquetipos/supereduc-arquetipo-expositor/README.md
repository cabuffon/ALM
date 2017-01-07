Bean Camel Arquetipo de Exposición
================================

Este arquetipo permite crear proyecto de exposición para la SUPEREDUC, principalmente
enfocado en una petición REST, este arquetipo de acceso público fue implementado para consumir servicios 
de orquestación o de negocio con definición de la SUPEREDUC.


### Considerations:
* Considera servicios Rest de consulta con 1 parámetro de entrada, método GET con resultado de 1 o más registros de salida en formato JSON
* Considera servicios POST con entrada JSON para inserción de una única tabla
* Considera servicios POST para la edición de una única tabla con entrada JSON
* Considera servicios GET para la eliminación de un registro dada un único atributo como llave.


### Requirements:
* JBoss Fuse 6.2.1 EAP (http://www.jboss.org/jbossfuse)
* Maven 3.2.3 (http://maven.apache.org/)
* Java SE 7 

Building
--------

Para construir e instalar el arquetipo en el repositorio maven se deberá ejecutar la siguiente
línea dentro del proyecto

    mvn clean install

Running from the command line
-----------------------------

Después de instalado el arquetipo en el repositorio local, se deberá ejecutar la siguiente línea 
para la generación del proyecto.

mvn archetype:generate -DarchetypeGroupId=cl.supereduc.iesb.expositor -DarchetypeArtifactId=supereduc-arquetipo-expositor -DarchetypeVersion=0.0.1 -DgroupId=cl.invoke.poc -DartifactId=api-expositor-consultaList -Dversion=1.0 -DnombreRuta=api-expone-consultaList -DendPointService=expositorConsultaLista -DendPointServiceVM=orquestador -Dmethod=GET
	
* -DnombreRuta: Atributo que define el nombre de la ruta camel, que servira para diferenciarlas de las demas rutas existentes
* -DendPointService: endpoint del servicio expuesto por la SUPEREDUC
* -DendPointServiceVM: endpoint de los componentes Direct VM que se pueden encontrar en los servios de orquestación o de negocio de la SUPEREDUC
* -Dmethod: Atributo que discrimina si el metodo sera expuesto como tipo Get o Post para ser consumido por algún ente externo. Para el caso de exponer con metodo post cuando se necesite registrar o actualizar en base de datos se debera ingresar un cuerpo con estructura Json de la siguiente forma:

{"object":{"param1":"1","param2":"api","param3":"actualiza"}}

Los "param" corresponden a la parametrización asociado a los nombres de alguna tabla de base de datos seguido de los dos puntos el valor perteneciente al objeto "object".

Deploy the new project
----------------------
Para desplegar nuestro nuevo proyecto en el repositorio maven se deberá ejecutar la siguiente línea dentro del proyecto

mvn deploy
