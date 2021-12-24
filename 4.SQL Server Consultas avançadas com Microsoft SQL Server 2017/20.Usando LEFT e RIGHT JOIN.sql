/* LEFT E RIGHT JOIN */

USE SUCOS_VENDAS

SELECT * 
FROM [TABELA DE CLIENTES]
INNER JOIN [NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF

SELECT * 
FROM [TABELA DE CLIENTES]

SELECT [TABELA DE CLIENTES].[NOME], COUNT(*) AS [QUANTIDADE DE COMPRAS]
FROM [TABELA DE CLIENTES]
INNER JOIN [NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].[NOME]

SELECT [TABELA DE CLIENTES].[NOME], COUNT(*) AS [QUANTIDADE DE COMPRAS]
FROM [TABELA DE CLIENTES]
LEFT JOIN [NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].[NOME]

SELECT [TABELA DE CLIENTES].[CPF], [TABELA DE CLIENTES].[NOME], COUNT(*) AS [QUANTIDADE DE COMPRAS]
FROM [TABELA DE CLIENTES]
LEFT JOIN [NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY  [TABELA DE CLIENTES].[CPF], [TABELA DE CLIENTES].[NOME]

SELECT * FROM [NOTAS FISCAIS] WHERE CPF = '95939180787'

/* O CLIENTE Fábio Carvalho - CPF: 95939180787 NÃO FEZ COMPRA, PORÉM APARECE NA CONSULTA LEFT JOIN, POIS ESTA SENDO CONSIDERADO 1 (UM) REGISTRO NA CONSULTA, NO CASO NULL.*/



SELECT [TABELA DE CLIENTES].[NOME], [NOTAS FISCAIS].[MATRICULA] FROM [TABELA DE CLIENTES] LEFT JOIN 
[NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF

SELECT DISTINCT [TABELA DE CLIENTES].[NOME], [NOTAS FISCAIS].[MATRICULA] FROM [TABELA DE CLIENTES] LEFT JOIN 
[NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF

SELECT DISTINCT [TABELA DE CLIENTES].[NOME], [NOTAS FISCAIS].[MATRICULA] FROM [NOTAS FISCAIS] RIGHT JOIN 
 [TABELA DE CLIENTES] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF