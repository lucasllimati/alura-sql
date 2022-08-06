-- Loop

/*
Em exercícios anteriores, construímos um script para obter o número de notas fiscais de uma determinada data. Veja-o abaixo:
Transforme este script em uma função onde passamos a data como parâmetro e retornamos o número de notas. Chame esta função de NumeroNotas. Após a sua criação, teste seu uso com um SELECT.
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