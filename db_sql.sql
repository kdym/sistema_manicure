--
-- File generated with SQLiteStudio v3.1.1 on qui fev 8 15:59:16 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: parameters
CREATE TABLE parameters (nome VARCHAR PRIMARY KEY, valor VARCHAR);

-- Table: products
CREATE TABLE products (id INTEGER PRIMARY KEY AUTOINCREMENT, descricao VARCHAR, quantidade INTEGER, codigo_barras VARCHAR, valor DECIMAL (10, 2), vencimento DATE);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
