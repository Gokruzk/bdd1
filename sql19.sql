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

SELECT dbo.getNombresEstudiante('7046') as NOMBRES

-- FUNCION PARA OBTENER NOTA FINAL DE ESTUDIANTE

CREATE FUNCTION getNotaFinal
(
	@codigo varchar(10)
)
RETURNS varchar(80)
	AS
BEGIN
	RETURN 
		(
			SELECT notaFinal
			FROM evaluacion
			WHERE cod_estudiante = @codigo
		)
END

SELECT dbo.getNombresEstudiante('7046') as NOMBRES, dbo.getNotaFinal('7046')

