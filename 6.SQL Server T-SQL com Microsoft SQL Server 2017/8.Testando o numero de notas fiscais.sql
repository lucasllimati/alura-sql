-- Testando o n�mero de notas fiscais

/*
Crie um script que, baseado em uma data, conte o n�mero de notas fiscais.
Se houver mais de 70 notas, exiba a mensagem "Muita nota".
Se n�o, exiba a mensagem "Pouca nota". Exiba tamb�m o n�mero de notas.
*/

USE [SUCOS_VENDAS]

DECLARE @DATANOTA DATE
DECLARE @NUMNOTAS INT

SET @DATANOTA = '20170102'

SELECT @NUMNOTAS = COUNT(*)
FROM [NOTAS FISCAIS]
WHERE DATA = @DATANOTA

IF @NUMNOTAS > 70
    PRINT 'Muita nota'
ELSE
    PRINT 'Pouca nota'

PRINT @NUMNOTAS