USE book_store;
GO

DELETE FROM book WHERE id = 1;

DELETE FROM client;

DELETE FROM books_prices;

-- Delete: not in

DELETE FROM book WHERE ID NOT IN (6, 7);