-- Função para retornar o número de notas
/*
Ela irá retornar o número de notas fiscais entre duas datas. 
Transforme isto em uma função chamada FuncTabelaNotas, onde o resultado é a consulta acima. 
Lembrando que a data inicial e final serão parâmetros desta função. Depois, teste a função através de um SELECT.
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