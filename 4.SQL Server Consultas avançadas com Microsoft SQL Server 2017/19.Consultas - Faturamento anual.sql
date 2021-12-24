/* 19.Consultas - Faturamento anual */
/* Obtenha o faturamento anual da empresa. Leve em considera��o que o valor financeiro das vendas consiste em multiplicar a quantidade pelo pre�o. */

USE SUCOS_VENDAS

SELECT YEAR(DATA) AS [ANO], SUM (QUANTIDADE * [PRE�O]) AS [FATURAMENTO]
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA)