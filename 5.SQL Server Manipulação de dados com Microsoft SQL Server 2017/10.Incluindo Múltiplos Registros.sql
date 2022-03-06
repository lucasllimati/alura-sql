-- Inserir multiplos registros

/*
O item 1040107 j� esta cadastrado na tabela VENDAS SUCOS, por esse motivo temos que ignorar no insert e no select com a condi��o WHERE.
MOTIVO: Caso insira o valor duplicado ocorrer� um erro de integridade, devido a duplicidade da chave (Primary Key)

DADOS: 1040107	Light - 350 ml - Mel�ncia	Mel�ncia	350 ml	Lata	4,555
*/

SELECT * FROM [TABELA DE PRODUTOS]

SELECT * FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]

-- Sele��o dos valores
SELECT
	[CODIGO DO PRODUTO] AS [C�DIGO],
	[NOME DO PRODUTO] AS [DESCRITOR],
	[SABOR],
	[TAMANHO],
	[EMBALAGEM],
	[PRE�O DE LISTA] AS [PRE�O LISTA]
 FROM 
	[SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]
WHERE
	[CODIGO DO PRODUTO] <> '1040107'


-- Inserir os valores atraves da sele��o

INSERT INTO 
	[PRODUTOS] ([C�DIGO], [DESCRITOR], [SABOR], [TAMANHO], [EMBALAGEM], [PRE�O LISTA])
SELECT 
	[CODIGO DO PRODUTO] AS [C�DIGO],
	[NOME DO PRODUTO] AS [DESCRITOR],
	[SABOR],
	[TAMANHO],
	[EMBALAGEM],
	[PRE�O DE LISTA] AS [PRE�O LISTA]
 FROM
	[SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]
WHERE
	[CODIGO DO PRODUTO] <> '1040107'