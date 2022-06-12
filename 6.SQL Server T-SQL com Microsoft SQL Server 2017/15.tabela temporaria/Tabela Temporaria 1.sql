/*
Temos 3 tip�s de tabelas tempor�rias:
	- # : Tabelas que valem para a conex�o vigente.
	- ##: Tabelas que valem para v�rias conex�es
	- @ : Tabelas que valem para procedimento que esta sendo executado no momento.
*/

USE [SUCOS_VENDAS]

--DROP TABLE #TABELA01

CREATE TABLE #TABELA01 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO #TABELA01 (ID, NOME) VALUES ('1', 'JO�O')

SELECT * FROM #TABELA01

INSERT INTO #TABELA01 (ID, NOME) VALUES ('2', 'PEDRO')

SELECT * FROM ##TABELA02

