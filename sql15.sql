--USE BD2_NJ

--LISTA DE ESTUDIANTES QUE HAN APROBADO UNA MATERIA ESPECIFICA EN UN PERIODO ESPECIFICO
SELECT ev.cod_estudiante, e.nombre, e.apellido--, ev.cod_periodo
FROM evaluacion ev
JOIN materia m on ev.cod_materia = m.cod_materia
JOIN estudiante e on ev.cod_estudiante = e.cod_estudiante
WHERE ev.cod_materia = '0001' and estado = '002' and cod_periodo = '2122'

select * from evaluacion

--any al menos con uno 
SELECT e.cod_estudiante, e.nombre, e.apellido
FROM estudiante e
WHERE e.cod_estudiante = ALL(
		SELECT cod_estudiante
		FROM evaluacion
		WHERE cod_materia = '0001' and estado = '002' and cod_periodo = '1920'
		)

--NOTA MAXIMA Y NOTA MINIMA POR CADA MATERIA
SELECT MAX(notaFinal)
FROM evaluacion ev

SELECT MIN(notaFinal)
FROM evaluacion ev

--SUBQUERY CORRELACIONADA
SELECT DISTINCT m.cod_materia, nombre, 
	(SELECT MAX(notaFinal) FROM evaluacion ev WHERE ev.cod_materia = m.cod_materia), 
	(SELECT MIN(notaFinal) FROM evaluacion ev WHERE ev.cod_materia = m.cod_materia)
FROM materia m
JOIN evaluacion ev on m.cod_materia = ev.cod_materia

--CONOCER TODOS LOS ESTUDIANTES QUE NO SE HAN MATRICULADO
SELECT E.cod_estudiante, nombre, apellido
FROM estudiante e
LEFT JOIN matricula m on e.cod_estudiante = m.cod_estudiante
WHERE m.cod_estudiante IS NULL