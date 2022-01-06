/* 33.Consultas - Listando expressao natural */
/* Queremos construir um SQL cujo resultado seja, para cada cliente: **"O cliente João da Silva faturou 120000 no ano de 2016". Somente para o ano de 2016. */

USE SUCOS_VENDAS

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PREÇO]))), ' no ano ', CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)