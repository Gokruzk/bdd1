--LISTADO EN ORDEN ALFABETICO DE TODOS LOS ESTUDIANTES MATRICULADOS

SELECT DISTINCT m.cod_estudiante, apellido, nombre
FROM matricula m, estudiante e
WHERE m.cod_estudiante = e.cod_estudiante
ORDER BY 2,1

SELECT DISTINCT m.cod_estudiante, apellido, nombre
FROM matricula m JOIN estudiante e on m.cod_estudiante = e.cod_estudiante
ORDER BY 2,1

--LISTADO EN ORDEN ALFABETICO DE TODOS LOS ESTUDIANTES MATRICULADOS EN UNA MATERIA ESPECIFICA

SELECT DISTINCT m.cod_estudiante, apellido, nombre
FROM matricula m, estudiante e
WHERE m.cod_estudiante = e.cod_estudiante and cod_materia = '0002'
ORDER BY 2,1

SELECT DISTINCT m.cod_estudiante, apellido, nombre
FROM matricula m 
JOIN estudiante e on m.cod_estudiante = e.cod_estudiante
WHERE m.cod_materia = '0002'
ORDER BY 2,1


--LISTADO DE ESTUDIANTES MATRICULADOS POR MATERIA

SELECT DISTINCT ma.nombre, m.cod_estudiante, apellido, e.nombre
FROM matricula m, estudiante e, materia ma
WHERE m.cod_estudiante = e.cod_estudiante and m.cod_materia = ma.cod_materia
ORDER BY 1,3

SELECT DISTINCT ma.nombre, m.cod_estudiante, apellido, e.nombre
FROM matricula m 
JOIN estudiante e on m.cod_estudiante = e.cod_estudiante
JOIN materia ma on ma.cod_materia = m.cod_materia
ORDER BY 1,3

select count(*) 
from matricula, estudiante
select count(*) 
from matricula
select count(*) 
from estudiante

--Filas esperadas:
select count(distinct cod_estudiante)
from matricula
