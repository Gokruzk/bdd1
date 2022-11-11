--Conocer estudiante por cada materia
SELECT m.nombre, apellido, es.nombre
FROM evaluacion e
JOIN estudiante es on e.cod_estudiante = es.cod_estudiante
JOIN materia m on e.cod_materia = m.cod_materia
ORDER BY 1,2

--Listado de las notas de cada estudiante con matricula definitiva
SELECT ma.nombre, apellido, es.nombre, es.nombre, notaFinal, p.descripcion
FROM evaluacion e
JOIN estudiante es on e.cod_estudiante = es.cod_estudiante			--matricula pk compuesta / 
JOIN matricula m on e.cod_materia = m.cod_materia and e.cod_estudiante = m.cod_estudiante and e.cod_periodo=m.cod_periodo
JOIN materia ma on e.cod_materia = ma.cod_materia
JOIN periodo p on e.cod_periodo = p.cod_periodo
WHERE m.estado = '002'
ORDER BY 1,2

--Materias comunes en diferentes carreras
SELECT distinct(m.nombre) as 'materia', c.nombre as 'carrera', f.nombre as 'factultad'
FROM materia m
JOIN carrera c on m.cod_carrera = m.cod_carrera
JOIN facultad f on c.cod_facultad = f.cod_facultad
ORDER BY 1,2

--Conocer el anio con el mayor numero de matriculados
SELECT TOP 1 year(fecha_matricula) as 'Anio', COUNT(cod_periodo) as 'cantMatric'
FROM matricula 
GROUP BY year(fecha_matricula)
ORDER BY 1	desc	

select * from matricula