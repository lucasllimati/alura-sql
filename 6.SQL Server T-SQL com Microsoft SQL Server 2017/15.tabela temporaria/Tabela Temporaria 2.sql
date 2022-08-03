/*
Temos 3 tipos de tabelas tempor�rias:
	- # : Tabelas que valem para a conex�o vigente.
	- ##: Tabelas que valem para v�rias conex�es
	- @ : Tabelas que valem para procedimento que esta sendo executado no momento.
*/

USE [SUCOS_VENDAS]

--DROP TABLE ##TABELA02

CREATE TABLE ##TABELA02 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO ##TABELA02 (ID, NOME) VALUES ('1', 'JO�O')

INSERT INTO ##TABELA02 (ID, NOME) VALUES ('2', 'PEDRO')

SELECT * FROM ##TABELA02

SELECT * FROM #TABELA_NUMEROS2