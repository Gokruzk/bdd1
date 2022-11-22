--USE BD2_NJ
--CONOCER ESTUDIANTES REGISTRADOS QUE NO SE HAN MATRICULADO
SELECT cod_estudiante 
FROM estudiante

EXCEPT

SELECT cod_estudiante
FROM matricula

--CONOCER ESTUDIANTES MATRICULADOS
SELECT cod_estudiante
FROM estudiante

INTERSECT

SELECT cod_estudiante
FROM matricula

--UNION
SELECT cod_estudiante
FROM estudiante

UNION

SELECT cod_estudiante
FROM matricula
