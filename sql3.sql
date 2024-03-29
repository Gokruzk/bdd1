
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
	('001','PEN'),
	('002','DEN');

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
	('0004','Dise�o grafico','001FIE'),
	('0005','Electronica','001FIE'),
	('0006','Pecuaria','003FCP'),
	('0007','Agraria','003FCP'),
	('0008','Finanzas','002FADE'),
	('0009','Economia','002FADE'),
	('0010','Mecanica','004FIME'),
	('0011','Industrial','004FIME'),
	('0012','Industrial','004FIME'),
	('0013','Mantenimiento','004FIME'),
	('0014','Mantenimiento','004FIME'),
	('0015','Tecnologias de la informacion','001FIE'),
	('0016','Administracion de empresas','002FADE'),
	('0017','Mercadotecnia','002FADE'),
	('0018','Contabilidad y auditoria','002FADE'),
	('0019','Gestion de transporte','002FADE'),
	('0020','Mantenimiento industrial','004FIME');

--Tabla materia
insert into materia(cod_materia,nombre,semestre,cod_area,cod_carrera) values
	('0001','base de datos 1','4','001','0001'),
	('0002','estructura de datos','4','001','0001'),
	('0003','gestion administrativa','4','001','0001'),
	('0004','sostenibilidad ambiental','4','001','0005'),
	('0005','calculo 1','1','001','0002'),
	('0006','calculo 2','2','001','0002'),
	('0007','fisica 1','1','001','0005'),
	('0009','mate discreta 1','3','001','0003'),
	('0010','mate discreta 2','4','001','0002'),
	('0011','ingles 1','1','001','0010'),
	('0012','ingles 2','2','001','0011'),
	('0013','ingles 3','3','001','0014'),
	('0014','ingles 4','4','001','0009'),
	('0015','ecuaciones diferenciales','3','001','0005'),
	('0016','emprendimiento','5','001','0001'),
	('0017','base de datos 2','5','001','0001'),
	('0018','redes 1','6','001','0001'),
	('0019','redes 2','7','001','0001'),
	('0020','sistemas operativos','4','001','0001');

--Tabla estudiante
insert into estudiante(cod_estudiante,cedula,nombre,apellido,fecha_nac,direccion,discapacidad,sexo,etnia) values
	('7046','0850106188','NIGELL MARCEL','JAMA OYARVIDE','2002-01-06','esmeraldas','no','M','002'),
	('7045','0850106120','OMAR ROGELIO','GREFA ANDI','2004-02-06','guayaquil','no','M','002'),
	('7044','0850146128','ALEJANDRO SEBASTIAN','SALAZAR MANTILLA','2001-08-06','quito','si','M','002'),
	('7043','0850106178','ANDREA ALEJANDRA','MORETA SOLIS','2005-07-06','los rios','si','F','002'),
	('7042','0850106168','DORIS SELENA','VILLALVA BARRAGAN','2006-10-06','riobamba','si','F','002'),
	('7041','0850106158','NIGELL MARCEL','JAMA OYARVIDE','2007-11-06','esmeraldas','no','M','003'),
	('7040','0850106148','JOSEPH STEVEN','GONZALEZ ORDONIEZ','2000-10-06','santo domingo','no','M','004'),
	('7039','0852206138','BBBB BBBB','AAAA AAAAAAAA','2001-11-06','esmeraldas','si','F','001'),
	('7038','0850106128','CCCCC CCCCC','BBBB BBBBB','2003-12-06','ambato','si','F','002'),
	('7037','0840106118','DAYANA LISBETH','NARANJO VITERI','2001-07-06','cuenca','no','F','003'),
	('7036','0870106108','CIELO DE LOS ANGELES','MORILLO OBANDO','2000-09-06','loja','no','F','004'),
	('7035','0850106588','FIORELLA MARINA','AMAGUAYA SISA','2004-10-06','caniar','no','F','001'),
	('7034','0850106688','KEYLA GUADALUPE','MUNIOZ CCCC','2005-11-06','banios','si','F','003'),
	('7033','0850106788','VICTOR HUGO','OCHOA BOLANIOS','2007-12-06','guayaquil','si','M','004'),
	('7032','0850106888','DIEGO LIZANDRO','CAMPOS GUEVARA','2008-02-06','manabi','no','M','001'),
	('7031','0850106988','STALIN ANDRES','ALVARADO ALQUINGA','2009-05-06','portoviejo','no','M','002'),
	('7030','0850106108','GEOVANNY ISMAEL','CARVAJAL VALDIVIESO','2010-06-06','santo domingo','si','M','003'),
	('7029','0850106118','JHOEL ESTIVEN','CAIZA PPPP','2003-07-06','el oro','no','M','001'),
	('7028','0850116128','JUAN ALEJANDRO','YAUCEN HHHH','2000-08-06','cuencia','si','M','002'),
	('7027','0850106138','FRANCIS PATRICIO','SEPULVEDA AAAA','2001-09-06','morona santiago','no','M','004');

--Tabla matricula
insert into matricula(cod_estudiante,cod_materia,cod_periodo,fecha_matricula,estado) values
	('7046','0001','1920','2022-09-19','002'),
	('7045','0001','2021','2022-09-19','002'),
	('7044','0002','1920','2022-09-19','002'),
	('7043','0002','2021','2022-09-19','002'),
	('7042','0001','1920','2022-09-19','002'),
	('7041','0001','2021','2022-09-19','002'),
	('7040','0002','1920','2022-09-19','002'),
	('7039','0002','2021','2022-09-19','002'),
	('7038','0003','1920','2022-09-19','002'),
	('7037','0010','2021','2022-09-19','002'),
	('7036','0011','2122','2022-09-19','002'),
	('7035','0012','2122','2022-09-19','002'),
	('7034','0013','2021','2022-09-19','002'),
	('7033','0014','1920','2022-09-19','002'),
	('7032','0015','2021','2022-09-19','002'),
	('7031','0016','1920','2022-09-19','002'),
	('7030','0017','2122','2022-09-19','002'),
	('7029','0018','2021','2022-09-19','002'),
	('7028','0019','1920','2022-09-19','002'),
	('7027','0020','2122','2022-09-19','002');

insert into matricula(cod_estudiante,cod_materia,cod_periodo,fecha_matricula,estado) values
	('7027','0006','2122','2022-09-19','002');	

--Tabla evaluacion					
insert into evaluacion(cod_estudiante,cod_materia,cod_periodo,nota1,nota2,notaFinal,estado) values
	('001','Facultad de informatica y electronica'),
	('002','Facultad de administracion de empresaqs'),
	('003','Facultad de ciencias pecuarias'),
	('004','Facultad de mecanica');

--Eliminar filas

--Modificar filas