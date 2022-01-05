/* 36.Consultas - Modificando consulta do relat�rio */

/*
Nesta aula, constru�mos um relat�rio que apresentou os clientes que tiveram vendas inv�lidas. Complemente este relat�rio, listando somente os que tiveram vendas inv�lidas e calculando a diferen�a entre o limite de venda m�ximo e o realizado, em percentuais.
Dica: Capture o SQL final da aula.Filtre somente as linhas onde:

AUX1.QUANTIDADE_MES > AUX1.[VOLUME DE COMPRA] COPIAR C�DIGO

Liste a coluna de AUX1.[VOLUME DE COMPRA].Crie uma nova coluna, fazendo a f�rmula:
( (AUX1.QUANTIDADE_MES/AUX1.[VOLUME DE COMPRA]) - 1) * 100COPIAR C�DIGO

Utilize seus conhecimentos para converter o valor percentual para duas casas decimais.
*/

USE SUCOS_VENDAS

SELECT AUX1.NOME, AUX1.ANO_MES, AUX1.[VOLUME DE COMPRA], AUX1.QUANTIDADE_MES, CONVERT(DECIMAL(15,2), ( (AUX1.QUANTIDADE_MES/AUX1.[VOLUME DE COMPRA]) - 1) * 100)  AS VARIACAO, 
	CASE
		WHEN AUX1.QUANTIDADE_MES <= AUX1.[VOLUME DE COMPRA] THEN 'VENDA V�LIDA'
		WHEN AUX1.QUANTIDADE_MES > AUX1.[VOLUME DE COMPRA] THEN 'VENDA INV�LIDA'
	END AS STATUS_VENDA
FROM 
(
	SELECT TC.NOME, CQ.ANO_MES, CQ.QUANTIDADE_MES, TC.[VOLUME DE COMPRA]
	FROM(
		SELECT NF.CPF, SUBSTRING(CONVERT(VARCHAR, NF.[DATA], 120),1,7) AS ANO_MES, SUM(INF.QUANTIDADE) AS QUANTIDADE_MES
		FROM [NOTAS FISCAIS] NF
		INNER JOIN [ITENS NOTAS FISCAIS] INF
		ON NF.NUMERO = INF.NUMERO 
		GROUP BY NF.CPF, SUBSTRING(CONVERT(VARCHAR, NF.[DATA], 120),1,7)
		) CQ
INNER JOIN [TABELA DE CLIENTES] TC ON TC.CPF = CQ.CPF) AUX1
WHERE  AUX1.QUANTIDADE_MES > AUX1.[VOLUME DE COMPRA] 
ORDER BY AUX1.NOME, AUX1.ANO_MES