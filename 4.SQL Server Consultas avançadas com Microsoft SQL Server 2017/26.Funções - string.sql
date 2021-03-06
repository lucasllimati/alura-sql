/* Fun??es que manipulam STRING */

USE SUCOS_VENDAS

/* REMOVE OS ESPA?OS A ESQUERDA */
SELECT LTRIM('      OLA')
/* REMOVE OS ESPA?OS A DIREIRA */
SELECT RTRIM('OLA      ')
/* CONCATENA OS CARACTERES */
SELECT CONCAT('OLA ','TUDO BEM')
/* CONCATENA OS CARACTERES */
SELECT 'OLA ' + 'TUDO BEM'
/* RETORNA O NUMERO X DE CARACTERES A ESQUERDA */
SELECT LEFT('RUA AUGUSTA',3) -- RUA
/* RETORNA O NUMERO X DE CARACTERES A DIREITA */
SELECT RIGHT('RUA AUGUSTA',7) -- AUGUSTA
/* RETORNA OS CAMPOS EM MAI?SCULOS */
SELECT UPPER('rua augusta')   
/* RETORNA OS CAMPOS EM MIN?SCULOS */
SELECT LOWER('RUA AUGUSTA')   
/* SUBSTITUI OS VALORES. NESSE CASO, RETIRA O 'R.' E SUBSTITUI POR 'RUA' */
SELECT REPLACE('R. AUGUSTA','R.','RUA') 
/* RETORNA UM TRECHE DE CARACTERES. NESSE CASO, DO 1? AO 3? CARACTER */
SELECT SUBSTRING('RUA AUGUSTA', 1, 3) -- RUA
/* RETORNA UM TRECHE DE CARACTERES. NESSE CASO, DO 2? AO 4? CARACTER */
SELECT SUBSTRING('RUA AUGUSTA', 2, 4) -- UA A
/* RETORNA O TAMANHO/QUANTIDADE DE CARACTERES (INCLUINDO OS ESPA?OS) */
SELECT LEN('RUA AUGUSTA')  -- 11

SELECT * FROM [TABELA DE CLIENTES]
/* CONCATENAR O NOME COM CPF DOS CLIENTES */
SELECT CONCAT(NOME, ' (', CPF, ') ') AS [NOME E CPF]
FROM [TABELA DE CLIENTES]