/* Consulta condicional - Quantidade de registros */

/* Observe no canto inferior direito do grid, que apresenta o resultado o n�mero de registros listados. Quantos registros foram retornados? 1932 */

USE SUCOS_VENDAS

SELECT *  FROM [ITENS NOTAS FISCAIS] 
WHERE [QUANTIDADE] > 60 AND [PRE�O] <= 3