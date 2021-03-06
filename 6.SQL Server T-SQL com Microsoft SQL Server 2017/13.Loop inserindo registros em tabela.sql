-- Loop para inserir registros em uma tabela

USE [SUCOS_VENDAS]

-- Se a tabela [TABELA DE NUMEROS] existir no banco, ela ser? excluida
IF OBJECT_ID ('TABELA DE NUMEROS','U') IS NOT NULL
   DROP TABLE [TABELA DE NUMEROS]

-- Cria??o da tabela auxiliar
CREATE TABLE [TABELA DE NUMEROS] ([NUMERO] INT, [STATUS] VARCHAR(200))

--Declara??o de vari?veis
DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT, @CONTADOR_NOTAS INT

SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 100000

-- Comando que tira a mensagem de linhas afetadas, segunda aba de debug do SQL SERVER
SET NOCOUNT ON

-- Percorre cada Nota Fiscal e preenche o n?mero e o status
WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
	BEGIN
	   SELECT @CONTADOR_NOTAS = COUNT(*) FROM [NOTAS FISCAIS] WHERE [NUMERO] = @LIMITE_MINIMO
	   IF @CONTADOR_NOTAS > 0 
		   INSERT INTO [TABELA DE NUMEROS] ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, '? nota fiscal')
	   ELSE
		   INSERT INTO [TABELA DE NUMEROS] ([NUMERO], [STATUS]) VALUES (@LIMITE_MINIMO, 'N?o ? nota fiscal')
	   SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1   
	END

SELECT * FROM [TABELA DE NUMEROS]