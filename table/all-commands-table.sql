-- Comandos tabela

-- Criar tabela: campo, tipo, null/not null, pk, fk...

CREATE TABLE [CLIENT] ([ID] SMALLINT IDENTITY (1, 1) UNIQUE NOT NULL, [ID_BOOK] SMALLINT NOT NULL, [CPF] VARCHAR(11) NOT NULL, [NAME] VARCHAR(100) NOT NULL, [PHONE_NUMBER] VARCHAR(50) NOT NULL, [FIRST_BUY] BIT, CONSTRAINT [FK_ID_BOOK] FOREIGN KEY (ID_BOOK) REFERENCES BOOK(ID));

CREATE TABLE [BOOK] ([ID] SMALLINT IDENTITY (1, 1) UNIQUE NOT NULL, [NAME] VARCHAR (100) NOT NULL, [AUTHOR] VARCHAR(100) NOT NULL, [CATEGORY] VARCHAR(100) NOT NULL);

CREATE TABLE [BOOKS_PRICES] ([ID] SMALLINT IDENTITY (1, 1) UNIQUE NOT NULL, [ID_BOOK] SMALLINT NOT NULL, [PRICE] FLOAT NOT NULL, CONSTRAINT [PK_IDENTITY_BOOK] PRIMARY KEY CLUSTERED (ID));

CREATE TABLE [BOOKS_SALES] ([ID] SMALLINT IDENTITY (1, 1) UNIQUE NOT NULL, [ID_BOOK] SMALLINT NOT NULL, [ID_CLIENT] SMALLINT NOT NULL, [QUANTITY] SMALLINT NOT NULL, [DATE_SALE] DATE NOT NULL, [SALES_PERSON] VARCHAR(100) NOT NULL, CONSTRAINT [FK_BOOK_IDENTITY] FOREIGN KEY (ID_BOOK) REFERENCES BOOK(ID), CONSTRAINT FK_CLIENT_ID FOREIGN KEY (ID_CLIENT) REFERENCES CLIENT(ID));

-- Nova tabela de pre�os

CREATE TABLE [NEW_BOOKS_PRICES] ([ID] SMALLINT IDENTITY (1, 1) UNIQUE NOT NULL, [ID_BOOK] SMALLINT NOT NULL, [PRICE] FLOAT NOT NULL, CONSTRAINT [PK_NEW_BOOK_ID] PRIMARY KEY CLUSTERED (ID));

-- Deletar tabela

DROP TABLE IF EXISTS [BOOK];

DROP TABLE IF EXISTS [CLIENT];

DROP TABLE IF EXISTS [BOOKS_SALES];

DROP TABLE IF EXISTS [BOOKS_PRICES];

DROP TABLE IF EXISTS [NEW_BOOKS_PRICES];