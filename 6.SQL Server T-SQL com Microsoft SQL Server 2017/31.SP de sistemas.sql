-- SP de sistema

USE [SUCOS_VENDAS]

EXEC sp_columns @table_name = 'TABELA DE CLIENTES', @table_owner = 'dbo'

EXEC sp_tables @table_name = 'TAB%', @table_owner = 'dbo', @table_qualifier = 'SUCOS_VENDAS'