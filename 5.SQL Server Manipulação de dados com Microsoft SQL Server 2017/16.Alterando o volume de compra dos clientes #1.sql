-- Alterando o volume de compra dos clientes #1

/*
Altere o volume de compra em 20% dos clientes do estado do Rio de Janeiro.
*/

USE [VENDAS SUCOS]

SELECT *
FROM [dbo].[CLIENTES]
WHERE [ESTADO] = 'RJ'


UPDATE [dbo].[CLIENTES]
    SET [VOLUME DE COMPRA] = [VOLUME DE COMPRA] * 1.2
WHERE [ESTADO] = 'RJ'