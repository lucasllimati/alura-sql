-- Testando o número de notas fiscais usando SELECT

/*
Baseado no script de resposta do exercício anterior: Em vez de testar com a variável @NUMNOTAS, use a própria consulta SQL na condição de teste.
*/

USE [SUCOS_VENDAS]

DECLARE @DATANOTA DATE
DECLARE @NUMNOTAS INT

SET @DATANOTA = '20170102'

SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
    WHERE DATA = @DATANOTA
IF @NUMNOTAS > 70
    PRINT 'Muita nota'
ELSE
    PRINT 'Pouca nota'
PRINT @NUMNOTAS