/* 11.Consultas ORDERBY - Ordenado por maior venda */
/* Qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Lim�o", em quantidade? (Obtenha este resultado usando 2 SQLs). 99 */

USE SUCOS_VENDAS


/* Primeiro, vamos buscar o c�digo do produto "Linha Refrescante - 1 Litro - Morango/Lim�o": */
SELECT * FROM [TABELA DE PRODUTOS] 
WHERE [NOME DO PRODUTO] = 'Linha Refrescante - 1 Litro - Morango/Lim�o'

/* Com esta consulta, obtemos o resultado do c�digo deste produto: '1101035'. E com esta informa��o, fazemos a consulta para achar a maior quantidade vendida deste produto: */
SELECT * FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
ORDER BY QUANTIDADE DESC

/* Veremos que a maior quantidade foi 99. */