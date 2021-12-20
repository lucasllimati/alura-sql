/* Revis�o de SELECT no banco de dados */

USE SUCOS_VENDAS

SELECT [CPF]
      ,[NOME]
      ,[ENDERECO 1]
      ,[ENDERECO 2]
      ,[BAIRRO]
      ,[CIDADE]
      ,[ESTADO]
      ,[CEP]
      ,[DATA DE NASCIMENTO]
      ,[IDADE]
      ,[SEXO]
      ,[LIMITE DE CREDITO]
      ,[VOLUME DE COMPRA]
      ,[PRIMEIRA COMPRA]
       FROM [SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES]

SELECT * FROM [TABELA DE CLIENTES]

SELECT [CPF]
      ,[NOME]
       FROM [TABELA DE CLIENTES]

SELECT [CPF] AS IDENTIFICADOR
      ,[NOME] AS CLIENTE
       FROM [TABELA DE CLIENTES]

SELECT [NOME] AS CLIENTE
      ,[CPF] AS IDENTIFICADOR
       FROM [TABELA DE CLIENTES]

SELECT * FROM [TABELA DE PRODUTOS]

SELECT * FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '1000889'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Uva'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Lim�o'

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM = 'PET'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] = 4.555

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] > 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] < 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] <= 4.555

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] >= 4.555

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM <= 'Lata'

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM <> 'Lata'

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1995-09-11'

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >= '1995-09-11'

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] <= '1995-09-11'

SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995 

SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) < 1995 

SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 12

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 11
