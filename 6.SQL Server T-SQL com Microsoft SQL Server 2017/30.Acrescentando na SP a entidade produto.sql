-- Acrescentando na SP a entidade produto

/*
Na nossa empresa de suco de frutas temos 3 categorias de produtos: Garrafas, Lata ou PET. Imagine que, pela legislação, o imposto pago depende do tipo de embalagem do produto e, a cada momento, ele muda. Temos o campo IMPOSTO na tabela de notas fiscais, que determina o imposto a ser pago (alíquota sobre o faturamento). Faça uma stored procedure que terá como entrada de dados:

Mês
Ano
Alíquota
Tipo de Produto (Garrafas, Lata ou PET)
Ela irá modificar a alíquota para a alíquota informada na entrada da stored procedure, para as vendas de todas as notas fiscais no mês/ano informados, para todos os produtos do tipo informado.

Dica:

Comece determinando a consulta que seleciona todas as notas fiscais dentro do mês/ano para um tipo de produto;
Construa um comando UPDATE modificando o campo IMPOSTO de todas as notas, usando o mesmo WHERE da consulta inicial;
Construa a stored procedure usando o UPDATE acima, determinando e passando os parâmetros contidos no enunciado. Nome da stored procedure: AtualizaImposto.
*/

USE [SUCOS_VENDAS]

SELECT * FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON 
    NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE PRODUTOS] TP ON 
    TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
WHERE MONTH(NF.DATA) = 1 AND YEAR(NF.DATA) = 2017 
    AND TP.EMBALAGEM = 'Lata'

-- Comando UPDATE para alterar o valor do campo IMPOSTO:

UPDATE NF SET NF.IMPOSTO = 0.18
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF 
    ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE PRODUTOS] TP 
    ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
WHERE MONTH(NF.DATA) = 1 AND YEAR(NF.DATA) = 2017 
    AND TP.EMBALAGEM = 'Lata'

-- Construção da stored procedure:

CREATE PROCEDURE AtualizaImposto @MES AS INT, @ANO AS INT, @EMBALAGEM AS VARCHAR(10), @IMPOSTO AS FLOAT
AS
UPDATE NF SET NF.IMPOSTO = @IMPOSTO FROM [NOTAS FISCAIS] NF
    INNER JOIN [ITENS NOTAS FISCAIS] INF 
        ON NF.NUMERO = INF.NUMERO
    INNER JOIN [TABELA DE PRODUTOS] TP 
        ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
    WHERE MONTH(NF.DATA) = @MES AND YEAR(NF.DATA) = @ANO 
        AND TP.EMBALAGEM = @EMBALAGEM

-- Testando a stored procedure:
EXEC AtualizaImposto @MES = 2, @ANO = 2017, @EMBALAGEM = 'PET', @IMPOSTO = 0.16