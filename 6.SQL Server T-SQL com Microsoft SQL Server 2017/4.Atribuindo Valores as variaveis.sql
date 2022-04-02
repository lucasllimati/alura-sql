-- Atribuindo valores �s vari�veis

/*
Crie 4 vari�veis com as caracter�sticas abaixo:

Nome: Cliente. Tipo: Caracteres com 10 posi��es. Valor: Jo�o
Nome: Idade. Tipo: Inteiro. Valor: 10
Nome: DataNascimento. Tipo: Data. Valor: 10/01/2007
Nome: Custo. Tipo: N�mero com casas decimais. Valor: 10,23

Construa um script que declare estas vari�veis, atribua valores a elas e exiba-as na sa�da do SQL Server Management Studio.
*/

USE [SUCOS_VENDAS]

DECLARE @Cliente VARCHAR(10), @Idade INTEGER, @DataNascimento DATE, @Custo FLOAT

SET @Cliente = 'Jo�o'
SET @Idade = 10
SET @DataNascimento = '20070110'
SET @Custo = 10.23

PRINT @Cliente
PRINT @Idade
PRINT @DataNascimento
PRINT @Custo