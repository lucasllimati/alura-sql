/* 9.Consultas TOP 10 - Primeiras Vendas */
/* Queremos obter as 10 primeiras vendas do dia 01/01/2017. Qual seria o comando SQL para obter este resultado? 7 */

USE SUCOS_VENDAS

SELECT TOP 10 * FROM [NOTAS FISCAIS] 
WHERE [DATA] = '2017-01-01'