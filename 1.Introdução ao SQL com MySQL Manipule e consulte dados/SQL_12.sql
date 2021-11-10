/*SELEÇÃO DOS DADOS DA TABELA*/
SELECT * FROM tbproduto WHERE PRODUTO = '544931';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';

/*ATUALIZAÇÃO DOS DADOS NA TABELA*/
UPDATE tbproduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';