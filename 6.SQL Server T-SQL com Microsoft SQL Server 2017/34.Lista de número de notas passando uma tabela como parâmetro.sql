-- Lista de número de notas passando uma tabela como parâmetro

/*
Temos a seguinte consulta que nos retorna o número de notas fiscais por dia, onde @ListaDatas é uma variável do tipo tabela, com a lista de datas a serem exibidas:

SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS]
WHERE DATA IN (SELECT DATANOTA FROM @ListaDatas)
GROUP BY DATA

Construa uma SP que retorne o número de notas fiscais por dia, baseada na lista de dias passada como parâmetro.

Dicas:

Crie um estrutura do tipo TYPE, onde iremos inserir as datas;
Passe este tipo para a SP como parâmetro, representando a lista de datas. O nome da SP deve ser ListaNumeroNotas;
Utilize o SELECT mencionado acima, usando a variável @ListaDatas como sendo a lista de datas passada como parâmetro;
Crie a SP;
Inicialize algumas datas em uma variável do tipo definido no passo inicial;
Execute a SP.
*/

USE [SUCOS_VENDAS]

-- Criando uma estrutura do tipo TYPE:
CREATE TYPE ListaDatas as TABLE (
    DATANOTA date NOT NULL
)

-- Criando a SP usando este tipo como parâmetro e executando a consulta definida no enunciado:
CREATE PROCEDURE ListaNumeroNotas @ListaDatas 
    AS ListaDatas READONLY AS
SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS]
    WHERE DATA IN (SELECT DATANOTA FROM @ListaDatas)
GROUP BY DATA

-- Crie uma variável incluindo a lista de datas e, em seguida, execute a SP.
DECLARE @ListaDatas AS ListaDatas
INSERT INTO @ListaDatas (DATANOTA) VALUES ('20180101'), 
    ('20180102'), ('20180103')
EXEC ListaNumeroNotas @ListaDatas=@ListaDatas