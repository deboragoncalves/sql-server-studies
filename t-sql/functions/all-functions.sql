USE book_store;
GO

-- Criar fun��o que retorna uma tabela com os livros escritos pelo autor

-- Deleta fun��o se existe

IF OBJECT_ID('BOOKS_AUTHOR', 'FN') IS NOT NULL
DROP FUNCTION BOOKS_AUTHOR;
GO

CREATE FUNCTION BOOKS_AUTHOR (@AUTHOR VARCHAR(100)) 
RETURNS TABLE AS
RETURN SELECT * FROM BOOK WHERE AUTHOR = @AUTHOR;

SELECT NAME, AUTHOR FROM dbo.BOOKS_AUTHOR('JK Rowlling');

-- Alterar fun��o: n�mero de livros que escritos pelo autor

ALTER FUNCTION BOOKS_AUTHOR (@AUTHOR VARCHAR(100)) 
RETURNS TABLE AS
RETURN SELECT COUNT(*) AS ALL_BOOKS FROM BOOK WHERE AUTHOR = @AUTHOR;

SELECT * FROM dbo.BOOKS_AUTHOR('JK Rowlling');

-- Criar fun��o para inserir valores na tabela de clientes

SELECT * FROM CLIENT;

CREATE FUNCTION INSERT_CLIENT (@ID_BOOK INT, @CPF VARCHAR(11), @PHONE_NUMBER VARCHAR(50), @FIRST_BUY BIT)
RETURNS TABLE AS
BEGIN
	INSERT INTO CLIENT (ID_BOOK, CPF, NAME, PHONE_NUMBER, FIRST_BUY) VALUES (2, '092345123', 'Joaquina', '(48) 12345-7890', 0);
	RETURN SELECT * FROM CLIENT;
END


