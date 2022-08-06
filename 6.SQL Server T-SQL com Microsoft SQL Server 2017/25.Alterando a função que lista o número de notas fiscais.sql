-- Alterando a fun��o que lista o n�mero de notas fiscais
/*
Ela tamb�m retorna o n�mero de notas entre duas datas. Modifique a fun��o FuncTabelaNotas para que utilize esta consulta acima.
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