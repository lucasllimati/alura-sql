/* 27.Consultas - Listando endereço completo */
/* Listando o endereço completo. Faça uma consulta que lista o nome do cliente e o endereço completo (com rua, bairro, cidade e estado). */

USE SUCOS_VENDAS

SELECT NOME, CONCAT([ENDERECO 1], ', ', BAIRRO, ', ', CIDADE, ', ', ESTADO) AS [ENDERECO COMPLETO]
FROM [TABELA DE CLIENTES]