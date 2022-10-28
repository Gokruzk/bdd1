--USE BD2_NJ

--REQUERIMIENTOS

--1. Listado de todos los estudiantes
select * from estudiante
--2. Listado de solo mujeres
select * from estudiante where sexo = 'M'
--3. Listado de estudiantes solo codigo, apellidos, nombres
select cod_estudiante, nombre, apellido from estudiante
--4. Listado de estudiantes solo codigo uniendo apellidos y nombres
select cod_estudiante, nombre +' '+ apellido as 'estudiante' from estudiante
--5. Listado de estudiantes solo codigo uniendo apellidos y nombres y fecha nac
select cod_estudiante, nombre +' '+ apellido as 'estudiante' , fecha_nac from estudiante
--6. Select convirtiendo un tipo de dato a otro
select cast(getDate() as date)
--7. Buscar estudiante por apellido con patrones (empiece con J)
select cod_estudiante, nombre +' '+ apellido as 'estudiante' , fecha_nac 
from estudiante where apellido like 'J%' 
--8. Buscar estudiante por apellido con patrones (empiece con G, con 7 sin contar G)
select cod_estudiante, nombre +' '+ apellido as 'estudiante' , fecha_nac 
from estudiante where apellido like 'G_______'
--9 Intervalo de apellidos que empiezan de la A a la G
select cod_estudiante, nombre +' '+ apellido as 'estudiante' , fecha_nac 
from estudiante where apellido like '[A - G]%'