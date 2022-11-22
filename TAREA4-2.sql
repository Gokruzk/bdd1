1)    Conocer los responsables (nombres) que no tienen bienes a su cargo

	SELECT NOMBRE
	FROM RESPONSABLES R
	LEFT JOIN BIENES B on R.ID_RES = B.ID_RES
	WHERE B.ID_RES IS NULL

2)     Consultar los top 5  responsables (nombre) con más bienes a su cargo

	SELECT TOP 5 NOMBRE, COUNT(COD_DEPA)
	FROM RESPONSABLES
	ORDER BY 2

3)     Cuantos bienes hay de acuerdo con su estado
	
	SELECT ESTADO, CODIGO, DESCRIPCION
	FROM BIENES
	GROUP BY ESTADO

4)     Los últimos 3 bienes que fueron adquiridos

 	SELECT TOP 3 CODIGO, DESCRIPCION, FECHA_ADQ
	FROM  BIENES
	ORDER BY 3 DESC

5)     Los bienes de mayor y menor valor

	SELECT VALOR
	FROM BIENES
	ORDER BY 1 DESC

6)     El total ($) disponible en bienes

	SELECT SUM(VALOR)
	FROM BIENES

7).    Conocer los departamentos con responsables que no tengan bienes a su cargo

	SELECT COD_DEPA, NOMBRE_DEPA
	FROM DEPARTAMENTOS D
	JOIN RESPONSABLES R on D.COD_DEPA = R.COD_DEPA
	LEFT JOIN BIENES B on R.ID_RES = B.ID_RES
	WHERE B.ID_RES IS NULL
	
	