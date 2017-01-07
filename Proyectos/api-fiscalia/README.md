Bean Camel Servicio de Consulta Fiscalia
========================================

Este proyecto contempla la integración con base de datos SqlServer para operaciones que 
soportan a las áreas de negocio de fiscalia, correspondientes a los procesos administrativos.

### Requirements:
* JBoss Fuse 6.2.1 EAP (http://www.jboss.org/jbossfuse)
* Versión JDK ambiente QA Java Version “1.7.0_111”
* BD Sql Server 2012
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

	fiscalia-tracking

	
Para realizar una prueba, se deberá generar llamar al proyecto timer-testing

### api-fiscalia:
```camel-context
<route id="test-fiscalia">
 			<from uri="timer://fiscalia?fixedRate=true&amp;period=1000"/>
 			
 			<setHeader headerName="rbd">
 				<constant>
 					11
 				</constant>
 			</setHeader>
 			
 		    <to uri="direct-vm:fiscalia-tracking"/> 
		</route>
```

Conección a BD
--------------
Se debe definir un datasource para acceder a la BD SqlServer con la siguiente
nomenclatura:

Name:		ds_sipa_iesb	        
JNDI:		java:jboss/datasources/ds_sipa_iesb                               
Driver:		sqljdbc4-4.2.jar          
Connection URL: jdbc:sqlserver://sql01_desa:1433;databaseName=SIPA	                                    
Motor BD:	SqlServer
   			


Consultas a BD
--------------
Se define el archivo "querysApiAuditoria.properties", el cual contiene y encapsula las querys de consulta a la BD dentro de la siguiente ruta:

src/main/resources/querysApiAuditoria.properties

