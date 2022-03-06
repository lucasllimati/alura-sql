-- Inserir multiplos registros

/*
O item 1040107 já esta cadastrado na tabela VENDAS SUCOS, por esse motivo temos que ignorar no insert e no select com a condição WHERE.
MOTIVO: Caso insira o valor duplicado ocorrerá um erro de integridade, devido a duplicidade da chave (Primary Key)

DADOS: 1040107	Light - 350 ml - Melância	Melância	350 ml	Lata	4,555
*/

SELECT * FROM [TABELA DE PRODUTOS]

SELECT * FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]

-- Seleção dos valores
SELECT
	[CODIGO DO PRODUTO] AS [CÓDIGO],
	[NOME DO PRODUTO] AS [DESCRITOR],
	[SABOR],
	[TAMANHO],
	[EMBALAGEM],
	[PREÇO DE LISTA] AS [PREÇO LISTA]
 FROM 
	[SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]
WHERE
	[CODIGO DO PRODUTO] <> '1040107'


-- Inserir os valores atraves da seleção

INSERT INTO 
	[PRODUTOS] ([CÓDIGO], [DESCRITOR], [SABOR], [TAMANHO], [EMBALAGEM], [PREÇO LISTA])
SELECT 
	[CODIGO DO PRODUTO] AS [CÓDIGO],
	[NOME DO PRODUTO] AS [DESCRITOR],
	[SABOR],
	[TAMANHO],
	[EMBALAGEM],
	[PREÇO DE LISTA] AS [PREÇO LISTA]
 FROM
	[SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]
WHERE
	[CODIGO DO PRODUTO] <> '1040107'