# Alura-SQL

## Cursos Alura

- [Introdução ao SQL com MySQL: Manipule e consulte dados](https://cursos.alura.com.br/course/mysql-manipule-dados-com-sql)
- [Consultas SQL: Avançando no SQL com MySQL](https://cursos.alura.com.br/course/mysql-consultas-sql)

## Conteúdo

**SQ**L: **S**tructured **Q**uery **L**anguage, ou Linguagem de Consulta Estruturada ou SQL.

<p>Foi criada então uma linguagem chamada SEQUEL, que vem do acrônico em inglês para Structured English Query Language, que traduzindo seria alguma coisa como linguagem de consulta estruturada em inglês.</p>
<p>Pense assim, a linguagem SQL é uma só, porém ela é dividida em tipos de acordo com a funcionalidade dos comandos.Os tipos da linguagem SQL são:</p>

- **DDL** - Data Definition Language - Linguagem de Definição de Dados.São os comandos que interagem com os objetos do banco.
  - São comandos DDL : CREATE, ALTER e DROP
- **DML** - Data Manipulation Language - Linguagem de Manipulação de Dados.São os comandos que interagem com os dados dentro das tabelas.
  - São comandos DML : INSERT, DELETE e UPDATE
- **DQL** - Data Query Language - Linguagem de Consulta de dados.São os comandos de consulta.
  - São comandos DQL : SELECT (é o comando de consulta)
    Aqui cabe um parenteses. Em alguns livros o SELECT fica na DML em outros tem esse grupo próprio.
- **DTL** - Data Transaction Language - Linguagem de Transação de Dados.São os comandos para controle de transação.
  - São comandos DTL : BEGIN TRANSACTION, COMMIT E ROLLBACK
- **DCL** - Data Control Language - Linguagem de Controle de Dados.São os comandos para controlar a parte de segurança do banco de dados.
  - São comandos DCL : GRANT, REVOKE E DENY.

## Comandos

#### **SELECT**

<p>O comando SELECT é um dos principais comandos SQL. Através dele é possível retomar registros no banco de dados. Com o SELECT é possível retomar múltiplos registros, informando quantas colunas queremos consultar. Ele é um grande facilitador de pesquisas no banco de dados e otimiza bastante a produtividade dos desenvolvedores web.</p>

#### **CREAT DATABASE**

<p>Com o comando CREAT DATABASE é possível criar um banco de dados do zero. Esse comando é muito importante principalmente quando você precisa reestruturar todo o seu sistema, mas não sabe por onde começar. Criando um novo banco de dados é possível planejar a organização e estruturar o novo banco de dados desde o início o que facilita na hora de realizar consultas posteriormente. As informações estão mais fáceis de serem encontradas.</p>

#### **USE e SHOW DATABASES**

<p>Esses dois comandos são bastante parecidos, por isso vamos falar deles num único tópico. O comando SHOW DATABASES serve para fazer a visualização mais rápida de diferentes bases de dados. Já com o comando USE é possível selecionar qual base de dados queremos usar e editar. Ambos os comandos são essenciais para desenvolvedores web que trabalham com vários bancos de dados e querem ter a vida facilitada sempre que precisarem pesquisar em qualquer uma das bases. Através do comando USE e do SHOW DATABASES é possível saber quais dados estão armazenados em cada base de dados, o que facilita bastante a vida.</p>

#### **INSERT**

<p>O comando INSERT serve para inserir dados no banco de dados. Com o comando é possível fazer isto de maneira mais dinâmica e dentro da própria aplicação, sem precisar recorrer a códigos PHP para inserir dados.</p>

#### **UPDATE**

<p>O comando UPDATE serve para facilitar a atualização de dados nas tabelas. Esse recurso é bastante simples e de grande utilidade, já que torna possível a alteração de diversos registros com poucos cliques.</p>

#### **DELETE**

<p>Como o próprio nome já denuncia, o comando DELETE serve para excluir um ou mais registros de uma base de dados. É possível remover vários registros simultaneamente com o uso do DELETE, o que faz o desenvolvedor economizar tempo na checagem do banco de dados.</p>

#### **CREATE TABLE**

<p>Esse comando serve para criar novas tabelas em uma base de dados. O CREAT TABLE cria novas tabelas, conseguindo dividi-las em colunas, onde é possível salvar e referenciar especificações de produtos, etc. Com a criação de uma tabela, é preciso especificar todas as colunas e campos criados e este comando consegue dar o tom para toda essa parte importante para a inserção de novos registros num banco de dados.</p>
