DROP TABLE `world`.`sostenedor` 

CREATE TABLE `world`.`sostenedor` (
  `rut_sostenedor` int(11) NOT NULL,
  `nombre_sostenedor` varchar(250) NOT NULL,
  `telefono_fijo` varchar(15) NOT NULL,
  `telefono_movil` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_dos` varchar(50) NOT NULL,
  `email_tres` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `vigente` int(11) NOT NULL,
  `fecha_creacion` varchar(20) NOT NULL,
  `fecha_modificacion` varchar(20) NOT NULL,
  `fuente` varchar(100) NOT NULL,
  `usuario_creador` int(11) NOT NULL,
  `id_region` int NOT NULL,
  `id_comuna` int NOT NULL
  
) 

INSERT INTO world.sostenedor
	(rut_sostenedor, nombre_sostenedor, telefono_fijo, telefono_movil, email, email_dos, email_tres, direccion, numero, vigente, fecha_creacion, fecha_modificacion, fuente, usuario_creador, id_region, id_comuna)
VALUES 
	(1, 'cabuffon', '228512239', '69174535', 'carlos@gmail.com', 'cabuffon@hotmail.com', 'cabuffon@csti.com', 'avenida la haciena', '123',1 , '2017-01-01 00:00:00', '2017-01-01 00:00:00','fuente', 1, 1, 1101);


DROP TABLE `world`.`region`

CREATE TABLE `world`.`region` (
	  `id_region` INT NOT NULL,
	  `nombre` VARCHAR(100) NOT NULL
  ); 
  
INSERT INTO world.region(id_region, nombre) VALUES(0,'SIN REGIÓN');
INSERT INTO world.region(id_region, nombre) VALUES(1,'DE TARAPACÁ');
INSERT INTO world.region(id_region, nombre) VALUES(2,'DE ANTOFAGASTA');
INSERT INTO world.region(id_region, nombre) VALUES(3,'DE ATACAMA');
INSERT INTO world.region(id_region, nombre) VALUES(4,'DE COQUIMBO');
INSERT INTO world.region(id_region, nombre) VALUES(5,'DE VALPARAÍSO');
INSERT INTO world.region(id_region, nombre) VALUES(6,'DEL LIBERTADOR BERNARDO OHIGGINS');
INSERT INTO world.region(id_region, nombre) VALUES(7,'DEL MAULE');
INSERT INTO world.region(id_region, nombre) VALUES(8,'DEL BIOBÍO');
INSERT INTO world.region(id_region, nombre) VALUES(9,'DE LA ARAUCANÍA');
INSERT INTO world.region(id_region, nombre) VALUES(10,'DE LOS LAGOS');
INSERT INTO world.region(id_region, nombre) VALUES(11,'DE AYSÉN DEL GENERAL CARLOS IBAÑEZ DEL CAMPO');
INSERT INTO world.region(id_region, nombre) VALUES(12,'DE MAGALLANES Y DE LA ANTÁRTICA CHILENA');
INSERT INTO world.region(id_region, nombre) VALUES(13,'METROPOLITANA DE SANTIAGO');
INSERT INTO world.region(id_region, nombre) VALUES(14,'DE LOS RÍOS');
INSERT INTO world.region(id_region, nombre) VALUES(15,'DE ARICA Y PARINACOTA');  


  
 DROP TABLE `world`.`comuna`
 
CREATE TABLE `world`.`comuna` (
	  `id_comuna` INT NOT NULL,
      `id_region` INT NOT NULL,
      `id_deprov` INT NOT NULL,
	  `nombre` VARCHAR(100) NOT NULL
  );   
  
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(0,0,0,'SIN COMUNA');
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(1101,1,11,'IQUIQUE');
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(1107,1,11,'ALTO HOSPICIO');
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(1401,1,14,'POZO ALMONTE');
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(1402,1,14,'CAMIÑA');
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(1403,1,14,'COLCHANE');
INSERT INTO world.comuna (id_comuna, id_region, id_deprov, nombre) VALUES(1404,1,14,'HUARA');  

  DROP TABLE `world`.`usuario`
  
  CREATE TABLE `world`.`usuario` (
	  `id_usuario` INT NOT NULL,
	  `rut` INT NOT NULL,
      `dv` VARCHAR(1) NOT NULL,
      `nombres` VARCHAR(100) NOT NULL,
      `paterno` VARCHAR(100) NOT NULL,
      `materno` VARCHAR(100) NOT NULL,
      `email` VARCHAR(50) NOT NULL,
      `ldap` VARCHAR(50) NOT NULL,
      `estado` INT NOT NULL,
      `fecha_creacion` timestamp NOT NULL,
      `fecha_modificacion` timestamp NOT NULL
  ); 
  
  INSERT INTO world.usuario(id_usuario, rut, dv, nombres, paterno, materno, email, ldap, estado, fecha_creacion, fecha_modificacion)
  VALUES(0, 1, '9', 'OPTIMUS', 'PRIME', '', 'optimus.prime@supereduc.cl', 'optimus.prime', 1, '2015-10-08 12:28:20.0', '2015-10-08 12:28:20.0');
  INSERT INTO world.usuario(id_usuario, rut, dv, nombres, paterno, materno, email, ldap, estado, fecha_creacion, fecha_modificacion)
  VALUES(1, 1, '9', 'DANIEL', 'CARRASCO', 'OLGUIN', 'daniel.carrasco@supereduc.cl', 'daniel.carrasco', 1, '2015-10-08 12:28:20.0', '2015-10-08 12:28:20.0');
     
DROP TABLE `world`.`establecimiento`

SELECT nombre FROM world.estado WHERE id_estado = e.id_estado

DROP TABLE `world`.`establecimiento` 
 
 CREATE TABLE `world`.`establecimiento` (
rbd int,
dv char,
nombre_esta varchar(100),
rut_sostenedor int,
nombre_director varchar(100),
paterno_director varchar(100),
materno_director varchar(100),
direccion_esta varchar(300),
direccion_esta_num varchar(10),
telefono_esta_area smallint,
telefono_esta varchar(15),
celular_esta varchar(15),
mail_esta varchar(50),
ruralidad smallint,
convenio_sep smallint,
convenio_pie smallint,
clasificacion_sep varchar(100),
software_propio varchar(100),
clave varchar(100),
vigente smallint,
fecha_creacion timestamp,
fecha_modificacion timestamp,
fuente varchar(100),
usuario_creador smallint,
usuario_modificador smallint,
id_estado smallint,
id_dependencia smallint,
id_region int,
id_provincia int,
id_comuna int)

INSERT INTO world.establecimiento(rbd, dv, nombre_esta, rut_sostenedor, nombre_director, paterno_director, materno_director, 
direccion_esta, direccion_esta_num, telefono_esta_area, telefono_esta,celular_esta,mail_esta,ruralidad,convenio_sep,convenio_pie,
clasificacion_sep,software_propio,clave,vigente,fecha_creacion,fecha_modificacion,fuente,usuario_creador,usuario_modificador,id_estado,id_dependencia,id_region,id_provincia,id_comuna)
  VALUES(0, 1, 'NOMBRE', '1', 'PRIME', 'OPTIMUS', 'optimus',
  'DIRE1', 'DIRE2', 2, '5555777', '9999999', 'optimus.prime@supereduc.cl', '3',1, 1,
  'CLAS1', 'SOFTWARE', '1234', 1, '2015-10-08 12:28:20.0','2015-10-08 12:28:20.0','FUENTE1',1,1,1,1,1,11,1);
  
 
 
  CREATE TABLE `world`.`estado` (
id_estado smallint,
nombre varchar(100))
  
INSERT INTO world.estado (id_estado,nombre) VALUES (1,'FUNCIONANDO');
INSERT INTO world.estado(id_estado,nombre) VALUES (2,'EN RECESO, CERRADO TEMPORALMENTE');
INSERT INTO world.estado (id_estado,nombre)  VALUES (3,'CERRADO');
INSERT INTO world.estado (id_estado,nombre) VALUES (4,'AUTORIZADO SIN MATRICULA');

  CREATE TABLE `world`.`dependencia` (
id_dependencia smallint,
descripcion varchar(100),
estado smallint,
fecha_creacion timestamp,
fecha_modificacion timestamp
)

INSERT INTO world.dependencia (id_dependencia,descripcion) VALUES (1,'CORPORACIÓN MUNICIPAL');
INSERT INTO world.dependencia (id_dependencia,descripcion) VALUES (2,'MUNICIPAL DAEM');
INSERT INTO world.dependencia (id_dependencia,descripcion) VALUES (3,'PARTICULAR SUBVENCIONADO');
INSERT INTO world.dependencia (id_dependencia,descripcion) VALUES (4,'PARTICULAR PAGADO O NO SUBVENCIONADO');
INSERT INTO world.dependencia (id_dependencia,descripcion) VALUES (5,'CORPORACIÓN DE ADMINISTRACIÓN DELEGADA (DL 3166)');
  
create table `world`.representante_legal(
rut_representante varchar(9),
dv_representante varchar(1),
rut_sostenedor varchar(9),
nombre_representante varchar(20),
paterno_representante varchar(20),
materno_representante varchar(20),
vigente int);

insert into `world`.representante_legal values('12345678','9','1','Juanito','Perez','Loyola',1);


CREATE TABLE `world`.`establecimientos_agendamientos` (
id smallint,
rbd int,
nombre varchar(100),
nom_region varchar(100),
dependencia varchar(100),
financiamiento varchar(100)
)                  
            
INSERT INTO world.establecimientos_agendamientos(id, rbd, nombre,nom_region,dependencia,financiamiento) 
VALUES(1,97,'name','MARGA MARGA','dependencia','financiamiento');     

CREATE TABLE `world`.`agendamientos` (
establecimiento_formulario_id smallint,
fecha timestamp,
estado varchar(100),
folio varchar(100)
)       

INSERT INTO world.agendamientos(establecimiento_formulario_id, fecha, estado,folio) 
VALUES(1,'2015-10-08 12:28:20.0','activo','999');     


CREATE TABLE `world`.`actas` (
	  `NumeroActa` INT,
      `idTipoPrograma` VARCHAR(100),
      `FechaIngreso` timestamp,
      `RBD` INT
  ); 
INSERT INTO world.actas(NumeroActa, idTipoPrograma, FechaIngreso,RBD) 
VALUES(1,1,'2015-10-08 12:28:20.0',97);   
  
  
CREATE TABLE `world`.`003_Acta` (
	  `Numero` INT,
	  `ID` INT
  );  
INSERT INTO world.003_Acta(Numero, ID) 
VALUES(1,1);
  
DROP TABLE `world`.`TipoPrograma`   
 CREATE TABLE `world`.`TipoPrograma` (
	  `idTipoPrograma` INT,
      TipoPrograma varchar(40)
  );   
INSERT INTO world.TipoPrograma(idTipoPrograma,TipoPrograma) 
VALUES(1,'MI PROGRAMA');  

CREATE TABLE `world`.`EstadoExpediente` (
	  `ID` INT
  );  
INSERT INTO world.EstadoExpediente(ID) 
VALUES(1);

