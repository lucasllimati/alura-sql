-- Testando o n�mero de notas fiscais usando SELECT

/*
Baseado no script de resposta do exerc�cio anterior: Em vez de testar com a vari�vel @NUMNOTAS, use a pr�pria consulta SQL na condi��o de teste.


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
*/
----------------------------------------------------------

USE [SUCOS_VENDAS]

DECLARE @DATANOTA DATE
SET @DATANOTA = '20170102'

IF (
	SELECT COUNT(*)
    FROM [NOTAS FISCAIS]
    WHERE DATA = @DATANOTA
) > 70
    PRINT 'Muita nota'
ELSE
    PRINT 'Pouca nota'