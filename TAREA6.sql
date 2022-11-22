--USE BD2

--1. Listar las materias (cod_materia y nombre) de las carreras de la FIE con m�s de 40 estudiantes
SELECT m.cod_materia, m.nombre, count(cod_estudiante)
FROM materia m
JOIN matricula mt on mt.cod_materia = m.cod_materia
JOIN carrera c on c.cod_carrera = m.cod_carrera
WHERE cod_facultad = '001FIE'
GROUP BY m.cod_materia, m.nombre
HAVING count(cod_estudiante) >= 1

--2. Listar las estudiantes (cod_estudiante, nombre) matriculados a BD1 que se encuentran con segunda matr�cula.
SELECT e.cod_estudiante, nombre
FROM matricula mt
JOIN estudiante e on mt.cod_estudiante = e.cod_estudiante
GROUP BY e.cod_estudiante, nombre
HAVING count(mt.cod_materia) = 2

--3. Conocer las materias (cod_materia y nombre) de la carrera de software cuyo promedio de nota (parcial1) es inferior al 75%
SELECT m.cod_materia, m.nombre
FROM carrera c
JOIN materia m on m.cod_carrera = c.cod_carrera
JOIN evaluacion e on e.cod_materia = m.cod_materia
WHERE c.cod_carrera = '0001'
GROUP BY m.cod_materia, m.nombre
HAVING AVG(e.notaFinal) < 15

--4. Conocer las materias de la carrera de software con el mayor número de estudiantes con mayor igual a segunda  matriculas.
SELECT m.nombre
FROM materia m
JOIN carrera c on m.cod_carrera = c.cod_carrera
JOIN matricula mt on mt.cod_materia = m.cod_materia
WHERE c.cod_carrera = '0001'
GROUP BY m.nombre
HAVING count(mt.cod_materia) = 2 

--5. Conocer las materias cuya nota promedio (nota1) sea inferior al promedio general de la carrera de software
SELECT nombre, nota1
FROM evaluacion e
JOIN materia m on m.cod_materia = e.cod_materia
WHERE nota1 < 
	(
		SELECT AVG(nota1) 
		FROM evaluacion e
		JOIN materia m on e.cod_materia = m.cod_materia
		JOIN carrera c on c.cod_carrera = m.cod_carrera
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

