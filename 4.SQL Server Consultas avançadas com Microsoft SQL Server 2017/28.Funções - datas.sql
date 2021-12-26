/*  DATAS */

USE SUCOS_VENDAS

SELECT SYSDATETIME()

SELECT SYSDATETIMEOFFSET()

SELECT SYSUTCDATETIME()

SELECT CURRENT_TIMESTAMP

SELECT GETDATE()

SELECT GETUTCDATE()

SELECT DATENAME(YEAR,GETDATE())

SELECT DATENAME(MICROSECOND,GETDATE())

SELECT DATENAME(MINUTE,GETDATE())


SELECT DATENAME(MONTH,GETDATE())

SELECT DATEPART(MONTH,GETDATE())

SELECT DAY(GETDATE())

SELECT YEAR(GETDATE())

SELECT DATEFROMPARTS(2015,9,1)

SELECT DATENAME(MONTH,DATEFROMPARTS(2015,9,1))

SELECT DATETIME2FROMPARTS(2015,9,1,13,12,11,120,4)

SELECT DATEDIFF(MONTH, DATEFROMPARTS(2015,9,1), GETDATE())

SELECT DATEADD(MONTH, 5, GETDATE())

SELECT ISDATE('2018-01-01')

SELECT ISDATE('2018-25-28')

SELECT * FROM [NOTAS FISCAIS]

SELECT [DATA], CONCAT(DATENAME(DAY, [DATA]), ' ', DATENAME(MONTH, [DATA]), ' ', DATENAME(YEAR, [DATA]))
FROM [NOTAS FISCAIS]









