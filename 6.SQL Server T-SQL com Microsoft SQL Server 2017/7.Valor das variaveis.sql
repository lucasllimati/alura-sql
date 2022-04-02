-- Controle de fluxo dos valores de variáveis

USE [SUCOS_VENDAS]

SELECT GETDATE()
SELECT DATENAME(WEEKDAY, DATEADD(DAY, 6, GETDATE()))

DECLARE @DIA_SEMANA VARCHAR(20)
DECLARE @NUMERO_DIAS INT

SET @NUMERO_DIAS = 1
SET @DIA_SEMANA = DATENAME(WEEKDAY, DATEADD(DAY, @NUMERO_DIAS, GETDATE()))

PRINT @DIA_SEMANA

IF @DIA_SEMANA = 'Domingo' OR @DIA_SEMANA = 'Sábado'
   PRINT 'Este dia é fim de semana'
ELSE
   PRINT 'Este dia é dia da semana'


-- SQL EM ENGLISH
IF @DIA_SEMANA = 'Sunday' OR @DIA_SEMANA = 'Saturday'
   PRINT 'Este dia é fim de semana'
ELSE
   PRINT 'Este dia é dia da semana'
   
PRINT @DIA_SEMANA

/*
----------------------------
|ENGLISH	| PORTUGUES		|
----------------------------
Sunday		| Domingo
Monday		| Segunda-feira
Tuesday		| Terça-feira
Wednesday	| Quarta-feira
Thursday	| Quinta-feira
Friday		| Sexta-feira
Saturday 	| Sábado
*/