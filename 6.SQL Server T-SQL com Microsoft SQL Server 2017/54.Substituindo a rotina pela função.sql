-- Criando fun��o para obter dados das entidades

USE [SUCOS_VENDAS]

-- CLIENTE ALEATORIO
DECLARE @CLIENTE VARCHAR(20)
DECLARE @VENDEDOR VARCHAR(20)
DECLARE @PRODUTO VARCHAR(20)

SET @CLIENTE = [dbo].[EntidadeAleatoria]('CLIENTE')
SET @VENDEDOR = [dbo].[EntidadeAleatoria]('VENDEDOR')
SET @PRODUTO = [dbo].[EntidadeAleatoria]('PRODUTO')

PRINT @VENDEDOR
PRINT @CLIENTE
PRINT @PRODUTO