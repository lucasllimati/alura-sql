/*
Temos 3 tipós de tabelas temporárias:
	- # : Tabelas que valem para a conexão vigente.
	- ##: Tabelas que valem para várias conexões
	- @ : Tabelas que valem para procedimento que esta sendo executado no momento.
*/

USE [SUCOS_VENDAS]

--DROP TABLE #TABELA01

CREATE TABLE #TABELA01 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO #TABELA01 (ID, NOME) VALUES ('1', 'JOÃO')

SELECT * FROM #TABELA01

INSERT INTO #TABELA01 (ID, NOME) VALUES ('2', 'PEDRO')

SELECT * FROM ##TABELA02

