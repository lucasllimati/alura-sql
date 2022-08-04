-- Loop

/*
Em exerc�cios anteriores, constru�mos um script para obter o n�mero de notas fiscais de uma determinada data. Veja-o abaixo:
Transforme este script em uma fun��o onde passamos a data como par�metro e retornamos o n�mero de notas. Chame esta fun��o de NumeroNotas. Ap�s a sua cria��o, teste seu uso com um SELECT.
*/

USE [SUCOS_VENDAS]

DECLARE @NUMNOTAS INT
SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
    WHERE DATA = '20170101'
PRINT @NUMNOTAS

CREATE FUNCTION NUMERONOTAS (@DATA DATE) RETURNS INT
AS
BEGIN
DECLARE @NUMNOTAS INT
SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
    WHERE DATA = @DATA
RETURN @NUMNOTAS
END

SELECT [dbo].[NUMERONOTAS]('20170202')