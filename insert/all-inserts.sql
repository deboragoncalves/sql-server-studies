USE book_store;
GO

-- Insert com date: 'YYYY-MM-DD'. 

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('Harry Potter', 'JK Rowlling', 'Ficção', '2002-10-31');

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('O Chamado de Cuco', 'JK Rowlling', 'Ficção', '2010-02-05'), ('O Jornal Nacional', 'William Bonner', 'Jornalismo', '2007-05-07');

-- Teste insert data inválida

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('Seja Foda!', 'Caio Carneiro', 'Auto ajuda', '2019-13-33');

-- Inserir com date valor default

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY]) VALUES ('Agassi', 'William Bonner', 'Biografia');
INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY]) VALUES ('Transformando Suor em Ouro', 'Bernardinho', 'Biografia');

-- Insert com FK na tabela clientes

INSERT INTO client ([ID_BOOK], [CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES (1, 0000000000, 'João da Silva', '(21) 9999-1111', 0);

INSERT INTO client ([ID_BOOK], [CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES (1, 0000000000, 'Eduardo', '(11) 91919-1919', 1);

-- Insert com FK na tabela de preços de livros e livros vendidos

-- Insert com várias linhas

INSERT INTO books_prices (ID_BOOK, PRICE) VALUES (1, 35.50), (2, 40.50);

-- Teste insert valor negativo: criar check

INSERT INTO books_prices (ID_BOOK, PRICE) VALUES (4, -30.00);

INSERT INTO new_books_prices (ID_BOOK, PRICE) VALUES (3, -30.00);

INSERT INTO new_books_prices (ID_BOOK, PRICE) VALUES (1, 45.50), (2, 42.50);

-- Inserir dados da tabela de novos preços na tabela de preços

INSERT into books_prices (ID_BOOK, PRICE) SELECT ID_BOOK, PRICE FROM new_books_prices;

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (1, 5, 3, '2020-10-02', 'Amanda'), (1, 5, 2, '2020-10-22', 'Joana');

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (2, 6, 3, '2020-11-12', 'Amanda'), (2, 6, 4, '2020-11-17', 'Joana');

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (1, 6, 4, '2020-11-27', 'Joana');




