
--Usar base de datos
use BD2_NJ

--Insertar filas

--Tabla facultad
insert into facultad(cod_facultad, nombre) values('001FIE','Facultad de informatica y electronica');
insert into facultad(cod_facultad, nombre) values('002FADE','Facultad de administracion de empresas');
insert into facultad(cod_facultad, nombre) values('003FCP','Facultad de ciencias pecuarias');
insert into facultad(cod_facultad, nombre) values('004FIME','Facultad de mecanica');

--Tabla area
insert into area(cod_area, nombre) values
	('001','basica'),
	('002','profesionalizante'),
	('003','integracion curricular');

--Tabla estado_mat
insert into estado_mat(cod_estado_mat,nombre) values
	('001','Pendiente'),
	('002','Definitiva');

--Tabla estado_eva
insert into estado_eva(cod_estado_eva,nombre) values
	('001','Pendiente'),
	('002','Aprobada');

--Tabla periodo
insert into periodo(cod_periodo,descripcion,fecha_inicio,fecha_fin) values
	('1920','Periodo 2019 - 2020','2019-04-16','2020-07-23'),
	('2021','Periodo 2020 - 2021','2020-04-16','2021-07-23'),
	('2122','Periodo 2021 - 2022','2021-04-16','2022-07-23');

--Tabla etnia
insert into etnia(cod_etnia,nombre) values
	('001','Negro'),
	('002','Mestizo'),
	('003','Blanco'),
	('004','Tsachilas');

--Tabla carrera
insert into carrera(cod_carrera,nombre,cod_facultad) values
	('0001','Software','001FIE'),
	('0002','Telematica','001FIE'),
	('0003','Telecomunicaciones','001FIE'),
	('0004','Diseño grafico','001FIE'),
	('0005','Electronica','001FIE'),
	('0006','Pecuaria','003FCP'),
	('0007','Agraria','003FCP'),
	('0008','Finanzas','002FADE'),
	('0009','Economia','002FADE'),
	('0010','Mecanica','004FMI'),
	('0011','Industrial','004FMI'),
	('0012','Industrial','004FMI'),
	('0013','Mantenimiento','004FMI'),
	('0013','Mantenimiento','004FMI'),
	('0014','Tecnologias de la informacion','001FIE'),
	('0015','Administracion de empresas','002FADE'),
	('0016','Mercadotecnia','002FADE'),
	('0017','Contabilidad y auditoria','002FADE'),
	('0018','Gestion de transporte','002FADE'),
	('0019','Mercadotecnia','002FADE'),
	('0020','Mantenimiento industrial','004FMI');

--Tabla materia
insert into materia(cod_materia,nombre,semestre,cod_area,cod_carrera) values
	('0001','base de datos 1','cuarto','001','001'),
	('0002','estructura de datos','cuarto','001','001'),
	('0003','gestion administrativa','cuarto','001','001'),
	('0004','sostenibilidad ambiental','cuarto','001','001'),
	('0005','calculo 1','cuarto','001','001'),
	('0006','calculo 2','cuarto','001','001'),
	('0007','fisica 1','cuarto','001','001'),
	('0008','fisica 2','cuarto','001','001'),
	('0009','mate discreta 1','cuarto','001','001'),
	('0010','mate discreta 2','cuarto','001','001'),
	('0011','ingles 1','cuarto','001','001'),
	('0012','ingles 2','cuarto','001','001'),
	('0013','ingles 3','cuarto','001','001'),
	('0014','ingles 4','cuarto','001','001'),
	('0015','ecuaciones diferenciales','cuarto','001','001'),
	('0016','emprendimiento','quinto','001','001'),
	('0017','base de datos 2','quinto','001','001'),
	('0018','redes 1','sexto','001','001'),
	('0019','redes 2','septimo','001','001'),
	('0020','ecuaciones diferenciales','cuarto','001','001');

--Tabla estudiante
insert into estudiante(cod_estudiante,cedula,nombre,apellido,fecha_nac,direccion,discapacidad,sexo,etnia) values
	('7046','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7045','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7044','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7043','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7042','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7041','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7040','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7039','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7038','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7037','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7036','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7035','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7034','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7033','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7032','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7031','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7030','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7029','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7028','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7027','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002');


--Tabla matricula
insert into matricula(cod_estudiante,cod_materia,cod_periodo,fecha_matricula,estado) values
	('7046','001','001','2022-09-19','002'),
	('7045','001','001','2022-09-19','002'),
	('7044','001','001','2022-09-19','002'),
	('7043','001','001','2022-09-19','002'),
	('7042','001','001','2022-09-19','002'),
	('7041','001','001','2022-09-19','002'),
	('7040','001','001','2022-09-19','002'),
	('7039','001','001','2022-09-19','002'),
	('7038','001','001','2022-09-19','002'),
	('7037','001','001','2022-09-19','002'),
	('7036','001','001','2022-09-19','002'),
	('7035','001','001','2022-09-19','002'),
	('7034','001','001','2022-09-19','002'),
	('7033','001','001','2022-09-19','002'),
	('7032','001','001','2022-09-19','002'),
	('7031','001','001','2022-09-19','002'),
	('7030','001','001','2022-09-19','002'),
	('7029','001','001','2022-09-19','002'),
	('7028','001','001','2022-09-19','002'),
	('7027','001','001','2022-09-19','002');

--Tabla evaluacion					
insert into evaluacion(cod_estudiante,cod_materia,cod_periodo,nota1,nota2,notaFinal,estado) values
	('001','Facultad de informatica y electronica'),
	('002','Facultad de administracion de empresaqs'),
	('003','Facultad de ciencias pecuarias'),
	('004','Facultad de mecanica');

--Eliminar filas

--Modificar filas