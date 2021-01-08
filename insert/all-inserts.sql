USE book_store;
GO

-- Insert: tabela clientes. Campos e valores, em ordem

INSERT INTO client ([CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES ('00000000000', 'João da Silva', '(21) 91919-1919', 0);

INSERT INTO client ([CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES ('00000000000', 'João da Silva', '(21) 91919-1919', 0);

INSERT INTO client ([CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES ('00000000000', 'Eduardo', '(11) 98888-8888', 0);

-- Insert com date: 'YYYY-MM-DD'. 

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('Harry Potter', 'JK Rowlling', 'Ficção', '2002-10-31');

-- Insert tabela livros

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('Harry Potter', 'JK Rowlling', 'Ficção', '2002-10-31');

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('O Chamado de Cuco', 'JK Rowlling', 'Ficção', '2010-02-05');

INSERT INTO [book] ([NAME], [AUTHOR], [CATEGORY], [DATE_CREATED]) VALUES ('O Jornal Nacional', 'William Bonner', 'Jornalismo', '2007-05-07');

-- Insert com FK na tabela clientes

INSERT INTO client ([ID_BOOK], [CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES (6, 0000000000, 'João da Silva', '(21) 9999-1111', 0);

INSERT INTO client ([ID_BOOK], [CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY]) VALUES (6, 0000000000, 'Eduardo', '(11) 91919-1919', 1);

-- Insert com FK na tabela de preços de livros e livros vendidos

-- Insert com várias linhas

INSERT INTO books_prices (ID_BOOK, PRICE) VALUES (6, 35.50), (7, 40.50);

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (6, 1, 3, '2020-10-02', 'Amanda');

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (6, 1, 2, '2020-10-22', 'Joana');

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (7, 2, 3, '2020-11-12', 'Amanda');

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (7, 2, 4, '2020-11-17', 'Joana');

INSERT INTO books_sales (ID_BOOK, ID_CLIENT, QUANTITY, DATE_SALE, SALES_PERSON) VALUES (6, 2, 4, '2020-11-27', 'Joana');




