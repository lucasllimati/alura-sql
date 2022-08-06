-- Alterando a função que lista o número de notas fiscais
/*
Ela também retorna o número de notas entre duas datas. Modifique a função FuncTabelaNotas para que utilize esta consulta acima.
*/

USE [SUCOS_VENDAS]

SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS] 
    WHERE DATA >= '20170101' AND DATA <= '20170110'
GROUP BY DATA


ALTER FUNCTION FuncTabelaNotas (
    @DATAINICIAL AS DATE, 
    @DATAFINAL AS DATE
) RETURNS TABLE
RETURN SELECT DATA, COUNT(*) AS NUMERO 
    FROM [NOTAS FISCAIS] WHERE DATA >= @DATAINICIAL AND 
        DATA <= @DATAFINAL 
GROUP BY DATA 

SELECT * FROM [dbo].[FuncTabelaNotas]('20170101','20170110')