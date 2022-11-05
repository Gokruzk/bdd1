CREATE DATABASE PRODUCTOS
USE PRODUCTOS
create table depas(
	cod int,
	nombre char(80),
	primary key(cod)
);

create table responsables(
	id_res char(4),
	cod_dep int,
	nombre char(80),
	primary key(id_res),
	foreign key(cod_dep) references depas(cod)
);

insert into depas(cod,nombre) values
	(1,'21'),
	(2,'22'),
	(3,'23'),
	(4,'24'),
	(5,'25');

insert into responsables(id_res, cod_dep, nombre) values
	('001',1,'steven'),
	('002',1,'nigell'),
	('003',2,'marcel'),
	('004',3,'jama'),
	('005',4,'oyarvide'),
	('006',5,'navia'),
	('007',2,'activo'),
	('008',4,'ffff');

select distinct count(cod_dep)
from responsables

--having count(cod_dep)>2

SELECT nombre, count(cod_dep)
FROM RESPONSABLES
GROUP BY nombre

select * from responsables
select * from depas

select d.nombre, count(r.id_res)
from responsables r
inner join depas d on r.cod_dep = d.cod
group by d.nombre
having count(r.id_res)>=2


use BD2
--EDAD
select year(GETDATE()) - year(fecha_nac), nombre from estudiante
select fecha_nac
from estudiante

--Listado de estudiantes y etnia
SELECT es.nombre, et.nombre as etnia
FROM estudiante es
INNER JOIN etnia et on es.etnia = et.cod_etnia

--Listado de estudiantes matriculados con estado de materia
SELECT m.cod_estudiante, em.nombre
FROM matricula m
INNER JOIN estado_mat em on m.estado = em.cod_estado_mat
