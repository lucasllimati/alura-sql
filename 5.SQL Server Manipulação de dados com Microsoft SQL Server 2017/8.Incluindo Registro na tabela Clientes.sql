-- Inclua os seguintes registros na tabela de clientes

USE [VENDAS SUCOS]

--SELECT *
--FROM [dbo].[CLIENTES]

INSERT INTO [dbo].[CLIENTES] (
	[CPF],
	[NOME],
	[ENDERE�O],
	[BAIRRO],
	[CIDADE],
	[ESTADO],
	[CEP],
	[DATA NASCIMENTO],
	[IDADE],
	[SEXO],
	[LIMITE DE CR�DITO],
	[VOLUME DE COMPRA],
	[PRIMEIRA COMPRA]
)
VALUES 
('1471156710', '�rica Carvalho', 'R. Iriquitia', 'Jardins', 'S�o Paulo',  'SP', '80012212', '19900901', 27, 'F', 170000, 24500,0), 
('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', '�gua Santa', 'Rio de Janeiro', 'RJ', '22000000', '20000212', 18, 'M', 100000, 20000, 1), 
('2600586709', 'C�sar Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '20000312', 18, 'M', 120000, 22000, 0)