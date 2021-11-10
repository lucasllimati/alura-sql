/*DATA ATUAL*/
SELECT CURDATE();
/*HORA ATUAL*/
SELECT CURRENT_TIME();
/*DATA E HORA ATUAL*/
SELECT CURRENT_TIMESTAMP();
/*EXTRAI O ANO*/
SELECT YEAR(CURRENT_TIMESTAMP());
/*EXTRAI O DIA*/
SELECT DAY(CURRENT_TIMESTAMP());
/*EXTRAI O MÊS*/
SELECT MONTH(CURRENT_TIMESTAMP());
/*EXTRAI O NOME DO MÊS*/
SELECT MONTHNAME(CURRENT_TIMESTAMP());
/*DIFERENÇA DE DIAS*/
SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2019-01-01') AS RESULTADO;
SELECT DATEDIFF(CURRENT_TIMESTAMP(), '1965-09-04') AS RESULTADO;
/*DIA DE HOJE E DIA DE HOJE - 5 DIAS*/
SELECT CURRENT_TIMESTAMP() AS DIA_HOJE
, DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;

SELECT DISTINCT DATA_VENDA, DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES , YEAR(DATA_VENDA) AS ANO 
FROM NOTAS_FISCAIS;