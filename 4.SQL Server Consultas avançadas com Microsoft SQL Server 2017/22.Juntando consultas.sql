/* UNION - JUN??O DE SELECT (TABELAS) */

USE SUCOS_VENDAS

SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO
FROM [TABELA DE CLIENTES]

SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO
FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO
FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO
FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO
FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO
FROM [TABELA DE VENDEDORES]
ORDER BY BAIRRO

/* TESTE DE ERRO, O SEGUNDO CAMPO S?O DIFERENTE, POR ESSE MOTIVO ESSA QUERY APRESENTA ERRO */
SELECT DISTINCT [TABELA DE CLIENTES].[BAIRRO], [TABELA DE CLIENTES].[DATA DE NASCIMENTO]
FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].[NOME]
FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].[BAIRRO], [TABELA DE CLIENTES].[NOME]
FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].[NOME]
FROM [TABELA DE VENDEDORES]
ORDER BY BAIRRO, NOME

SELECT DISTINCT [TABELA DE CLIENTES].[BAIRRO], [TABELA DE CLIENTES].[NOME], 'CLIENTE' AS [TIPO]
FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].[NOME], 'VENDEDOR' AS [TIPO]
FROM [TABELA DE VENDEDORES]
ORDER BY BAIRRO, NOME, TIPO