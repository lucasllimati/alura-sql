-- Calculando o valor total do faturamento

USE [SUCOS_VENDAS]

/*
Crie um script usando um cursor para achar o valor total do faturamento para um m�s e um ano.

Dicas:
Declare tr�s vari�veis: uma que recebe a quantidade, outra o pre�o e uma terceira que ir� acumular o faturamento;
Fa�a um loop no cursor e v� somando o faturamento de cada nota;
Exiba o valor total do limite;
Lembrando a consulta que obt�m o faturamento dentro de um m�s e ano:
*/

SELECT INF.QUANTIDADE, INF.PRE�O FROM [ITENS NOTAS FISCAIS] INF
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE MONTH(NF.DATA) = 1 AND YEAR(NF.DATA) = 2017

-- Um exemplo de script �:
DECLARE @QUANTIDADE INT
DECLARE @PRECO FLOAT
DECLARE @FATURAMENTOACUM FLOAT
DECLARE @MES INT
DECLARE @ANO INT
SET @MES = 1
SET @ANO = 2017
DECLARE CURSOR1 CURSOR FOR SELECT INF.QUANTIDADE, INF.PRE�O FROM 
    [ITENS NOTAS FISCAIS] INF
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE MONTH(NF.DATA) = @MES AND YEAR(NF.DATA) = @ANO
SET @FATURAMENTOACUM = 0
OPEN CURSOR1
FETCH NEXT FROM CURSOR1 INTO @QUANTIDADE, @PRECO
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @FATURAMENTOACUM = @FATURAMENTOACUM + (@QUANTIDADE * @PRECO)
    FETCH NEXT FROM CURSOR1 INTO @QUANTIDADE, @PRECO
END
CLOSE CURSOR1
DEALLOCATE CURSOR1
PRINT @FATURAMENTOACUM