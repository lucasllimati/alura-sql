-- Criação da tabela de clientes

/*
Baseado no diagrama de entidades da definição do banco de dados VENDAS SUCOS, como mostrado abaixo:
Crie a tabela CLIENTES por linha de comando SQL.
*/

USE [VENDAS SUCOS]

CREATE TABLE [dbo].[CLIENTES](
    [CPF] VARCHAR(11) NOT NULL,
    [NOME] VARCHAR(50) NULL,
    [ENDEREÇO] VARCHAR(100) NULL,
    [BAIRRO] VARCHAR(50) NULL,
    [CIDADE] VARCHAR(50) NULL,
    [ESTADO] VARCHAR(50) NULL,
    [CEP] VARCHAR(8) NULL,
    [DATA NASCIMENTO] DATE NULL,
    [IDADE] INT NULL,
    [SEXO] VARCHAR(1),
    [LIMITE DE CRÉDITO] FLOAT,
    [VOLUME DE COMPRA] FLOAT,
    [PRIMEIRA COMPRA] BIT, 
    CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED ([CPF])
)