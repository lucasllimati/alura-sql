-- Campos autoincremental

USE [VENDAS SUCOS]

CREATE TABLE TAB_IDENTITY 
( 
	ID INT IDENTITY (1,1) NOT NULL,
	DESCRITOR VARCHAR(20) NULL
)

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE X')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Y')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Z')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE W')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE A')

SELECT * FROM TAB_IDENTITY

DELETE FROM TAB_IDENTITY WHERE ID = 1

DROP TABLE TAB_IDENTITY

CREATE TABLE TAB_IDENTITY 
(
	ID INT IDENTITY (100,5) NOT NULL,
	DESCRITOR VARCHAR(20) NULL
)

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE X')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Y')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Z')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE W')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE A')

SELECT * FROM TAB_IDENTITY