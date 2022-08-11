-- Lista de n�mero de notas passando uma tabela como par�metro

/*
Temos a seguinte consulta que nos retorna o n�mero de notas fiscais por dia, onde @ListaDatas � uma vari�vel do tipo tabela, com a lista de datas a serem exibidas:

SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS]
WHERE DATA IN (SELECT DATANOTA FROM @ListaDatas)
GROUP BY DATA

Construa uma SP que retorne o n�mero de notas fiscais por dia, baseada na lista de dias passada como par�metro.

Dicas:

Crie um estrutura do tipo TYPE, onde iremos inserir as datas;
Passe este tipo para a SP como par�metro, representando a lista de datas. O nome da SP deve ser ListaNumeroNotas;
Utilize o SELECT mencionado acima, usando a vari�vel @ListaDatas como sendo a lista de datas passada como par�metro;
Crie a SP;
Inicialize algumas datas em uma vari�vel do tipo definido no passo inicial;
Execute a SP.
*/

USE [SUCOS_VENDAS]

-- Criando uma estrutura do tipo TYPE:
CREATE TYPE ListaDatas as TABLE (
    DATANOTA date NOT NULL
)

-- Criando a SP usando este tipo como par�metro e executando a consulta definida no enunciado:
CREATE PROCEDURE ListaNumeroNotas @ListaDatas 
    AS ListaDatas READONLY AS
SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS]
    WHERE DATA IN (SELECT DATANOTA FROM @ListaDatas)
GROUP BY DATA

-- Crie uma vari�vel incluindo a lista de datas e, em seguida, execute a SP.
DECLARE @ListaDatas AS ListaDatas
INSERT INTO @ListaDatas (DATANOTA) VALUES ('20180101'), 
    ('20180102'), ('20180103')
EXEC ListaNumeroNotas @ListaDatas=@ListaDatas