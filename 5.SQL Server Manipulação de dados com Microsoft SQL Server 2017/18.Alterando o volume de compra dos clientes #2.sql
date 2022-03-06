-- Alterando o volume de compra dos clientes #2

/*
Podemos observar que os vendedores possuem bairros associados a eles. Vamos aumentar em 30% o volume de compra dos clientes que possuem, em seus endereços, bairros onde os vendedores possuam escritórios.

Dica: vamos usar um UPDATE com FROM, usando o seguinte INNER JOIN:
*/

USE [VENDAS SUCOS]

SELECT A.CPF FROM [dbo].[CLIENTES] A
INNER JOIN [dbo].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]

UPDATE A SET A.[VOLUME DE COMPRA] = 
    A.[VOLUME DE COMPRA] * 1.30
FROM [dbo].[CLIENTES] A 
INNER JOIN [dbo].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]