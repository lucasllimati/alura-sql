-- Criação da tabela de notas fiscais

/*
Crie a tabela de notas fiscais, conforme definido abaixo:
O nome da tabela deve ser NOTAS.
*/

USE [VENDAS SUCOS]

CREATE TABLE [dbo].[NOTAS](
    [NÚMERO] VARCHAR(5) NOT NULL,
    [DATA] DATE NULL,
    [CPF] VARCHAR(11) NULL,
    [MATRICULA] VARCHAR(5) NULL,
    [IMPOSTO] FLOAT NULL,
    CONSTRAINT [PK_NÚMERO] PRIMARY KEY CLUSTERED ([NÚMERO])
)