-- Tabela com números aleatórios

USE [SUCOS_VENDAS]

/*
Crie uma variável TABELA com um campo INT, use um loop para gravar 100 números aleatórios entre 0 e 1000 nesta tabela. Depois, liste esta tabela em uma consulta.
Um exemplo de script é:
*/

DECLARE @TABELA TABLE (NUMERO INT)
DECLARE @CONTADOR INT
DECLARE @CONTMAXIMO INT
SET @CONTADOR = 1
SET @CONTMAXIMO = 100
WHILE @CONTADOR <= @CONTMAXIMO
BEGIN
    INSERT INTO @TABELA (NUMERO) VALUES 
        ([dbo].[NumeroAleatorio](0,1000))
    SET @CONTADOR = @CONTADOR + 1
END
SELECT * FROM @TABELA