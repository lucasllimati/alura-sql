-- Achando o valor total do cr�dito

USE [SUCOS_VENDAS]

/*
Crie um script usando um cursor para achar o valor total de todos os cr�ditos de todos os clientes.

Dicas: Declare duas vari�veis: uma que receba o limite de cr�dito do cursor e outra o limite de cr�dito total;
Fa�a um loop no cursor e v� somando o valor do limite de cada cliente na vari�vel de limite de cr�dito total;
Exiba o valor total do limite.

Um exemplo de script �:
*/

DECLARE @LIMITECREDITO FLOAT
DECLARE @LIMITECREDITOACUM FLOAT
DECLARE CURSOR1 CURSOR FOR SELECT [LIMITE DE CREDITO] 
    FROM [TABELA DE CLIENTES]
SET @LIMITECREDITOACUM = 0
OPEN CURSOR1
FETCH NEXT FROM CURSOR1 INTO @LIMITECREDITO
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @LIMITECREDITOACUM = @LIMITECREDITOACUM + 
        @LIMITECREDITO
    FETCH NEXT FROM CURSOR1 INTO @LIMITECREDITO
END
CLOSE CURSOR1
DEALLOCATE CURSOR1
PRINT @LIMITECREDITOACUM