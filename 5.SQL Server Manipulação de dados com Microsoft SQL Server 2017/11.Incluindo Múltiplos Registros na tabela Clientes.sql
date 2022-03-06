-- Incluindo registros a partir de outra tabela

/*
Inclua todos os clientes na tabela CLIENTES baseados nos registros da tabela TABELA DE CLIENTES, da base SUCOS_VENDAS.

Cuidado com os nomes dos campos, e lembre-se que já incluímos 3 clientes na nossa tabela, pelo exercício anterior.
*/

USE [VENDAS SUCOS]

SELECT * FROM CLIENTES

INSERT INTO 
	CLIENTES (
		[CPF],
		[NOME],
		[ENDEREÇO],
		[BAIRRO],
		[CIDADE],
		[ESTADO],
		[CEP],
		[DATA NASCIMENTO],
		[IDADE],
		[SEXO],
		[LIMITE DE CRÉDITO],
		[VOLUME DE COMPRA],
		[PRIMEIRA COMPRA]
	)
SELECT 
	[CPF],
	[NOME],
	[ENDERECO 1] AS ENDEREÇO,
	[BAIRRO],
	[CIDADE],
	[ESTADO],
    [CEP],
	[DATA DE NASCIMENTO],
	[IDADE],
	[SEXO],
	[LIMITE DE CREDITO],
    [VOLUME DE COMPRA],
	[PRIMEIRA COMPRA]
FROM 
	[SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES] 
WHERE 
	[CPF] NOT IN ('1471156710','19290992743','2600586709')