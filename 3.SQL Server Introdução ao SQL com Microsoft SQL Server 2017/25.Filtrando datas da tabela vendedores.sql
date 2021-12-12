/* Selecão na TABELA DE VENDEDORES */
/*Veja quais são os vendedores que foram admitidos na empresa depois de 2016 (inclusive).*/

USE [SUCOS_VENDAS]

SELECT * FROM [TABELA DE VENDEDORES] WHERE YEAR([DATA ADMISSÃO]) >= 2016