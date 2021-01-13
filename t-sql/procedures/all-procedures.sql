USE book_store;
GO

-- Criar procedure para deletar campos da tabela de preços

CREATE PROCEDURE DELETE_NEW_PRICES @ID_BOOK INT, @PRICE MONEY
AS 
BEGIN

-- Verificar se o item a tabela existem 

IF OBJECT_ID('NEW_BOOKS_PRICES', 'U') IS NOT NULL AND (SELECT COUNT(*) FROM NEW_BOOKS_PRICES WHERE ID_BOOK = @ID_BOOK AND PRICE = @PRICE) > 0
	DELETE FROM NEW_BOOKS_PRICES WHERE ID_BOOK = @ID_BOOK AND PRICE = @PRICE;
END

EXEC DELETE_NEW_PRICES 1, 45.50;

-- Criar procedure para atualizar a idade de cada cliente

CREATE PROCEDURE AGE_CLIENT @ID_CLIENT INT, @DATE_BIRTH DATE
AS
BEGIN
	IF (SELECT COUNT(*) FROM CLIENT WHERE ID = @ID_CLIENT) > 0
		UPDATE CLIENT SET AGE = DATEDIFF(YEAR, @DATE_BIRTH, GETDATE()) WHERE ID = @ID_CLIENT
END

-- Execução sem se importar com a ordem dos parâmetros

EXEC AGE_CLIENT 7, '1995-09-12';

-- Execução onde se deve seguir a ordem dos parâmetros

EXEC AGE_CLIENT @ID_CLIENT = 6, @DATE_BIRTH = '1990-10-21';

SELECT * FROM CLIENT;

-- Procedures do sistema

-- Retornar colunas da tabela e outros dados: tamanho, se aceita nulo, tipo de dado, etc.

-- Parametros opcionaisgit 

EXEC sp_columns @table_name = 'BOOK', @table_owner = 'dbo';