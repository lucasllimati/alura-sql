/* 7.Consultas DISTINCT1 - Bairros diferente RJ */
/* Quantos bairros diferentes da cidade do Rio de Janeiro possuem clientes? 7 */

SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES]
WHERE CIDADE = 'Rio de Janeiro'

SELECT DISTINCT BAIRRO, CIDADE, ESTADO FROM [TABELA DE CLIENTES]

SELECT DISTINCT BAIRRO, CIDADE, ESTADO FROM [TABELA DE CLIENTES]
WHERE CIDADE = 'Rio de Janeiro'