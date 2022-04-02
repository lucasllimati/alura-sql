-- Testando o número de notas fiscais

/*
Crie um script que, baseado em uma data, conte o número de notas fiscais.
Se houver mais de 70 notas, exiba a mensagem "Muita nota".
Se não, exiba a mensagem "Pouca nota". Exiba também o número de notas.
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