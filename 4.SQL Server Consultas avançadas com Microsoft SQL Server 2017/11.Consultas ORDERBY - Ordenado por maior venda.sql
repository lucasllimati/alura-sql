/* 11.Consultas ORDERBY - Ordenado por maior venda */
/* Qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Limão", em quantidade? (Obtenha este resultado usando 2 SQLs). 99 */

USE SUCOS_VENDAS


/* Primeiro, vamos buscar o código do produto "Linha Refrescante - 1 Litro - Morango/Limão": */
SELECT * FROM [TABELA DE PRODUTOS] 
WHERE [NOME DO PRODUTO] = 'Linha Refrescante - 1 Litro - Morango/Limão'

/* Com esta consulta, obtemos o resultado do código deste produto: '1101035'. E com esta informação, fazemos a consulta para achar a maior quantidade vendida deste produto: */
SELECT * FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
ORDER BY QUANTIDADE DESC

/* Veremos que a maior quantidade foi 99. */