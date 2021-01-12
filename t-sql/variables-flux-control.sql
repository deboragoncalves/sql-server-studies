USE book_store;
GO

-- Variáveis e controle de fluxo (if, else, begin, end)

-- Declarar

DECLARE @BOOK_NAME VARCHAR(100), @AUTHOR VARCHAR(100), @CATEGORY VARCHAR(100), @DATE DATE;

-- Setar valores

SET @BOOK_NAME = 'Harry Potter e a Pedra Filosofal';
SET @AUTHOR = 'JK Rowlling';
SET @CATEGORY = 'Ficção';
SET @DATE = GETDATE();

-- Select com count, para analisar se existem ou não livros com o mesmo nome na tabela 

SELECT COUNT(*) FROM BOOK WHERE NAME = @BOOK_NAME;

-- Delete

IF EXISTS (SELECT @BOOK_NAME FROM BOOK) DELETE FROM BOOK WHERE NAME = @BOOK_NAME;

-- Condicional: se existem, update utilizando o where como filtro. caso contrário, insert.

IF (SELECT COUNT(*) FROM BOOK WHERE NAME = @BOOK_NAME) > 0
UPDATE BOOK SET NAME = @BOOK_NAME, AUTHOR = @AUTHOR, CATEGORY = @CATEGORY, DATE_CREATED = @DATE WHERE NAME = @BOOK_NAME;
ELSE INSERT INTO BOOK (NAME, AUTHOR, CATEGORY, DATE_CREATED) VALUES (@BOOK_NAME, @AUTHOR, @CATEGORY, @DATE); 
