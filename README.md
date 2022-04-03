# Alura-SQL

## Cursos Alura

- [Introdução ao SQL com MySQL: Manipule e consulte dados](https://cursos.alura.com.br/course/mysql-manipule-dados-com-sql)
- [Consultas SQL: Avançando no SQL com MySQL](https://cursos.alura.com.br/course/mysql-consultas-sql)
- [SQL Server: Introdução ao SQL com Microsoft SQL Server 2017](https://cursos.alura.com.br/course/sql-com-sql-server-2017)
- [SQL Server: Consultas avançadas com Microsoft SQL Server 2017](https://cursos.alura.com.br/course/consultas-sql-server-2017)
- [SQL Server: Manipulação de dados com Microsoft SQL Server 2017](https://cursos.alura.com.br/course/manipulacao-dados-com-sql-server-2017)
- [SQL Server: T-SQL com Microsoft SQL Server 2017](https://cursos.alura.com.br/course/tsql-com-sql-server-2017)
<!-- 
- []()
- []()
- []()
- []()
- []()
- []() 
-->

## Sites importantes

- [SQL Server - T-SQL Para Iniciantes](http://www.macoratti.net/14/02/sql_tsql1.htm)
- [EXEMPLOS SQL W3School](https://www.w3schools.com/sql/sql_examples.asp)

## Conteúdo

<div>
  <img src="img/sql.png" alt="sql" width="200"/>
</div>

**SQL**: **S**tructured **Q**uery **L**anguage, ou Linguagem de Consulta Estruturada ou SQL.

<p>Foi criada então uma linguagem chamada SEQUEL, que vem do acrônico em inglês para Structured English Query Language, que traduzindo seria alguma coisa como linguagem de consulta estruturada em inglês.</p>
<p>Pense assim, a linguagem SQL é uma só, porém ela é dividida em tipos de acordo com a funcionalidade dos comandos.Os tipos da linguagem SQL são:</p>
<div>
  <img src="img/subconjuntos-sql.png" alt="subconjuntos" width="300"/>
</div>

- **DDL** - Data Definition Language - Linguagem de Definição de Dados. São os comandos que interagem com os objetos do banco.
  - São comandos DDL: **CREATE, ALTER e DROP**.
- **DML** - Data Manipulation Language - Linguagem de Manipulação de Dados. São os comandos que interagem com os dados dentro das tabelas.
  - São comandos DML: **INSERT, DELETE e UPDATE**.
- **DQL** - Data Query Language - Linguagem de Consulta de dados. São os comandos de consulta.
  - São comandos DQL: **SELECT** (é o comando de consulta)
    Aqui cabe um parenteses. Em alguns livros o SELECT fica na DML em outros tem esse grupo próprio.
- **DTL** - Data Transaction Language - Linguagem de Transação de Dados. São os comandos para controle de transação.
  - São comandos DTL: **BEGIN TRANSACTION, COMMIT E ROLLBACK**.
- **DCL** - Data Control Language - Linguagem de Controle de Dados. São os comandos para controlar a parte de segurança do banco de dados.
  - São comandos DCL: **GRANT, REVOKE E DENY**.

### Comandos

Segue abaixo, algusn comendos importantes do T-SQL.

<div>
  <img src="img/colinhasql.jpg" alt="subconjuntos" width="300"/>
</div>

#### **CREATE DATABASE**

Com o comando **CREATE DATABASE** é possível criar um banco de dados do zero. Esse comando é muito importante principalmente quando você precisa reestruturar todo o seu sistema, mas não sabe por onde começar. Criando um novo banco de dados é possível planejar a organização e estruturar o novo banco de dados desde o início o que facilita na hora de realizar consultas posteriormente. As informações estão mais fáceis de serem encontradas.

~~~sql
CREATE DATABASE escola;
~~~

#### **CREATE TABLE**

Esse comando serve para criar novas tabelas em uma base de dados. O **CREATE TABLE** cria novas tabelas, conseguindo dividi-las em colunas, onde é possível salvar e referenciar especificações de produtos, etc. Com a criação de uma tabela, é preciso especificar todas as colunas e campos criados e este comando consegue dar o tom para toda essa parte importante para a inserção de novos registros num banco de dados.

~~~sql
CREATE TABLE estudantes (id INT PRIMARY KEY, nome VARCHAR(50), cursoVARCHAR(100));
~~~

#### **ALTER TABLE**

Esse  comando **ALTER TABLE** é utilizado quando precisamos alterar a estrutura de um objeto que já existe na base de dados.

~~~sql
ALTER TABLE estudantes ADD idade INT;
~~~

#### **DROP TABLE**

Esse  comando **DROP TABLE** é o responsável por deletar objetos da nossa base de dados.

~~~sql
DROP TABLE estudantes;
~~~

#### **USE e SHOW DATABASES**

Esses dois comandos são bastante parecidos, por isso vamos falar deles num único tópico. O comando **SHOW DATABASES** serve para fazer a visualização mais rápida de diferentes bases de dados. Já com o comando **USE** é possível selecionar qual base de dados queremos usar e editar. Ambos os comandos são essenciais para desenvolvedores web que trabalham com vários bancos de dados e querem ter a vida facilitada sempre que precisarem pesquisar em qualquer uma das bases. Através do comando USE e do **SHOW DATABASES** é possível saber quais dados estão armazenados em cada base de dados, o que facilita bastante a vida.

~~~sql
USE escola;
SHOW DATABASES;
~~~

#### **SHOW TABLES**

O comando **SHOW TABLES** é similar ao comando **SHOW DATABASES**, utilizado caso você possua múltiplas tabelas dentro de um banco de dados e desejar ver uma lista de todos os itens contidos em cada tabela.

~~~sql
SHOW TABLES;
~~~

#### **SELECT**

O comando **SELECT** é um dos principais comandos SQL. Através dele é possível retomar registros no banco de dados. Com o **SELECT** é possível retomar múltiplos registros, informando quantas colunas queremos consultar. Ele é um grande facilitador de pesquisas no banco de dados e otimiza bastante a produtividade dos desenvolvedores web.

~~~sql
SELECT * FROM estudantes;
SELECT nome, curso FROM estudantes;
SELECT nome FROM estudantes WHERE curso = 'Desenvolvimento de Software';
~~~

#### **INSERT**

O comando **INSERT** serve para inserir dados no banco de dados. Com o comando é possível fazer isto de maneira mais dinâmica e dentro da própria aplicação, sem precisar recorrer a códigos PHP para inserir dados.

~~~sql
INSERT into estudantes (id, nome, curso) values (23, 'Rafael', 'Desenvolvimento de Software');
~~~

#### **UPDATE**

O comando **UPDATE** serve para facilitar a atualização de dados nas tabelas. Esse recurso é bastante simples e de grande utilidade, já que torna possível a alteração de diversos registros com poucos cliques.</p>

~~~sql
UPDATE estudantes SET nome = 'Rafael Rodrigues Maia' WHERE id = 23;
~~~

#### **DELETE**

Como o próprio nome já denuncia, o comando **DELETE** serve para excluir um ou mais registros de uma base de dados. É possível remover vários registros simultaneamente com o uso do **DELETE**, o que faz o desenvolvedor economizar tempo na checagem do banco de dados.

~~~sql
DELETE FROM estudantes WHERE id = 23;
DELETE FROM estudantes;
~~~

#### **ORDER BY**

O comando **ORDER BY** é utilizado para finalizar nossa lista de comandos essenciais em SQL, vamos fazer com que os resultados de uma consulta sejam exibidos em uma ordem específica, bastando para isso usar a cláusula ORDER BY, seguida do nome da coluna que se deseja ordenar.

~~~sql
SELECT Nome_Prod, Preco_Prod
FROM Produtos
ORDER BY Nome_Prod;
~~~

#### **GROUP BY**

~~~sql

~~~

#### **TOP**

~~~sql

~~~

#### **DISTINCT**

~~~sql

~~~

#### **JOINs**

O comando **JOIN** é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas. Segue as variações da função.
<!-- ![](img/joins.jpg) -->
<div>
  <img src="img/joins.jpg" alt="joins" width="450"/>
</div>

##### Inner Join

O **Inner Join** é o método de junção mais conhecido e, como ilustra a Figura 2, retorna os registros que são comuns às duas tabelas.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
INNER JOIN TabelaB as B on a.Nome = b.Nome
~~~

##### Left Join

O **Left Join** tem como resultado todos os registros que estão na tabela A (mesmo que não estejam na tabela B) e os registros da tabela B que são comuns à tabela A.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
LEFT JOIN TabelaB as B on a.Nome = b.Nome
~~~

##### Right Join

Usando o **Right Join**, teremos como resultado todos os registros que estão na tabela B (mesmo que não estejam na tabela A) e os registros da tabela A que são comuns à tabela B.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
RIGHT JOIN TabelaB as B on a.Nome = b.Nome
~~~

##### Outer Join

O **Outer Join** (também conhecido por Full Outer Join ou Full Join), tem como resultado todos os registros que estão na tabela A e todos os registros da tabela B.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
FULL OUTER JOIN TabelaB as B on a.Nome = b.Nome
~~~

##### Left Excluding Join

O **Left Excluding Join**, que retorna como resultado todos os registros que estão na tabela A e que não estejam na tabela B.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
LEFT JOIN TabelaB as B on a.Nome = b.Nome WHERE b.Nome is null
~~~

##### Right Excluding Join

O **Right Excluding Join** retorna como resultado todos os registros que estão na tabela B e que não estejam na tabela A.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
RIGHT JOIN TabelaB as B on a.Nome = b.Nome WHERE a.Nome is null
~~~

##### Outer Excluding Join

Usando o **Outer Excluding Join**, teremos como resultado todos os registros que estão na tabela B, mas que não estejam na tabela A, e todos os registros que estão na tabela A, mas que não estejam na tabela B.

~~~sql
SELECT a.Nome, b.Nome
FROM TabelaA as A
FULL OUTER JOIN TabelaB as B on a.Nome = b.Nome WHERE a.Nome is null or b.Nome is null
~~~

#### **GRANT**

O comando **GRANT** é utilizado para conceder privilégios dentro do banco de dados. Isso significa que, com ele, podemos autorizar que determinadas ações sejam executadas apenas por pessoas específicas.

~~~sql
GRANT SELECT, INSERT, UPDATE ON estudantes TO Maria;
~~~

#### **REVOKE**

O comando **REVOKE** é utilizado para revogar os privilégios que foram concedidos anteriormente.

~~~sql
REVOKE SELECT ON estudantes FROM  Maria;
~~~

#### **DENY**

O comando **DENY** é utilizado para negar explicitamente uma ou mais permissões a um objeto do banco.

~~~sql
DENY SELECT ON estudantes TO João;
~~~

#### **OBJECT ID**

O comando **OBJECT ID**, nessa função eu passo como parâmetro, o nome do objeto como um varchar e depois o tipo dele.

~~~sql
IF OBJECT_ID('TABELA_TESTE', 'U') IS NOT NULL DROP TABLE TABELA_TESTE
~~~

#### **DEFAULT**

O comando **DEFAULT** é usada para definir um valor padrão para uma coluna. O valor padrão será adicionado a todos os novos registros, se nenhum outro valor for especificado.

~~~sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

-- A DEFAULTrestrição também pode ser usada para inserir valores do sistema, usando funções como : GETDATE()
CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);


~~~

<!-- #### ****

O comando

~~~sql

~~~ -->