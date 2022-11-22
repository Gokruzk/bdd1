--USE BD2_NJ

--LISTADO DE LOS ESTUDIANTE CUYA NOTA SEA MAYOR IGUAL AL PROMEDIO DEL CURSO
SELECT apellido, nombre, notaFinal
FROM evaluacion ev
JOIN estudiante e on ev.cod_estudiante = e.cod_estudiante
WHERE notaFinal >= (SELECT AVG(notaFinal) from evaluacion)
ORDER BY 1

--NOTA MAXIMA Y NOTA MINIMA POR CADA MATERIA
SELECT nombre, MAX(notaFinal), MIN(notaFinal)
FROM evaluacion ev
JOIN materia m on ev.cod_materia = m.cod_materia
GROUP BY nombre
ORDER BY 1

