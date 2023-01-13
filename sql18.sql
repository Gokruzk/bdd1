CREATE DATABASE CALENDARIO
USE CALENDARIO

CREATE TABLE DIM_FECHA(
	[ID_FECHA] int primary key
      ,[ANIO] int
      ,[SEMESTRE] varchar(5)
      ,[QTR] varchar(5)
      ,[TRI] varchar(5)
      ,[MES_DES] nvarchar(20)
      ,[MES_NUM] int
      ,[DIA] datetime
      ,[ETL_FECHA_CARGA] datetime
      ,[ETL_OPERACION] char(1)
)

create procedure SP_CALENDARIO	--Se crea el procedimiento almacenado
as
begin	--Inicio bloque principal
	declare @Fecha datetime	--Se declara variable fecha
	declare @FechaFinal datetime	--Se declara variale FechaFinal

	set @Fecha =  '2000/01/01'	--Se asigna una fecha
	set @FechaFinal = '2100/12/31'	--Se asigna una fecha

	while @Fecha < @FechaFinal	--Mientras Fecha no llegue a FechaFinal
	begin	-- Empieza un sub-bloque
		insert into DIM_FECHA (	--Insercion de datos en tabla DIM_FECHA
		 [ID_FECHA]
		  ,[ANIO]
		  ,[SEMESTRE]
		  ,[QTR]
		  ,[TRI]
		  ,[MES_DES]
		  ,[MES_NUM]
		  ,[DIA]
		  ,[ETL_FECHA_CARGA]
		  ,[ETL_OPERACION]
	 )

		values(	--Valores a insertar
		  cast (cast(@Fecha as datetime)as integer)	--Se convierte la variable Fecha en datetime y se devuelve la conversión a entero
		 ,DATEPART(YEAR,@Fecha)	--Se obtiene el anio de la fecha y se devuelve la conversión a entero
		 , case when DATEPART(M,@Fecha)<=6 then 'SEM 1' else  'SEM 2' end	--En caso de que el mes <= 6 se devuelve 'SEM 1' sino 'SEM 2' y fin de case
		 , case when DATEPART(Q,@Fecha)=1 then 'QTR 1' --En caso de que el cuatrimestre sea 1 se devuelve 'QTR 1'
				WHEN DATEPART(Q,@Fecha)=2 THEN 'QTR 2' --En caso de que el cuatrimestre sea 2 se devuelve 'QTR 2'
			   WHEN DATEPART(Q,@Fecha)=3 THEN 'QTR 3'  END --En caso de que el cuatrimestre sea 3 se devuelve 'QTR 3' y fin de case 
		 , case when DATEPART(M,@Fecha)<=3 then 'TRI 1' --En caso de que el trimestre sea 1 se devuelve 'TRI 1'
				when DATEPART(M,@Fecha)>3 and DATEPART(M,@Fecha)<=6 then 'TRI 2' --En caso de que el trimestre sea >3 y <=6 se devuelve 'TRI 2'
				when DATEPART(M,@Fecha)>6 and DATEPART(M,@Fecha)<=9 then 'TRI 3' --En caso de que el trimestre sea >6 y <=9 se devuelve 'TRI 3'
				when DATEPART(M,@Fecha)>9 and DATEPART(M,@Fecha)<=12 then 'TRI 4' --En caso de que el trimestre sea >9 y <=12 se devuelve 'TRI 4'
		   end --Fin de case
		 , DATENAME(M,@Fecha) --Se obtiene y se devuelve el nombre del mes
		 ,DATEPART(M,@Fecha) --Se obtiene y se devuelve el numero del mes
		 ,@Fecha --Se devuelve el valor actual de fecha
		 ,GETDATE() --Se devuelve la fecha actual
		 ,'I' --Se devuelve un string
	 )
		set @Fecha = @Fecha + 1	--Se aumenta la fecha en 1
	  end --Fin sub-bloque

end	--Fin bloque principal

EXEC SP_CALENDARIO
SELECT * FROM DIM_FECHA WHERE ANIO = '2023';