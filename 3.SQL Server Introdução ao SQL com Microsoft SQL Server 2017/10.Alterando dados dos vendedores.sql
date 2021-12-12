/*Alterando registro - tabela vendedor*/

/*
Recebemos a seguinte informação:

Pericles Alves (matrícula 00238) recebeu aumento e sua comissão passou a ser de 11%.
José Geraldo da Fonseca (matrícula 00233) reclamou que seu nome real é José Geraldo da Fonseca Junior.
*/

UPDATE [TABELA DE VENDEDORES] SET [PERCENTUAL COMISSÃO] = 0.11
WHERE [MATRICULA] = '00238'

UPDATE [TABELA DE VENDEDORES] SET [NOME] = 'José Geraldo da Fonseca Junior'
WHERE [MATRICULA] = '00233'