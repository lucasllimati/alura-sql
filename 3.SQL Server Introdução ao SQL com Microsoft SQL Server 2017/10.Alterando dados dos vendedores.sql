/*Alterando registro - tabela vendedor*/

/*
Recebemos a seguinte informa��o:

Pericles Alves (matr�cula 00238) recebeu aumento e sua comiss�o passou a ser de 11%.
Jos� Geraldo da Fonseca (matr�cula 00233) reclamou que seu nome real � Jos� Geraldo da Fonseca Junior.
*/

UPDATE [TABELA DE VENDEDORES] SET [PERCENTUAL COMISS�O] = 0.11
WHERE [MATRICULA] = '00238'

UPDATE [TABELA DE VENDEDORES] SET [NOME] = 'Jos� Geraldo da Fonseca Junior'
WHERE [MATRICULA] = '00233'