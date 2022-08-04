/*
Utilizando debug/depurador

Temos 3 tipos de tabelas tempor�rias:
	- # : Tabelas que valem para a conex�o vigente.
	- ##: Tabelas que valem para v�rias conex�es
	- @ : Tabelas que valem para procedimento que esta sendo executado no momento.
*/


USE [SUCOS_VENDAS]

DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT, @CONTADOR_NOTAS INT
DECLARE @TABELA_NUMEROS TABLE ([NUMERO] INT, [STATUS] VARCHAR(200))
CREATE TABLE #TABELA_NUMEROS2 ([NUMERO] INT, [STATUS] VARCHAR(200))

SET @LIMITE_MINIMO = 98
SET @LIMITE_MAXIMO = 101

SET NOCOUNT ON
WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
   SELECT @CONTADOR_NOTAS = COUNT(*) FROM [NOTAS FISCAIS] WHERE [NUMERO] = @LIMITE_MINIMO
   IF @CONTADOR_NOTAS > 0 
       BEGIN
          INSERT INTO @TABELA_NUMEROS ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, '� nota fiscal')
	      INSERT INTO #TABELA_NUMEROS2 ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, '� nota fiscal')
	   END
   ELSE
       BEGIN
          INSERT INTO @TABELA_NUMEROS ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'N�o � nota fiscal')
	      INSERT INTO #TABELA_NUMEROS2 ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'N�o � nota fiscal')
	   END
   SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1   
END

SELECT * FROM @TABELA_NUMEROS
SELECT * FROM #TABELA_NUMEROS2
