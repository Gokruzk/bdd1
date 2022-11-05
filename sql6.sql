/*
--GROUP BY: hacer grupos especificos, solo para sumar contar promedios
--HAVING: 
--no hay having sin group by
--Funciones agregadas:

	AVG: promedios
	COUNT
	SUM
	MAX
	MIN
*/
use BD2_NJ

--Requerimientos:
/*
1. Numero de estudiantes hombres y mujeres matriculados
*/
--cuenta filas
select count(*) as "Cantidad de matriculados"
from matricula		
--cuenta filas en funcion de la columna, excepto nulos
select count(cod_estudiante)
from matricula

select count(cod_estudiante) as 'numeroEstudiantesRegistrados'
from estudiante

--Todos los registros de matricula
select cod_estudiante from matricula;
--Contar estudiantes matriculados, no cuenta los que se repiten
select count(distinct cod_estudiante) from matricula

--Contar masculino y femenino
select sexo, count(cod_estudiante) as 'cantidad'
from estudiante 
group by sexo

--contar etnias en estudiantes
select etnia, count(cod_estudiante) as 'etnia'
from estudiante
group by etnia

select * from etnia

--numeros de estudiantes inferior a 3 segun las etnias
--filtro de grupos: having
select etnia, count(cod_estudiante) as 'cantidad'
from estudiante
group by etnia
having count(cod_estudiante) > 5

--Numero de estudiantes mujeres segun sus etnias
--having es sobre los grupos
select etnia, count(sexo) as 'cantidadDeMujeres'
from estudiante
where sexo = 'M'
group by etnia

--Numero de estudiantes por sexo y por etnia
select sexo, etnia, count(cod_estudiante) as 'cantidad'
from estudiante
group by sexo, etnia
order by 1,2

--Numero de estudiantes > 2 por sexo y por etnia 
select sexo, etnia, count(cod_estudiante) as 'cantidad'
from estudiante
group by sexo, etnia
having count(cod_estudiante) > 2
order by 1,2

--Numero de estudiantes mujeres > 1 y por etnia 
select sexo, etnia, count(cod_estudiante) as 'cantidad'
from estudiante
where sexo='F'
group by sexo, etnia
having count(cod_estudiante) > 1
order by 1,2

--Conocer las dos etnias con mayor numero de estudiantes registrados
select top 2 etnia, count(cod_estudiante) as 'etnia'
from estudiante
group by etnia
order by 2 desc
