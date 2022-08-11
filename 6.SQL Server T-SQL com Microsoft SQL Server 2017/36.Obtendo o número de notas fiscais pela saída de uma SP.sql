-- Obtendo o número de notas fiscais pela saída de uma SP

/*
Construa uma SP (nome NumNotasSP) cujos parâmetros são uma data, passada como valor, e o número de notas, passado como referência. 
Depois, faça um script onde, na variável @NUMNOTAS, some as notas do dia 01/01/2017 e 02/01/2017.

Dica: Na SP, crie uma variável auxiliar e some da variável que é passada como referência.
*/

USE [SUCOS_VENDAS]

-- Vamos criar a SP passando como parâmetro a data (valor) e o número de notas (como referência):
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

-- Agora vamos chamar a SP duas vezes, uma para o dia 01/01/2017 e outra vez para 02/01/2017. Depois exibimos o valor final do número de notas:
DECLARE @DATA DATE
DECLARE @NUMNOTAS INT
SET @NUMNOTAS = 0
SET @DATA = '20170101'
EXEC NumNotasSP @DATA = @DATA, @NUMNOTAS = @NUMNOTAS OUTPUT
SET @DATA = '20170102'
EXEC NumNotasSP @DATA = @DATA, @NUMNOTAS = @NUMNOTAS OUTPUT
PRINT @NUMNOTAS