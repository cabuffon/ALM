Bean Camel Archetype of Orchestration
=====================================

Este arquetipo permite orquestar uno o varios proyectos de negocio pertenecientes a la SUPEREDUC, principalmente
enfocado en una petición Direct VM de acceso privado.

### Considerations:

* El arquetipo no generará rutinas de validación o tranformación intermedias, éstas deberán ser ajustadas por el programador al momento de generar el servicio
* El arquetipo siempre expondrá el servicio mediante el componente direct-vm de apache camel
* El arquetipo siempre consumirá servicios expuestos como direct-vm
* El contrato del servicio deberá ser adecuado dependiendo de las necesidades de interpretación, tanto de transformación como de invocación hacia y desde servicio de tipo direct-vm 


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

mvn archetype:generate -DarchetypeGroupId=cl.supereduc.iesb.orquestador -DarchetypeArtifactId=supereduc-arquetipo-orquestador-negocio -DarchetypeVersion=0.0.1 -DgroupId=cl.invoke.poc -DartifactId=api-orquestador-consultaList -Dversion=1.0 -DnombreRuta=api-orquesta-agendamientosPorRBD -DendPointService=orquestador -DendPointServicesVM=fiscalizacion-agendamientosPorRBD-tracking,fiscalizacion-agendamientosPorRBD-tracking2
	
* -DnombreRuta: atributo que define el nombre de la ruta camel, que servira para diferenciarla de las demas rutas existentes
* -DendPointService: endpoint del servicio expuesto por la SUPEREDUC
* -DendPointServicesVM: endpoint de los componentes Direct VM pertenecientes a los servicios de negocio de la SUPEREDUC, pueden haber tantos como se requieran

Deploy the new project
----------------------
Para desplegar nuestro nuevo proyecto en el repositorio maven se deberá ejecutar la siguiente línea dentro del proyecto

mvn deploy
