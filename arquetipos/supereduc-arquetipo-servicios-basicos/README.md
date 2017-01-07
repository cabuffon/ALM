Bean Camel Archetype of Business
====================================

Este arquetipo permite crear servicios de negocio con acceso a distintas bases de datos pertenecientes a la SUPEREDUC, principalmente
enfocado en una petición Direct VM de acceso privado.

### Considerations:

* Considera 1 parámetro de entrada para búsqueda y como resultado una lista JSON
* Considera servicios con entrada JSON para inserción de una única tabla, la entrada debe coincidir con la sentencia SQL
* Considera servicios para la edición de una única tabla con entrada JSON, la entrada debe coincidir con la sentencia SQL
* Considera servicios para la eliminación de un registro dada un único atributo como llave.
* El parametro operacion discrimina si el nuevo servicio a crear es del tipo consulta, inserción, edición o eliminación.


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

mvn archetype:generate -DarchetypeGroupId=cl.supereduc.iesb.basico -DarchetypeArtifactId=supereduc-arquetipo-servicios-basicos -DarchetypeVersion=0.0.1 -DgroupId=cl.invoke.poc -DartifactId=api-basico-consultaList -Dversion=1.0 -Doperacion=DEFAULT -DnombreRuta=servicio-basico -DjndiDS=ds_sife_iesb -DendPointService=fiscalizacion-agendamientosPorRBD-tracking
	
Por defecto se cargaran los parametros seteados para crear un arquetipo generico con las 5 operaciones, esto solo ocurrira si seleccionamos la operacion "-Doperacion=DEFAULT", en el caso que seleccionemos otra se creara una estructura asociada a la operacion.

* -DendPointService: endpoint del servicio expuesto por la SUPEREDUC
* -Doperacion: Corresponde al parametro de entrada que discrimina si el nuevo servicio a crear es del tipo consulta, inserción, edición o eliminación.
	### Tipos de operaciones:
	-Doperacion=SELECTLIST (Comando asociado a una consulta de BD con una lista de registros a retornar) 
	
	-Doperacion=SELECTONE (Comando asociado a una consulta de BD con un registro de retorno)
	
	-Doperacion=INSERT (Comando asociado a la inserción de un registro en una BD)
	
	-Doperacion=UPDATE (Comando asociado a la edición de un registro en una BD)
	
	-Doperacion=DELETE (Comando asociado a la eliminación de un registro en una BD)
	
	-Doperacion=DEFAULT (Comando asociado a la generación de las 5 operaciones simultaneamente descritas arriba)

* -DnombreRuta: Atributo que define el nombre de la ruta camel, que servira para diferenciarla de las demas rutas existentes
* -DjndiDS: Atributo que corresponde al nombre del datasource definido para conectar a una BD en particular.

Result: 
Se creara un nuevo proyecto con dos archivos de configuración a modo de referencia, que deberán ser ajustados de forma manual y estos corresponden a los siguientes archivos:

querysArquetipoNegocio = Corresponde a un archivo de propiedades con una query de ejemplo asociada a la operación seleccionada,
como por ejemplo si definimos en  la operacion una consulta que retorne una lista deberiamos ejecutar el siguiente comando:
-Doperacion=SELECTLIST
Si en cambio definimos la operación por defecto, nos creara las 5 querys de ejemplo en el archivo de propiedades ejecutando el siguiente comando:
-Doperacion=DEFAULT

El archivo de propiedades sera creada en la siguiente ruta relativa: src/main/resources/querysArquetipoBasico.properties


respuestaJson = Para el caso en que la operación sea un “SELECTLIST” se generara una respuesta JSON de tipo lista y para el caso en que la operación sea un “SELECTONE” se generara una respuesta JSON simple de un nivel de respuesta, para ambos casos se deberán editar y ajustar de forma manual.

Su ruta relativa es la siguiente: /src/main/resources/velocity

Deploy the new project
----------------------
Para desplegar nuestro nuevo proyecto en el repositorio maven se deberá ejecutar la siguiente línea dentro del proyecto

mvn deploy


### Creación de tabla de BD para pruebas:

  CREATE TABLE `world`.`object` (
  `param1` INT,
  `param2` VARCHAR(50),
  `param3` VARCHAR(50)
  ); 
  
  insert into world.object values (30, 'segundo parametro', 'tercer parametro')
