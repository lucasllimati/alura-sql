/* 17.Consultas - Classifica��o de clientes */
/* 
Veja o ano de nascimento dos clientes e classifique-os como: nascidos antes de 1990 s�o adultos, 
nascidos entre 1990 e 1995 s�o jovens e nascidos depois de 1995 s�o crian�as. Liste o nome do cliente e esta classifica��o. 
*/

USE SUCOS_VENDAS

SELECT [NOME], [DATA DE NASCIMENTO], YEAR(GETDATE()) - YEAR([DATA DE NASCIMENTO]) AS [IDADE],
	CASE 
		WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'Adulto'
		WHEN YEAR([DATA DE NASCIMENTO]) BETWEEN 1990 AND 1995 THEN 'Jovem'
	ELSE 'Crian�a' END AS [Classifica��o Et�ria]
FROM [TABELA DE CLIENTES]