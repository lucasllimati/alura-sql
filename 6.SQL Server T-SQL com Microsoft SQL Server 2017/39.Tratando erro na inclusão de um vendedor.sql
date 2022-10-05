-- Tratando erro na inclusão de um vendedor

USE [SUCOS_VENDAS]

-- Crie a seguinte Stored Procedure, conforme o código abaixo:
CREATE PROCEDURE InclusaoVendedor 
@MATRICULA AS VARCHAR(5), @NOME AS VARCHAR(100), @PERCENTUAL AS FLOAT,
@DATAADMISSAO AS DATE, @FERIAS AS BIT, @BAIRRO AS VARCHAR(50)
AS
BEGIN
INSERT INTO [TABELA DE VENDEDORES] (MATRICULA, NOME, [PERCENTUAL COMISSÃO], [DATA ADMISSÃO], [DE FERIAS], BAIRRO)
VALUES (@MATRICULA, @NOME, @PERCENTUAL, @DATAADMISSAO, @FERIAS, @BAIRRO)
END

--Ela irá incluir um vendedor na tabela de vendedores. Depois, execute o comando:
EXEC InclusaoVendedor '00238','Pericles Alves',0.11,'20160821',0,'Santo Amaro'

-- Temos o erro:
/*
Msg 2627, Level 14, State 1, Procedure InclusaoVendedor, Line 6 [Batch Start Line 192]
Violation of PRIMARY KEY constraint 'PK_VENDEDORES'. 
Cannot insert duplicate key in object 'dbo.TABELA DE VENDEDORES'. 
The duplicate key value is (00238).
The statement has been terminated.

Crie uma nova SP chamada InclusaoVendedor01, tratando este erro usando @@ERROR e @@ROWCOUNT.
*/

--Crie a SP:
CREATE PROCEDURE InclusaoVendedor01 
@MATRICULA AS VARCHAR(5), @NOME AS VARCHAR(100), 
    @PERCENTUAL AS FLOAT,
@DATAADMISSAO AS DATE, @FERIAS AS BIT, @BAIRRO AS VARCHAR(50), 
@NUMERRO INT OUTPUT, @NUMLINHA INT OUTPUT
AS
BEGIN
INSERT INTO [TABELA DE VENDEDORES] (MATRICULA, NOME, 
    [PERCENTUAL COMISSÃO], [DATA ADMISSÃO], [DE FERIAS], BAIRRO)
VALUES (@MATRICULA, @NOME, @PERCENTUAL, @DATAADMISSAO, @FERIAS, @BAIRRO)
SELECT @NUMERRO = @@ERROR, @NUMLINHA = @@ROWCOUNT
END

--E depois execute-a:
DECLARE @NUMERRO INT
DECLARE @NUMLINHA INT
EXEC InclusaoVendedor01 '00238', 'Pericles Alves', 0.11, 
    '20160821', 0, 'Santo Amaro', @NUMERRO = 
        @NUMERRO OUTPUT, @NUMLINHA = @NUMLINHA OUTPUT
IF @NUMERRO <> 0
    PRINT 'Houve um erro: ' + 
        CONVERT(VARCHAR(30), @NUMERRO) + ' - ' + 
        CONVERT(VARCHAR(30), @NUMLINHA)