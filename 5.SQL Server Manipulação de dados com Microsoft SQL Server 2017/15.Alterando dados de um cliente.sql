-- Alterando dados de um cliente

/*
Modifique o endereço do cliente 19290992743 para R. Jorge Emilio 23, em Santo Amaro, São Paulo, SP, CEP 8833223.
*/

USE [VENDAS SUCOS]

UPDATE [dbo].[CLIENTES]
	SET 
		[ENDEREÇO] = 'R. Jorge Emilio 23',
		[BAIRRO] = 'Santo Amaro',
		[CIDADE] = 'São Paulo',
		[ESTADO] = 'SP',
		[CEP] = '8833223'
	WHERE
		[CPF] = '19290992743'

SELECT *
FROM [dbo].[CLIENTES]
WHERE [CPF] = '19290992743'