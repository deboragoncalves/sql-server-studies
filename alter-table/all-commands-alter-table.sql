USE book_store;
GO

-- Adicionar coluna, default

ALTER TABLE BOOK ADD DATE_CREATED DATE NOT NULL DEFAULT GETDATE();

-- Adicionar idade e data de nascimento - tabela clientes

ALTER TABLE CLIENT ADD AGE INT NOT NULL DEFAULT 0;

ALTER TABLE CLIENT ADD DATE_BIRTH DATE NOT NULL DEFAULT GETDATE();

-- Alterar coluna para not null

ALTER TABLE client ALTER COLUMN FIRST_BUY BIT NOT NULL;

-- Alterar coluna pre�o para tipo money

ALTER TABLE [NEW_BOOKS_PRICES] ALTER COLUMN [PRICE] MONEY NOT NULL;

ALTER TABLE [BOOKS_PRICES] ALTER COLUMN [PRICE] MONEY NOT NULL;

-- PK: add constraint nome_constante 
-- PRIMARY KEY CLUSTERED (nome_campo)

ALTER TABLE books_sales ADD CONSTRAINT PK_ID_BOOKS_SALES PRIMARY KEY CLUSTERED (ID);

-- ALTER TABLE books_prices ADD CONSTRAINT PK_ID_BOOK_PRICES PRIMARY KEY CLUSTERED (ID);

ALTER TABLE client ADD CONSTRAINT PK_ID_CLIENT PRIMARY KEY CLUSTERED (ID);

ALTER TABLE book ADD CONSTRAINT PK_ID_BOOK PRIMARY KEY CLUSTERED (ID);

-- FK: book id como fk da tabela de pre�os

ALTER TABLE books_prices ADD CONSTRAINT FK_BOOKS_PRICES_BOOK FOREIGN KEY (ID_BOOK) REFERENCES BOOK(ID);

ALTER TABLE new_books_prices ADD CONSTRAINT FK_NEW_BOOKS_PRICES_BOOK FOREIGN KEY (ID_BOOK) REFERENCES BOOK(ID);

-- Check para pre�o nas tabelas books_prices e new_books_prices

ALTER TABLE books_prices ADD CONSTRAINT CHK_PRICE CHECK (PRICE > 0.00);

ALTER TABLE new_books_prices ADD CONSTRAINT CHK_NEW_BOOKS_PRICE CHECK (PRICE > 0.00);