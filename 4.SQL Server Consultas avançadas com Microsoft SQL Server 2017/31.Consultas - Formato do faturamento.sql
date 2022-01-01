/* 31.Consultas - Formato do faturamento */
/* Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos a quantidade e o faturamento. Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro. */

USE SUCOS_VENDAS

SELECT YEAR(DATA) AS [ANO], FLOOR(SUM(IMPOSTO * (QUANTIDADE * PREÇO))) AS [IMPOSTO]
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)

/* EXTRA: IMPOSTO POR ANO */

SELECT YEAR(DATA) AS [ANO], FLOOR(SUM(IMPOSTO * (QUANTIDADE * PREÇO))) AS [IMPOSTO]
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA)