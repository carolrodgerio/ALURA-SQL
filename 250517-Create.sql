-- CREATE DATABASE

CREATE DATABASE banco;

-- CREATE SCHEMA (organiza e armazena todas as tabelas relacionadas ao esquema, como um categorizador)

CREATE SCHEMA esquema;

-- CREATE TABLE

CREATE TABLE tabela (
  inteiro INT PRIMARY KEY,
  string VARCHAR(250),
  texto TEXT,
  num_decimal DECIMAL(10,2),
  data DATE,
  FOREIGN KEY (data) REFERENCES tabela2 (primary_key_tabela2)
);

-- CREATE TABLE COM DELETE CASCADE (quando a alguma linha da tabela pai for excluída, as linhas que referenciam ela nas tabelas-filho também serão)

CREATE TABLE tabela (
  inteiro INT PRIMARY KEY,
  string VARCHAR(250),
  texto TEXT,
  num_decimal DECIMAL(10,2),
  data DATE,
  FOREIGN KEY (data) REFERENCES tabela2 (primary_key_tabela2) ON DELETE CASCADE
);

-- CREATE TABLE COM DELETE RESTRICT (não é possível deletar tabelas com essa restrição)

CREATE TABLE tabela (
  inteiro INT PRIMARY KEY,
  string VARCHAR(250),
  texto TEXT,
  num_decimal DECIMAL(10,2),
  data DATE,
  FOREIGN KEY (data) REFERENCES tabela2 (primary_key_tabela2) ON DELETE RESTRICT
);

-- CREATE TABLE COM DEFAULT (será definido um valor padrão quando um campo for nulo)

CREATE TABLE tabela (
  inteiro INT PRIMARY KEY,
  string VARCHAR(250) DEFAULT 'Sem texto'
);

-- CREATE TABLE COM TRIGGER

CREATE TABLE tabela (
  inteiro INT PRIMARY KEY,
  string VARCHAR(250)
  );

CREATE TRIGGER gatilho
AFTER INSERT ON tabela_ref
FOR EACH ROW
BEGIN
  -- comandos
END;

-- CREATE VIEW (tabela de visualização que armazena consultas)

CREATE VIEW view_tabela AS
SELECT * from tabela;
