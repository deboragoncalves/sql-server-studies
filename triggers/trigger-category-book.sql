USE book_store;
GO

-- Criar trigger: quantidade de livros em cada categoria

CREATE TRIGGER TG_CATEGORY_BOOK ON book AFTER INSERT, UPDATE, DELETE AS 
BEGIN

	SELECT CATEGORY, COUNT(*) AS COUNT_CATEGORY FROM book GROUP BY CATEGORY;

END;

CREATE TRIGGER TG_CATEGORY_BOOKS ON book AFTER INSERT, UPDATE, DELETE AS 
BEGIN

	SELECT CATEGORY, COUNT(*) AS COUNT_CATEGORY FROM book GROUP BY CATEGORY;

END;

-- Deletar trigeer

DROP TRIGGER IF EXISTS TG_CATEGORY_BOOK;
