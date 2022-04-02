-- Usando SELECT para atribuir valores

/*
Crie uma vari�vel chamada NUMNOTAS e atribua a ela o n�mero de notas fiscais do dia 01/01/2017. Mostre na sa�da do script o valor da vari�vel.
*/

USE [SUCOS_VENDAS]

DECLARE @NUMNOTAS INTEGER

SELECT @NUMNOTAS = COUNT(*)
FROM [NOTAS FISCAIS] 
WHERE DATA = '20170101'

PRINT @NUMNOTAS