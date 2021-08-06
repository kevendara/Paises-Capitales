
-----------------------------------------------------
--TEMA : BASE DE DATOS : PAISES-CAPITALES------------
-----------------------------------------------------


-----------------------------------------------------
----------------CÓDIGO SQL---------------------------
-----------------------------------------------------


CREATE DATABASE PAISES_CAPITALES
	GO

USE PAISES_CAPITALES
	GO

CREATE TABLE PAISES(

	CODIGO_PAIS					INT NOT NULL IDENTITY PRIMARY KEY,
	NOMBRE_PAIS					VARCHAR (200)  NOT NULL,
	NUMERO_HABITANTES_PAIS		INT NOT NULL,
	IDIOMA_PREDOMINANTE_PAIS	VARCHAR (100) NOT NULL
)
								GO
			

CREATE TABLE CAPITALES_PAISES (

	COD_CAPITAL						INT NOT NULL IDENTITY PRIMARY KEY,
	NOMBRE_CAPITAL					VARCHAR (200)  NOT NULL,
	NUMERO_HABITANTES_CAPITAL		INT NOT NULL,
	IDIOMA_PREDOMINANTE_CAPITAL		VARCHAR (100) NOT NULL,
	CODIGO_PAIS						INT NOT NULL
)
									GO

	ALTER TABLE CAPITALES_PAISES ADD FOREIGN KEY (CODIGO_PAIS) REFERENCES PAISES (CODIGO_PAIS)
	GO

	select * FROM  PAISES
	select * FROM  CAPITALES_PAISES


------------------------------------------------------------------------------------------
--------------------------------PROCEDIMIENTOS ALMACENADOS--------------------------------
------------------------------------------------------------------------------------------
 
------------------------------------------------------------------------------------------
----------------------------------------TABLA CAPITALES----------------------------------
------------------------------------------------------------------------------------------


-----------------------------------------------------
---------------------CREATE(C)-----------------------
-----------------------------------------------------

CREATE PROCEDURE CREATE_PAIS(
	@NOMBRE_PAIS				varchar(200),
	@NUMERO_HABITANTES_PAIS		int,
	@IDIOMA_PREDOMINANTE_PAIS	varchar(100)			
)	
	as
	begin
	BEGIN TRY
		BEGIN TRANSACTION
			--INTENTR INSERTAR EL REGISTRO
		INSERT INTO PAISES(
			--CODIGO_PAIS,
			NOMBRE_PAIS,
			NUMERO_HABITANTES_PAIS,
			IDIOMA_PREDOMINANTE_PAIS
		)
		VALUES (
			--CODIGO_PAIS,
			@NOMBRE_PAIS,
			@NUMERO_HABITANTES_PAIS,
			@IDIOMA_PREDOMINANTE_PAIS	
		)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
END

-----------------------------------------------------
----------------------READ(R)------------------------
-----------------------------------------------------

CREATE PROCEDURE select_PAISES
	as 
	begin
	SELECT * FROM PAISES
	end
 
CREATE PROCEDURE SELECT_PAIS(
	@CODIGO_PAIS	int
	)
	AS 
	BEGIN 
	SELECT *FROM PAISES WHERE CODIGO_PAIS=@CODIGO_PAIS
	END

-----------------------------------------------------
--------------------UPDATE(U)------------------------
-----------------------------------------------------

CREATE PROCEDURE UPDATE_PAIS(
	@CODIGO_PAIS				int,
	@NOMBRE_PAIS				varchar(200),
	@NUMERO_HABITANTES_PAIS		int,
	@IDIOMA_PREDOMINANTE_PAIS	varchar(100)			
) 
	as
	BEGIN
	BEGIN TRY
	BEGIN TRAN
	UPDATE	PAISES

	SET		NOMBRE_PAIS					=	@NOMBRE_PAIS,
			NUMERO_HABITANTES_PAIS		=	@NUMERO_HABITANTES_PAIS,
			IDIOMA_PREDOMINANTE_PAIS	=	@IDIOMA_PREDOMINANTE_PAIS
	WHERE	CODIGO_PAIS					=	@CODIGO_PAIS

	COMMIT TRAN
	END TRY
BEGIN CATCH
	ROLLBACK
END CATCH
END
			
-----------------------------------------------------
--------------------DELETE(D)------------------------
-----------------------------------------------------

CREATE PROCEDURE DELETE_PAIS(
	@CODIGO_PAIS	INT
)
	AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN
				DELETE FROM PAISES
				WHERE CODIGO_PAIS=@CODIGO_PAIS
			COMMIT TRAN
		END TRY
	BEGIN CATCH
			ROLLBACK
	END CATCH
	END


-----------------------------
-----TRANSACCIONES-----------
-----------------------------

EXEC [DBO].[CREATE_PAIS] 'ECUADOR',14000000,'ESPAÑOL'
EXEC [DBO].[CREATE_PAIS] 'COLOMBIA',19000000,'ESPAÑOL'
EXEC [DBO].[CREATE_PAIS] 'PERU',16000000,'ESPAÑOL'


EXEC [dbo].[SELECT_PAISES]
EXEC [dbo].[SELECT_PAIS] 2
EXEC [dbo].[UPDATE_PAIS] 2, 'COLOMBI',13000000,'INGLES'
EXEC [dbo].[DELETE_PAIS] 2


--------------------------------------------------------------------------------------
----------------------------------------TABLA CAPITALES-------------------------------
--------------------------------------------------------------------------------------


-----------------------------------------------------
---------------------CREATE(C)-----------------------
-----------------------------------------------------

CREATE PROCEDURE CREATE_CAPITAL(
	@NOMBRE_CAPITAL					varchar(200)	,
	@NUMERO_HABITANTES_CAPITAL		int	,
	@IDIOMA_PREDOMINANTE_CAPITAL	varchar(100),	
	@CODIGO_PAIS					int				
) as
begin
	BEGIN TRY
		BEGIN TRANSACTION
			--INTENTR INSERTAR EL REGISTRO
		INSERT INTO CAPITALES_PAISES(
			--CODIGO_CAPITAL,
			NOMBRE_CAPITAL,			
			NUMERO_HABITANTES_CAPITAL,	
			IDIOMA_PREDOMINANTE_CAPITAL,	
			CODIGO_PAIS			
		)
		VALUES (
			--CODIGO_CAPITAL,
			@NOMBRE_CAPITAL,			
			@NUMERO_HABITANTES_CAPITAL,	
			@IDIOMA_PREDOMINANTE_CAPITAL,	
			@CODIGO_PAIS		
		)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
END

-----------------------------------------------------
----------------------READ(R)------------------------
-----------------------------------------------------
CREATE PROCEDURE select_CAPITALES
	as
	begin
		SELECT * FROM CAPITALES_PAISES
	end
 
CREATE PROCEDURE SELECT_CAPITAL(
	@COD_CAPITAL int
	)
	AS 
	BEGIN 
	SELECT *FROM CAPITALES_PAISES WHERE COD_CAPITAL=@COD_CAPITAL
	END

-----------------------------------------------------
--------------------UPDATE(U)------------------------
-----------------------------------------------------

CREATE PROCEDURE UPDATE_CAPITAL(
	@COD_CAPITAL					int,
	@NOMBRE_CAPITAL					varchar(200)	,
	@NUMERO_HABITANTES_CAPITAL		int	,
	@IDIOMA_PREDOMINANTE_CAPITAL	varchar(100),	
	@CODIGO_PAIS					int				
) 
	as
	BEGIN
		BEGIN TRY
				BEGIN TRAN
				UPDATE	CAPITALES_PAISES
				SET		NOMBRE_CAPITAL				=	@NOMBRE_CAPITAL,
						NUMERO_HABITANTES_CAPITAL	=	@NUMERO_HABITANTES_CAPITAL,
						IDIOMA_PREDOMINANTE_CAPITAL	=	@IDIOMA_PREDOMINANTE_CAPITAL,
						CODIGO_PAIS					=	@CODIGO_PAIS
				WHERE	COD_CAPITAL					= @COD_CAPITAL
				COMMIT TRAN
				END TRY
		BEGIN CATCH
	ROLLBACK
	END CATCH
END
			
-----------------------------------------------------
--------------------DELETE(D)------------------------
-----------------------------------------------------

CREATE PROCEDURE DELETE_CAPITAL(
	@COD_CAPITAL	INT
)
	AS 
	BEGIN
		BEGIN TRY
		BEGIN TRAN
			DELETE FROM CAPITALES_PAISES
			WHERE COD_CAPITAL=@COD_CAPITAL
			COMMIT TRAN
		END TRY
	BEGIN CATCH
	ROLLBACK
	END CATCH
END

-----------------------------
-----TRANSACCIONES-----------
-----------------------------

EXEC [dbo].[CREATE_CAPITAL] 'QUITO',50000,'ESPAÑOL',1
EXEC [dbo].[CREATE_CAPITAL] 'LIMA',340000,'ESPAÑOL',1
EXEC [dbo].[CREATE_CAPITAL] 'BODOTA',4589,'INGLES',2
EXEC [dbo].[CREATE_CAPITAL] 'IBARRA',26000,'ESPAÑOL',3

EXEC [dbo].[select_CAPITALES]
EXEC [dbo].[select_PAISES]
EXEC [dbo].[SELECT_PAIS] 2
EXEC [dbo].[UPDATE_CAPITAL] 2,'LIMA',43678,'ESPAÑOL', 3

EXEC [dbo].[UPDATE_CAPITAL] 4,'BOGOTA',4589,'ESPAÑOL',4


EXEC [dbo].[UPDATE_PAIS] 2, 'COLOMBIA',13000000,'INGLES'

EXEC [dbo].[DELETE_PAIS] 2

