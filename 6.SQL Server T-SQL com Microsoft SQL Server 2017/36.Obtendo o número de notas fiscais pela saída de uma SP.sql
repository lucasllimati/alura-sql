-- Obtendo o n�mero de notas fiscais pela sa�da de uma SP

/*
Construa uma SP (nome NumNotasSP) cujos par�metros s�o uma data, passada como valor, e o n�mero de notas, passado como refer�ncia. 
Depois, fa�a um script onde, na vari�vel @NUMNOTAS, some as notas do dia 01/01/2017 e 02/01/2017.

Dica: Na SP, crie uma vari�vel auxiliar e some da vari�vel que � passada como refer�ncia.
*/

USE [SUCOS_VENDAS]

-- Vamos criar a SP passando como par�metro a data (valor) e o n�mero de notas (como refer�ncia):
CREATE PROCEDURE NumNotasSP
@DATA AS DATE,
@NUMNOTAS AS INT OUTPUT
AS
BEGIN
    DECLARE @NUMNOTASLOCAL INT
    SELECT @NUMNOTASLOCAL = COUNT(*) 
        FROM [NOTAS FISCAIS] WHERE [DATA] = @DATA
    SET @NUMNOTAS = @NUMNOTAS + @NUMNOTASLOCAL
END

-- Agora vamos chamar a SP duas vezes, uma para o dia 01/01/2017 e outra vez para 02/01/2017. Depois exibimos o valor final do n�mero de notas:
DECLARE @DATA DATE
DECLARE @NUMNOTAS INT
SET @NUMNOTAS = 0
SET @DATA = '20170101'
EXEC NumNotasSP @DATA = @DATA, @NUMNOTAS = @NUMNOTAS OUTPUT
SET @DATA = '20170102'
EXEC NumNotasSP @DATA = @DATA, @NUMNOTAS = @NUMNOTAS OUTPUT
PRINT @NUMNOTAS