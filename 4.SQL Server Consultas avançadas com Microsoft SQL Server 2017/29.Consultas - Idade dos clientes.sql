/* 29.Consultas - Idade dos clientes */
/* Crie uma consulta que mostre o nome e a idade dos clientes. */

USE SUCOS_VENDAS

SELECT NOME, DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE()) AS IDADE
FROM [TABELA DE CLIENTES]