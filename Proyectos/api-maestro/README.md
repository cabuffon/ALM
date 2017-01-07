Bean Camel Servicio de Consulta Maestro Corporativo
===================================================

Este proyecto contempla la integración con base de datos Postgresql para operaciones que 
soportan a las áreas de negocio de fiscalización, correspondientes a los procesos de agendamientos.

### Requirements:
* JBoss Fuse 6.2.1 EAP (http://www.jboss.org/jbossfuse)
* Versión JDK ambiente QA Java Version “1.7.0_111”
* BD Postgresql 8.4
* Maven


Building
--------

### Deployment new project
Se deberá ejecutar el siguiente comando maven para 
desplegar el proyecto sobre jboss EAP.

	mvn clean jboss-as:deploy

Test Component
--------------

Para poder probar el servicio, actualmente se debe llamar a un proyecto de testing llamado "timer-testing", por medio de una invocacion directa al siguiente componente direct vm:

	maestro-establecimientosPorRutSostenedor-tracking
	maestro-establecimientosPorRbd-tracking
	maestro-representantesPorRutSostenedor-tracking
	maestro-sostenedorPorRut-tracking

	
Para realizar las pruebas, se deberán generar las llamadas al proyecto timer-testing

### api-maestro-establecimientosPorRutSostenedor:
```camel-context
		<route id="test-maestro-establecimientosPorRutSostenedor">
 			<from uri="timer://maestro?fixedRate=true&amp;period=1000"/>
 			<setHeader headerName="rutSostenedor">
 				<constant>
 					7
 				</constant>
 			</setHeader>
 		    <to uri="direct-vm:maestro-establecimientosPorRutSostenedor-tracking"/> 
		</route>
```
### api-maestro-establecimientosPorRbd:
```camel-context
		<route id="test-maestro-establecimientosPorRbd">
 			<from uri="timer://maestro?fixedRate=true&amp;period=1000"/>
 			<setHeader headerName="rbd">
 				<constant>
 					7
 				</constant>
 			</setHeader>
 		    <to uri="direct-vm:maestro-establecimientosPorRbd-tracking"/>
		</route>		
```
### api-maestro-representantesPorRutSostenedor:
```camel-context
			<route id="test-maestro-representantesPorRutSostenedor">
 			<from uri="timer://maestro?fixedRate=true&amp;period=1000"/>
 			<setHeader headerName="rutSostenedor">
 				<constant>
 					7
 				</constant>
 			</setHeader>
 		    <to uri="direct-vm:maestro-representantesPorRutSostenedor-tracking"/> 
		</route>
```
### api-maestro-sostenedorPorRut:
```camel-context
			<route id="test-maestro-sostenedorPorRut">
 			<from uri="timer://maestro?fixedRate=true&amp;period=1000"/>
 			<setHeader headerName="rutSostenedor">
 				<constant>
 					5
 				</constant>
 			</setHeader>
		    <to uri="direct-vm:maestro-sostenedorPorRut-tracking"/>
		    <log message="retorno del servicio vm maestro-sostenedorPorRut: ${body}"></log>
		</route>	
```

Conección a BD
--------------
Se debe definir un datasource para acceder a la BD Postgresql con la siguiente
nomenclatura:

Name:		ds_info_iesb	        
JNDI:		java:jboss/datasources/ds_info_iesb                               
Driver:		postgresql-8.4-702.jdbc4.jar          
Connection URL: jdbc:postgresql://192.168.50.78:5433/info	                                    
Motor BD:	Postgresql
   			


Consultas a BD
--------------
Se define el archivo "querysApiMaestro.properties", el cual contiene y encapsula las querys de consulta a la BD dentro de la siguiente ruta:

src/main/resources/querysApiMaestro.properties
