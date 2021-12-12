/* Adicionando CPF como NOT NULL */

ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN [CPF]
VARCHAR(11) NOT NULL

/* Adicionando CPF como chave primária */
ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])

/*Inserindo dados na tabela*/
INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('00300000001'
           ,'João da Silva'
           ,'Rua Projetada A número 10'
           ,''
           ,'Centro'
		   ,'Rio de Janeiro'
           ,'RJ'
           ,'20000000'
           ,'1990-12-25'
           ,27
           ,'M'
           ,12000.50
           ,1000
           ,1)