USE BD2_NJ

-- FUNCION PARA OBTENER NOMBRE DE UN ALUMNO SEGUN SU CODIGO

CREATE FUNCTION getNombresEstudiante(@codigo char(4))
RETURNS varchar(80)
AS
BEGIN
	DECLARE @nomb varchar(80)
	DECLARE @apellido varchar(80)
	SELECT @nomb = nombre, @apellido = apellido 
	FROM estudiante 
	WHERE cod_estudiante = @codigo
	IF(@nomb is NULL)
		BEGIN 
			SET @nomb = ''
		END	
	RETURN @nomb + ' ' + @apellido 
END

SELECT dbo.getNombreEstudiante('7046') as NOMBRES

-- FUNCION PARA OBTENER MATERIAS DE ESTUDIANTE

ALTER FUNCTION getMateria
(
	@codigo varchar(10)
)
	RETURNS table
	AS
BEGIN
	RETURN 
		(
			SELECT nombre
			FROM matricula mt
			JOIN materia m on mt.cod_materia = m.cod_materia
			WHERE cod_estudiante = @codigo
		)
END

SELECT * FROM dbo.getMateria('7046')



		SELECT nombre
		FROM matricula mt
		JOIN materia m on mt.cod_materia = m.cod_materia
		WHERE cod_estudiante = @codigo



