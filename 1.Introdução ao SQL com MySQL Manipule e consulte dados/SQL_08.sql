USE sucos;

/*ALTERAÇÃO DA ESTRUTURA NA TABELA - ADICIONANDO CHAVE PRIMÁRIA*/
ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);

/*SELEÇÃO DOS DADOS DA TABELA*/
SELECT * FROM tbproduto;

/*INSERÇÃO DE DADOS NA TABELA*/
INSERT INTO tbproduto (PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,PRECO_LISTA)
VALUES('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

/*ATUALIZAÇÃO DOS DADOS NA TABELA*/
UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';