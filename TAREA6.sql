--USE BD2

--1. Listar las materias (cod_materia y nombre) de las carreras de la FIE con m s de 40 estudiantes
SELECT m.cod_materia, m.nombre, count(cod_estudiante)
FROM materia m
JOIN matricula mt on mt.cod_materia = m.cod_materia
JOIN carrera c on c.cod_carrera = m.cod_carrera
WHERE cod_facultad = '001FIE'
GROUP BY m.cod_materia, m.nombre
HAVING count(cod_estudiante) > 40

--2. Listar las estudiantes (cod_estudiante, nombre) matriculados a BD1 que se encuentran con segunda matricula.
SELECT e.cod_estudiante, nombre, apellido
FROM matricula mt
JOIN estudiante e on mt.cod_estudiante = e.cod_estudiante
GROUP BY e.cod_estudiante, nombre, apellido
HAVING count(mt.cod_materia) = 2

--3. Conocer las materias (cod_materia y nombre) de la carrera de software cuyo promedio de nota (parcial1) es inferior al 75%
SELECT m.cod_materia, m.nombre
FROM carrera c
JOIN materia m on m.cod_carrera = c.cod_carrera
JOIN evaluacion e on e.cod_materia = m.cod_materia
WHERE c.cod_carrera = '0001'
GROUP BY m.cod_materia, m.nombre
HAVING AVG(e.notaFinal) < 15

--4. Conocer las materias de la carrera de software con el mayor número de estudiantes con mayor igual a segundas matriculas.
--estudiantes con 2 y mas matriculas
SELECT cod_materia, cod_estudiante
FROM matricula
GROUP by cod_materia, cod_estudiante
HAVING count(cod_estudiante) >= 2

--cantidad de estudiantes por materia de software
SELECT m.nombre, count(cod_estudiante)
FROM materia m
JOIN carrera c on m.cod_carrera = c.cod_carrera
JOIN matricula mt on mt.cod_materia = m.cod_materia
WHERE c.cod_carrera = '0001'
GROUP BY m.nombre

SELECT TOP 1 m.nombre
FROM matricula mt
JOIN materia m on m.cod_materia = mt.cod_materia
WHERE EXISTS (
	SELECT m.nombre, count(cod_estudiante)
	FROM materia m
	JOIN carrera c on m.cod_carrera = c.cod_carrera
	JOIN matricula mt on mt.cod_materia = m.cod_materia
	WHERE c.cod_carrera = '0001'
	GROUP BY m.nombre
)
GROUP by m.nombre, cod_estudiante
HAVING count(cod_estudiante) >= 2

--5. Conocer las materias cuya nota promedio (nota1) sea inferior al promedio general de la carrera de software
SELECT nombre, nota1
FROM evaluacion e
JOIN materia m on m.cod_materia = e.cod_materia
WHERE nota1 < 
	(
		SELECT AVG(notaFinal) 
		FROM evaluacion e
		JOIN materia m on e.cod_materia = m.cod_materia
		WHERE m.cod_carrera = '0001'
	)

--6. Conocer las materias según el periodo académico con menos estudiantes de 25 estudiantes
SELECT mt.cod_periodo, m.nombre
FROM materia m
JOIN matricula mt on mt.cod_materia = m.cod_materia
GROUP BY mt.cod_periodo, m.nombre
HAVING count(mt.cod_estudiante) < 25
ORDER BY 1

--7. Conocer la tasa de repitencia por materia (Número de estudiantes matriculados en la materia 
--/ número de estudiantes que han reprobado dicha materia) de la carrera de software en un periodo académico específico.

SELECT mt.cod_materia, COUNT(cod_estudiante)--/COUNT(mt.cod_materia)--/(SELECT COUNT(cod_materia) FROM matricula GROUP BY cod_materia HAVING COUNT(cod_materia) >= 2)
FROM matricula mt
JOIN materia m on m.cod_materia = mt.cod_materia
WHERE m.cod_carrera = '0001' and mt.cod_periodo = '2122'
GROUP BY mt.cod_materia

SELECT DISTINCT COUNT(cod_materia)
FROM matricula
GROUP BY cod_materia

select DISTINCT cod_materia, COUNT(cod_estudiante)
from matricula
GROUP BY cod_materia

