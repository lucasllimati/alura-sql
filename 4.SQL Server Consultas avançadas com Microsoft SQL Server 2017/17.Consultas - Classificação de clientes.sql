/* 17.Consultas - Classificação de clientes */
/* 
Veja o ano de nascimento dos clientes e classifique-os como: nascidos antes de 1990 são adultos, 
nascidos entre 1990 e 1995 são jovens e nascidos depois de 1995 são crianças. Liste o nome do cliente e esta classificação. 
*/

USE SUCOS_VENDAS

SELECT [NOME], [DATA DE NASCIMENTO], YEAR(GETDATE()) - YEAR([DATA DE NASCIMENTO]) AS [IDADE],
	CASE 
		WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'Adulto'
		WHEN YEAR([DATA DE NASCIMENTO]) BETWEEN 1990 AND 1995 THEN 'Jovem'
	ELSE 'Criança' END AS [Classificação Etária]
FROM [TABELA DE CLIENTES]