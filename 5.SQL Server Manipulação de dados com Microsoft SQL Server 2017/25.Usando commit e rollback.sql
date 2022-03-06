-- Usando Commit e Rollback

USE [VENDAS SUCOS]

SELECT * FROM [VENDEDORES]

-- Inicio da trasação: Salvar um arquivo de log (temporário até o COMMIT ou ROLLBACK)
BEGIN TRANSACTION

	UPDATE [VENDEDORES] SET [COMISSÃO] = [COMISSÃO] * 1.15

	INSERT INTO [VENDEDORES] ([MATRÍCULA], [NOME], [BAIRRO],[COMISSÃO], [DATA ADMISSÃO], [FÉRIAS])
	VALUES ('99999','João da Silva','Icaraí',0.08,'2014-09-01',0)

ROLLBACK

COMMIT
