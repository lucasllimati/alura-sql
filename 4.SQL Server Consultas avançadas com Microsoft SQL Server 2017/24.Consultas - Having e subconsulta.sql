/* 24.Consultas - Having e subconsulta */
/* Relação entre HAVING e sub consulta. Qual seria a consulta, usando sub-consulta, que seria equivalente a: */

USE SUCOS_VENDAS

/* HAVING */
SELECT CPF, COUNT(*) AS [QUANTIDADE]
FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000

/* SUB CONSULTA*/
SELECT X.CPF, X.[QUANTIDADE]
FROM (
	SELECT CPF, COUNT(*) AS [QUANTIDADE]
	FROM [NOTAS FISCAIS]
	WHERE YEAR(DATA) = 2016
	GROUP BY CPF
	) X 
WHERE X.[QUANTIDADE] > 2000