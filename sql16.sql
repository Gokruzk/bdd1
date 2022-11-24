--USE BD2

--LISTADO DE ESTUDIANTES QUE NO SE HAN MATRICULADO
SELECT cod_estudiante, nombre, apellido
FROM estudiante e
WHERE NOT EXISTS (SELECT DISTINCT cod_estudiante FROM matricula m WHERE e.cod_estudiante = m.cod_estudiante)

--LISTADO DE LOS ESTUDIANTES CUYA NOTA SEA MENOR A LA NOTA QUE TIENE UN ESTUDIANTE ESPECIFICO
SELECT e.apellido, e.nombre, notaFinal
FROM estudiante e
JOIN evaluacion ev on e.cod_estudiante = ev.cod_estudiante
WHERE notaFinal < 
				(
					SELECT notaFinal FROM evaluacion WHERE cod_estudiante = '7046'
				)
ORDER BY 1

--LISTADO DE LAS MATERIAS QUE TENGAN MAS DE 3 ESTUDIANTES MATRICULADOS
SELECT nombre
FROM materia m
WHERE EXISTS 
	(
		SELECT COUNT(mt.cod_materia)
		FROM matricula mt
		WHERE mt.cod_materia = m.cod_materia
		GROUP BY mt.cod_materia
		HAVING COUNT(mt.cod_materia) > 1
	)

--LISTADO DE ESTUDIANTES QUE HAN PASADO POR MAS DE UNA CARRERA
SELECT e.apellido, e.nombre, COUNT(e.cod_estudiante) as 'nCarreras'
FROM estudiante e
JOIN 
(
	SELECT DISTINCT c.nombre, cod_estudiante
	FROM matricula mt
	JOIN materia m on m.cod_materia = mt.cod_materia
	JOIN carrera c on c.cod_carrera = m.cod_carrera
) sq on e.cod_estudiante = sq.cod_estudiante
GROUP BY e.apellido, e.nombre
HAVING COUNT(e.cod_estudiante) > 1