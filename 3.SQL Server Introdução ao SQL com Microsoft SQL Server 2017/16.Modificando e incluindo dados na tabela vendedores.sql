/* Excluindo tabela */
DROP TABLE [TABELA DE VENDEDORES]

/* Criando nova tabela */
CREATE TABLE [TABELA DE VENDEDORES]
( [MATRICULA] varchar(5),
[NOME] varchar(100),
[PERCENTUAL COMISS?O] float,
[DATA ADMISS?O] date,
[DE FERIAS] bit)

/* Adicionando MATRICULA como NOT NULL */
ALTER TABLE [TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA]
VARCHAR(5) NOT NULL

/* Adicionando MATRICULA como chave prim?ria */
ALTER TABLE [TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA])

/*Inserindo dados na tabela*/
INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00235','M?rcio Almeida Silva','2014-08-15',0.08,0)

INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00236','Cl?udia Morais','2013-09-17',0.08,1)

INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00237','Roberta Martins','2017-03-18',0.11,1)

INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00238','Pericles Alves','2016-08-21',0.11,0)