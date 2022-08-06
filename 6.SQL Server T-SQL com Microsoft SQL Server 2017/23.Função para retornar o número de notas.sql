-- Fun��o para retornar o n�mero de notas
/*
Ela ir� retornar o n�mero de notas fiscais entre duas datas. 
Transforme isto em uma fun��o chamada FuncTabelaNotas, onde o resultado � a consulta acima. 
Lembrando que a data inicial e final ser�o par�metros desta fun��o. Depois, teste a fun��o atrav�s de um SELECT.
*/

USE [SUCOS_VENDAS]

SELECT DISTINCT DATA, [dbo].[NUMERONOTAS](DATA) AS NUMERO 
FROM [NOTAS FISCAIS] WHERE DATA >= '20170101' 
AND DATA <= '20170110'


CREATE FUNCTION FuncTabelaNotas (
    @DATAINICIAL AS DATE, 
    @DATAFINAL AS DATE
) RETURNS TABLE
RETURN SELECT DISTINCT DATA, [dbo].[NUMERONOTAS](DATA) AS NUMERO 
    FROM [NOTAS FISCAIS] WHERE DATA >= @DATAINICIAL 
        AND DATA <= @DATAFINAL 

SELECT * FROM [dbo].[FuncTabelaNotas]('20170101','20170110')