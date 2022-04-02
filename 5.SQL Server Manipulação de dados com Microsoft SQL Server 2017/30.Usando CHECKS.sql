-- CHECKs

USE [VENDAS SUCOS]

CREATE TABLE TAB_CHECK
(
	ID INT NOT NULL,
	NOME VARCHAR(20) NULL,
	IDADE INT NULL,
	CIDADE VARCHAR(20) NULL,
	CONSTRAINT CHK_PESSOA CHECK (IDADE >= 18)
)

INSERT INTO TAB_CHECK (ID, NOME, IDADE, CIDADE)
VALUES (1,'JO�O', 19, 'RIO DE JANEIRO')

INSERT INTO TAB_CHECK (ID, NOME, IDADE, CIDADE)
VALUES (2,'PEDRO', 20, 'S�O PAULO')

SELECT * FROM TAB_CHECK

CREATE TABLE TAB_CHECK2
(
	ID INT NOT NULL,
	NOME VARCHAR(20) NULL,
	IDADE INT NULL,
	CIDADE VARCHAR(20) NULL,
	CONSTRAINT CHK_PESSOA2 CHECK (IDADE >= 18 AND CIDADE = 'RIO DE JANEIRO')
)

INSERT INTO TAB_CHECK2 (ID, NOME, IDADE, CIDADE) VALUES (1,'JO�O', 19, 'RIO DE JANEIRO')

INSERT INTO TAB_CHECK2 (ID, NOME, IDADE, CIDADE) VALUES (2,'PEDRO', 20, 'RIO DE JANEIRO')

UPDATE TAB_CHECK2 SET CIDADE = 'S�O PAULO' WHERE ID = 2

SELECT * FROM TAB_CHECK2



