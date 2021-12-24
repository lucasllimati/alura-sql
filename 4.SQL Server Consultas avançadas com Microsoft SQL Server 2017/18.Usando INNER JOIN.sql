/* JOINs - junção de tabelas*/

USE SUCOS_VENDAS

SELECT * FROM [TABELA DE VENDEDORES]

SELECT * FROM [NOTAS FISCAIS]

/* COMPARTIVO DE VENDAS DA VENDEDORA ROBERTA */
SELECT COUNT(*) [NUMERO DE NF] FROM [NOTAS FISCAIS]
WHERE MATRICULA = 00237

SELECT * FROM [TABELA DE VENDEDORES] INNER JOIN 
[NOTAS FISCAIS] ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA

SELECT * FROM [TABELA DE VENDEDORES] A INNER JOIN 
[NOTAS FISCAIS] B ON A.MATRICULA = B.MATRICULA

/* TOTAL DE VENDAS POR VENDEDOR */
SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], COUNT(*) AS [NUMERO DE NF POR VENDEDOR]
FROM [TABELA DE VENDEDORES]
INNER JOIN [NOTAS FISCAIS] ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME]

/* TOTAL DE VENDAS POR VENDEDOR - COMPARATIVO ANUAL */
SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA) AS [ANO], COUNT(*) AS [NUMERO DE NF POR VENDEDOR]
FROM [TABELA DE VENDEDORES] 
INNER JOIN [NOTAS FISCAIS] ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA)

/* TOTAL DE VENDAS POR VENDEDOR - COMPARATIVO ANUAL E ORDENAÇÃO POR ANO E NOME DO VENDEDOR */
SELECT [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA) AS [ANO], COUNT(*)  AS [NUMERO DE NF POR VENDEDOR]
FROM [TABELA DE VENDEDORES] INNER JOIN 
[NOTAS FISCAIS] ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
GROUP BY [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].[NOME], YEAR(DATA)
ORDER BY YEAR(DATA), [TABELA DE VENDEDORES].[NOME]

/* FORMA ANTIGA */

SELECT * FROM [TABELA DE VENDEDORES] INNER JOIN 
[NOTAS FISCAIS] ON [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA

SELECT * FROM [TABELA DE VENDEDORES], [NOTAS FISCAIS]
WHERE [TABELA DE VENDEDORES].MATRICULA = [NOTAS FISCAIS].MATRICULA
