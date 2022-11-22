USE BD2_NJ
--CONOCER LOS ESTUDIANTES REGISTRADOS QUE NO SE HAN MATRICULADO
SELECT e.cod_estudiante, e.nombre, apellido
FROM estudiante e
LEFT JOIN matricula m on e.cod_estudiante = m.cod_estudiante
WHERE m.cod_estudiante IS NULL

SELECT e.cod_estudiante, e.nombre, apellido
FROM matricula m
RIGHT JOIN estudiante e on e.cod_estudiante = m.cod_estudiante
WHERE m.cod_estudiante IS NULL

--VISUALIZACION
SELECT e.cod_estudiante, m.nombre, mt.cod_periodo, mt.cod_materia
FROM evaluacion e
JOIN matricula mt on e.cod_materia = mt.cod_materia and e.cod_estudiante = mt.cod_estudiante and e.cod_periodo = mt.cod_periodo
RIGHT JOIN materia m on mt.cod_materia = m.cod_materia 
--WHERE mt.cod_materia IS NULL
--ORDER BY 1

--CONOCER LAS MATERIAS QUE AUN NO PASAN NOTAS
SELECT m.cod_materia, m.nombre
FROM evaluacion e
JOIN matricula mt on e.cod_materia = mt.cod_materia and e.cod_estudiante = mt.cod_estudiante and e.cod_periodo = mt.cod_periodo
RIGHT JOIN materia m on mt.cod_materia = m.cod_materia 
WHERE e.cod_materia is null

SELECT mt.cod_materia, mt.nombre
FROM evaluacion e
RIGHT JOIN materia mt on e.cod_materia = mt.cod_materia
WHERE e.cod_materia is null			

--CONOCER CUANTAS MATERIAS NO HAN PASADO NOTAS
SELECT COUNT(mt.cod_materia)
FROM evaluacion e
RIGHT JOIN materia mt on e.cod_materia = mt.cod_materia
WHERE e.cod_materia is null			

SELECT *
FROM evaluacion e
RIGHT JOIN matricula mt on e.cod_materia = mt.cod_materia and e.cod_estudiante = mt.cod_estudiante and e.cod_periodo = mt.cod_periodo
WHERE e.cod_materia is null	

