/* 27.Consultas - Listando endere�o completo */
/* Listando o endere�o completo. Fa�a uma consulta que lista o nome do cliente e o endere�o completo (com rua, bairro, cidade e estado). */

USE SUCOS_VENDAS

SELECT NOME, CONCAT([ENDERECO 1], ', ', BAIRRO, ', ', CIDADE, ', ', ESTADO) AS [ENDERECO COMPLETO]
FROM [TABELA DE CLIENTES]