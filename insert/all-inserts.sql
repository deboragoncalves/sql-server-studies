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
