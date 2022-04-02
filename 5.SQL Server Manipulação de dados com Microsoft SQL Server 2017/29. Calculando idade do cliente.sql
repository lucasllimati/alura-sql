-- Calculando a idade do cliente
/*
Construa uma TRIGGER, de nome TG_CLIENTES_IDADE, que atualize as idades dos clientes, na tabela de clientes, toda vez que a tabela sofrer uma inclus�o, altera��o ou exclus�o.
*/

USE [VENDAS SUCOS]

SELECT [CPF], [IDADE], [DATA NASCIMENTO], 
    DATEDIFF(YEAR, [DATA NASCIMENTO], GETDATE()) AS [IDADE]
FROM CLIENTES


CREATE TRIGGER TG_CLIENTES_IDADE
ON [CLIENTES]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
UPDATE [CLIENTES] SET [IDADE] = 
    DATEDIFF(YEAR, [DATA NASCIMENTO], GETDATE());
END;