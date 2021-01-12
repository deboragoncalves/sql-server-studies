USE book_store;
GO

-- Criar procedure que retorna data de criação do livro de acordo com o parâmetro (livro)

CREATE PROCEDURE DATA_BOOK @BOOK VARCHAR(100)
AS 
BEGIN
IF @BOOK = 'Harry Potter'
	SELECT NAME, AUTHOR, DATE_CREATED FROM BOOK WHERE NAME = 'Harry Potter';
ELSE IF @BOOK = 'O Chamado de Cuco'
	SELECT NAME, AUTHOR, DATE_CREATED FROM BOOK WHERE NAME = @BOOK;
END

-- Execução sem se importar com a ordem dos parâmetros

EXEC DATA_BOOK 'Harry Potter';

-- Execução onde se deve seguir a ordem dos parâmetros

-- EXEC DATA_BOOK @BOOK = 'Harry Potter';

-- Criar procedure para atualizar a idade de cada cliente

CREATE PROCEDURE AGE_CLIENT @ID_CLIENT INT, @DATE_BIRTH DATE
AS
BEGIN
	IF (SELECT COUNT(*) FROM CLIENT WHERE ID = @ID_CLIENT GROUP BY ID) > 0
		UPDATE CLIENT SET AGE = DATEDIFF(YEAR, @DATE_BIRTH, GETDATE()) WHERE ID = @ID_CLIENT
END

EXEC AGE_CLIENT 5, '1993-09-11';
EXEC AGE_CLIENT 6, '1995-10-21';

-- Procedures do sistema

-- Retornar colunas da tabela e outros dados: tamanho, se aceita nulo, tipo de dado, etc.

EXEC sp_columns @table_name = 'BOOK', @table_owner = 'dbo';