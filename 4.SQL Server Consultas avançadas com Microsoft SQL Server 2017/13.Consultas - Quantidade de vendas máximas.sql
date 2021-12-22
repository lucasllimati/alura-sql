/* 11.Consultas - Quantidade de vendas máximas */
/* Aproveitando o exercício anterior, quantos itens de venda existem com a maior quantidade de venda para o produto '1101035'? 79*/

USE SUCOS_VENDAS

SELECT COUNT(*) AS 'QUANTIDADE' FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
AND QUANTIDADE = 99