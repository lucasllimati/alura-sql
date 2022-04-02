-- Usando SELECT para atribuir valores

/*
Crie uma variável chamada NUMNOTAS e atribua a ela o número de notas fiscais do dia 01/01/2017. Mostre na saída do script o valor da variável.
*/

DECLARE @NUMNOTAS INTEGER

SELECT @NUMNOTAS = COUNT(*)
FROM [NOTAS FISCAIS] 
WHERE DATA = '20170101'

PRINT @NUMNOTAS