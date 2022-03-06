-- Usando Commit e Rollback

USE [VENDAS SUCOS]

SELECT * FROM [VENDEDORES]

-- Inicio da trasa��o: Salvar um arquivo de log (tempor�rio at� o COMMIT ou ROLLBACK)
BEGIN TRANSACTION

	UPDATE [VENDEDORES] SET [COMISS�O] = [COMISS�O] * 1.15

	INSERT INTO [VENDEDORES] ([MATR�CULA], [NOME], [BAIRRO],[COMISS�O], [DATA ADMISS�O], [F�RIAS])
	VALUES ('99999','Jo�o da Silva','Icara�',0.08,'2014-09-01',0)

ROLLBACK

COMMIT
