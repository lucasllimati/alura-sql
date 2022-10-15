-- Obtendo as entidades atrav�s da fun��o

USE [SUCOS_VENDAS]

/*
Complemente a consulta criada no exerc�cio anterior.
Agora, obtenha os dados da nota fiscal, conforme o v�deo desta aula, e inclua na tabela de notas e de itens.
Execute o script diversas vezes e veja se ir� ocorrer um erro. Transcreva este erro.

Vamos incluir os dados de notas e itens na tabela:
*/

DECLARE @CLIENTE VARCHAR(12)
DECLARE @VENDEDOR VARCHAR(12)
DECLARE @PRODUTO VARCHAR(12)
DECLARE @DATA DATE
DECLARE @NUMERO INT
DECLARE @IMPOSTO FLOAT
DECLARE @NUM_ITENS INT
DECLARE @CONTADOR INT
DECLARE @QUANTIDADE INT
DECLARE @PRECO FLOAT

SET @DATA = '20180521'
SET @CLIENTE = [dbo].[EntidadeAleatoria]('CLIENTE')
SET @VENDEDOR = [dbo].[EntidadeAleatoria]('VENDEDOR')
SELECT @NUMERO = MAX(NUMERO) + 1 FROM [NOTAS FISCAIS]
SET @IMPOSTO = 0.18
SET @CONTADOR = 1
SET @NUM_ITENS = [dbo].[NumeroAleatorio](2, 10)

INSERT INTO [NOTAS FISCAIS] (CPF, MATRICULA, DATA, NUMERO, IMPOSTO)
VALUES (@CLIENTE, @VENDEDOR, @DATA, @NUMERO, @IMPOSTO)

WHILE @CONTADOR <= @NUM_ITENS
BEGIN
    SET @PRODUTO = [dbo].[EntidadeAleatoria]('PRODUTO')
    SET @QUANTIDADE = [dbo].[NumeroAleatorio](5, 100)
    SELECT @PRECO = [PRE�O DE LISTA] FROM [TABELA DE PRODUTOS] 
        WHERE [CODIGO DO PRODUTO] = @PRODUTO

    INSERT INTO [ITENS NOTAS FISCAIS] 
        (NUMERO, [CODIGO DO PRODUTO], QUANTIDADE, PRE�O)
    VALUES (@NUMERO, @PRODUTO, @QUANTIDADE, @PRECO)

    SET @CONTADOR = @CONTADOR + 1
END

/*
Execute os comandos acima at� ocorrer um erro de inclus�o na tabela de itens. O erro que ir� ocorrer �:

	Msg 2627, Level 14, State 1, Line 29
	Violation of PRIMARY KEY constraint 'PK_ITENS NOTAS FISCAIS'. 
	Cannot insert duplicate key in object 'dbo.ITENS NOTAS FISCAIS'. 
	The duplicate key value is (87985, 1101035).
*/