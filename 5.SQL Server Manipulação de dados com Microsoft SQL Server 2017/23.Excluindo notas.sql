-- Excluindo notas

/*
Exclua as notas fiscais (apenas o cabe�alho) cujos clientes tenham menos que 18 anos.

Dica: Use consulta abaixo:

SELECT A.N�MERO FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18COPIAR C�DIGO

E use uma sintaxe parecida com a usada no UPDATE com FROM.
*/

USE [VENDAS SUCOS]

DELETE A FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18