/* 14. Consultas condicionais de agraga��o - HAVING */

USE SUCOS_VENDAS

SELECT * FROM [dbo].[TABELA DE CLIENTES]

SELECT ESTADO, SUM([LIMITE DE CREDITO]) AS 'SOMA' FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT ESTADO, SUM([LIMITE DE CREDITO]) AS 'SOMA' FROM [TABELA DE CLIENTES] GROUP BY ESTADO 
HAVING SUM([LIMITE DE CREDITO]) >= 850000

SELECT EMBALAGEM, SUM([PRE�O DE LISTA]) AS 'SOMA', MAX([PRE�O DE LISTA]) AS 'MAXIMO', MIN([PRE�O DE LISTA]) AS 'MINIMO' 
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM

SELECT EMBALAGEM, SUM([PRE�O DE LISTA]) AS 'SOMA', MAX([PRE�O DE LISTA]) AS 'MAXIMO', MIN([PRE�O DE LISTA]) AS 'MINIMO' 
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM
HAVING SUM([PRE�O DE LISTA]) <= 80

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS 'MAXIMO', MIN([PRE�O DE LISTA]) AS 'MINIMO' 
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM
HAVING SUM([PRE�O DE LISTA]) <= 80

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS 'MAXIMO', MIN([PRE�O DE LISTA]) AS 'MINIMO'
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM
HAVING SUM([PRE�O DE LISTA]) <= 80 AND MAX([PRE�O DE LISTA]) >= 6
