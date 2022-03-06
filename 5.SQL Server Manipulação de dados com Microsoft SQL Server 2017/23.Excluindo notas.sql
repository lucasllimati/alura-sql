-- Excluindo notas

/*
Exclua as notas fiscais (apenas o cabeçalho) cujos clientes tenham menos que 18 anos.

Dica: Use consulta abaixo:

SELECT A.NÚMERO FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18COPIAR CÓDIGO

E use uma sintaxe parecida com a usada no UPDATE com FROM.
*/

USE [VENDAS SUCOS]

DELETE A FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18