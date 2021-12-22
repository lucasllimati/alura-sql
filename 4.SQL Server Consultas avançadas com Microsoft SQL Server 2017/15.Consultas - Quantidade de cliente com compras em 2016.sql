/* 15.Consultas - Quantidade de cliente com compras em 2016 */
/* Quais são os clientes que fizeram mais de 2000 compras em 2016? 3 */

USE SUCOS_VENDAS

SELECT CPF, COUNT(*) AS 'QUANTIDADE' FROM [NOTAS FISCAIS] 
WHERE YEAR(DATA) = 2016 
GROUP BY CPF 
HAVING COUNT(*) > 2000