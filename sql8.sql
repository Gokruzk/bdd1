

select * from evaluacion
select * from estudiante
select * from materia
select * from estado_eva

insert into evaluacion(cod_estudiante, cod_materia, cod_periodo, nota1, nota2, notaFinal, estado) values
('7027', '0001','2122',20,5,25,'002'),
('7027', '0020','2122',20,5,25,'002'),
('7027', '0005','2122',20,5,25,'002'),
('7027', '0006','2122',20,5,25,'002'),
('7028', '0019','1920',20,7,27,'002'),
('7029', '0018','2021',20,6,26,'002'),
('7030', '0017','2122',20,8,28,'002'),
('7031', '0016','1920',20,1,21,'002'),
('7032', '0015','2021',20,10,30,'002'),
('7033', '0014','1920',20,0,20,'002'),
('7040', '0002','1920',20,6,26,'002'),
('7041', '0001','2021',20,8,28,'002'),
('7042', '0001','1920',20,1,21,'002'),
('7044', '0002','1920',20,10,30,'002'),
('7043', '0002','2021',20,0,20,'002'),
('7046', '0001','1920',20,20,40,'002');

--Nota maxima y minima de una materia especifica
select MIN(notaFinal) as 'Nota_Minima', MAX(notaFinal) as 'Nota_Maxima'
FROM evaluacion
WHERE cod_materia = '0001'

--Nota promedio de cada materia
select cod_materia, AVG(notaFinal) as 'Nota_Promedio'
FROM evaluacion
GROUP BY cod_materia

--3 Materias con con mas bajo promedio
select Top 3 cod_materia, AVG(notaFinal) as 'Nota_Promedio'
FROM evaluacion
GROUP BY cod_materia
ORDER BY 2 asc

--Promedio de las materias por cada periodo
select cod_periodo, cod_materia, AVG(notaFinal) as 'Nota_Promedio'
FROM evaluacion
GROUP BY cod_periodo, cod_materia
ORDER BY 1,3 asc

--Materias cuyo nota promedio sea inferior a %70
--Agrupa, calcula promedio, filtra los < 28
select cod_materia, AVG(notaFinal) as 'Nota_Promedio'
FROM evaluacion
GROUP BY cod_materia
HAVING AVG(notaFinal) < 28
ORDER BY 1,2

--xIncorrectox : excluye las notas < 28, y calcula promedio
select cod_materia, AVG(notaFinal) as 'Nota_Promedio'
FROM evaluacion
where notaFinal < 28
GROUP BY cod_materia
ORDER BY 1,2

--Conocer el numero de estudiantes por materia en cada uno de los periodos academicos
--Agrupa por periodo y materia -> muestra n estudiantes
select cod_periodo, cod_materia, count(cod_estudiante) as 'cantidadEstudiantes'
FROM matricula
group by cod_periodo, cod_materia
ORDER BY 1,2

--Conocer la materia y el periodo con el mayor numero de estudiantes > 1 estudiantes
--Agrupa por materia y periodo, filtra y muestra < 5
select cod_materia, cod_periodo, count(cod_estudiante) as 'cantidadEstudiantes'
FROM matricula
group by cod_materia, cod_periodo
Having count(cod_estudiante) > 1
ORDER BY 1,2

--Conocer la materia y el periodo con el mayor numero de estudiantes > 1 de un periodo especifico
select cod_materia, cod_periodo, count(cod_estudiante) as 'cantidadEstudiantes'
FROM matricula
WHERE cod_periodo = '1920'
group by cod_materia, cod_periodo
Having count(cod_estudiante) > 1
ORDER BY 1,2