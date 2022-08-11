-- Alterando e excluindo uma SP

USE [SUCOS_VENDAS]
GO

/****** Object:  StoredProcedure [dbo].[BuscaPorEntidades]    Script Date: 11/08/2022 08:49:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscaPorEntidades2] @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
  SELECT [CPF] AS IDENTIFICADOR, [NOME] AS DESCRITOR, 
  [BAIRRO] AS BAIRRO FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
  SELECT [MATRICULA] AS IDENTIFICADOR, [NOME] AS DESCRITOR, 
  [BAIRRO] AS BAIRRO FROM [TABELA DE VENDEDORES]
END
GO

EXEC BuscaPorEntidades2 'CLIENTES'

ALTER PROCEDURE [dbo].[BuscaPorEntidades2] @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
  SELECT [CPF] AS IDENTIFICADOR, [NOME] AS DESCRITOR FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
  SELECT [MATRICULA] AS IDENTIFICADOR, [NOME] AS DESCRITOR FROM [TABELA DE VENDEDORES]
END

EXEC BuscaPorEntidades2 'CLIENTES'

IF OBJECT_ID('BuscaPorEntidades2', 'P') IS NOT NULL
  DROP PROCEDURE BuscaPorEntidades2
