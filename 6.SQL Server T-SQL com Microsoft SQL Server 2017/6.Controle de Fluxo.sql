-- Fluxo condicional

 -- object id: Nessa função eu passo como parâmetro, o nome do objeto como um varchar e depois o tipo dele.

USE [SUCOS_VENDAS]

IF OBJECT_ID('TABELA_TESTE', 'U') IS NOT NULL DROP TABLE TABELA_TESTE

IF OBJECT_ID('TABELA_TESTE', 'U') IS NULL CREATE TABLE TABELA_TESTE (ID VARCHAR(10))