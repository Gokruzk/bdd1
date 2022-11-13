USE BD2

--1. Conocer los estudiantes (nombreApellido) de sexo femenino que han aprobado las asignaturas de un periodo específico
SELECT e.apellido, e.nombre, m.fecha_matricula, esv.nombre
FROM evaluacion ev
JOIN estudiante e on ev.cod_estudiante = e.cod_estudiante
JOIN matricula m on ev.cod_estudiante = m.cod_estudiante and ev.cod_materia = m.cod_materia and ev.cod_periodo = m.cod_periodo
JOIN estado_eva esv on ev.estado = esv.cod_estado_eva
WHERE e.sexo = 'F' and ev.estado = '002'

--2. Conocer las materias (nombre) con menos de 3 estudiantes
SELECT m.nombre, count(cod_estudiante) as 'nEstudiantes'
FROM matricula mt
JOIN materia m on mt.cod_materia = m.cod_materia
GROUP BY m.nombre
HAVING count(cod_estudiante) < 3

--3. La nota (nota2) promedio de cada materia
select m.nombre as 'materia', AVG(nota2) as 'notaPromedio'
FROM evaluacion e
JOIN materia m on e.cod_materia = m.cod_materia
GROUP BY m.nombre

--4. Conocer el total de estudiantes por carrera (nombre)
SELECT c.nombre, count(m.cod_estudiante)
FROM matricula m
JOIN materia mt on m.cod_materia = mt.cod_materia
JOIN carrera c on mt.cod_carrera = c.cod_carrera
JOIN estudiante es on m.cod_estudiante = es.cod_estudiante
GROUP BY c.nombre

--5. Conocer el número de carreras que tiene cada Facultad (nombre)
SELECT f.nombre as 'facultad', count(cod_carrera) as 'nCarreras'
FROM carrera c
JOIN facultad f on c.cod_facultad = f.cod_facultad
GROUP BY f.nombre

--6. Conocer el número o cantidad de matriculas realizadas por año
SELECT year(fecha_matricula), count(cod_estudiante)
FROM matricula
GROUP BY year(fecha_matricula)

--7. Conocer los 3 semestres que tienen más materias asignadas
SELECT top 3 semestre, count(mt.cod_materia) as 'materiasAsignadas'
FROM matricula mt
JOIN materia m on mt.cod_materia = m.cod_materia
GROUP BY semestre
ORDER BY 2 desc
