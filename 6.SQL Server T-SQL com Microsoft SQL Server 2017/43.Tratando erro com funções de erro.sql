-- Tratando erro com funções de erro

USE [SUCOS_VENDAS]

-- Crie uma nova SP chamada InclusaoVendedor03, agora tratando o erro com TRY-CATCH, exibindo todas as funções de erro na mensagem. Crie a SP:

CREATE PROCEDURE InclusaoVendedor03
@MATRICULA AS VARCHAR(5), @NOME AS VARCHAR(100), 
@PERCENTUAL AS FLOAT, @DATAADMISSAO AS DATE, 
@FERIAS AS BIT, @BAIRRO AS VARCHAR(50), 
@MENSAGEM VARCHAR(100) OUTPUT
AS
BEGIN
    BEGIN TRY
        INSERT INTO [TABELA DE VENDEDORES] 
            (MATRICULA, NOME, [PERCENTUAL COMISSÃO], 
                [DATA ADMISSÃO], [DE FERIAS], BAIRRO)
        VALUES (@MATRICULA, @NOME, @PERCENTUAL, @DATAADMISSAO, 
            @FERIAS, @BAIRRO)
    END TRY
BEGIN CATCH
    SET @MENSAGEM = 'Houve um erro número: ' + 
        CONVERT(VARCHAR(10), ERROR_NUMBER()) + ' - '
    SET @MENSAGEM = @MENSAGEM + 'Mensagem: ' + 
        ERROR_MESSAGE() + ' - '
    SET @MENSAGEM = @MENSAGEM + 'Grau de severidade do erro: ' + 
        CONVERT(VARCHAR(10), ERROR_SEVERITY()) + ' - '
    SET @MENSAGEM = @MENSAGEM + 'Estado do erro: ' + 
        CONVERT(VARCHAR(10), ERROR_STATE()) + ' - '
    SET @MENSAGEM = @MENSAGEM + 'Número da linha: ' + 
        CONVERT(VARCHAR(10), ERROR_LINE()) + ' - '
    SET @MENSAGEM = @MENSAGEM + 'Procedure: ' + ERROR_PROCEDURE()
END CATCH
END

-- E depois execute-a:

DECLARE @MENSAGEM VARCHAR(MAX)
EXEC InclusaoVendedor03 '00238', 'Pericles Alves', 0.11, '20160821', 
    0, 'Santo Amaro', @MENSAGEM = @MENSAGEM OUTPUT
IF @MENSAGEM <> ''
    PRINT @MENSAGEM