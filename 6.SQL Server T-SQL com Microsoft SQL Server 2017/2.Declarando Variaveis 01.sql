-- Declarando vari�veis

DECLARE @MATRICULA VARCHAR(5), @NOME VARCHAR(100), @PERCENTUAL FLOAT, @DATA DATE, @FERIAS BIT
DECLARE @BAIRRO VARCHAR(100)

SET @MATRICULA = '00240'
SET @NOME = 'Cl�udia Rodrigues'
SET @PERCENTUAL = 0.10
SET @DATA = '20120312'
SET @FERIAS = 1
SET @BAIRRO = 'Jardins'

-- Exibi o valor das vari�veis
PRINT @MATRICULA
PRINT @PERCENTUAL
PRINT @DATA
PRINT @FERIAS
PRINT @BAIRRO

INSERT INTO [TABELA DE VENDEDORES] (MATRICULA, NOME, [PERCENTUAL COMISS�O], [DATA ADMISS�O], [DE FERIAS], BAIRRO)
VALUES (@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO)

SELECT * FROM [TABELA DE VENDEDORES]

PRINT @MATRICULA
PRINT @PERCENTUAL
PRINT @DATA
PRINT @FERIAS
PRINT @BAIRRO