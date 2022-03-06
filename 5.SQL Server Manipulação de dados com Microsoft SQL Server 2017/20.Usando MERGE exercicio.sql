-- Usando MERGE

/*
Resolva o problema do exerc�cio anterior usando MERGE.
Repetindo o enunciado: Podemos observar que os vendedores possuem bairros associados a eles. 
Vamos aumentar em 30% o volume de compra dos clientes que possuem, em seus endere�os, bairros onde os vendedores possuam escrit�rios.
*/

USE [VENDAS SUCOS]

MERGE INTO [DBO].[CLIENTES] A
USING [DBO].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]
WHEN MATCHED THEN
UPDATE SET A.[VOLUME DE COMPRA] = A.[VOLUME DE COMPRA] * 1.30;