-- criação de coluna

ALTER TABLE tabela ADD coluna VARCHAR(250);

-- exclusão de coluna

ALTER TABLE tabela DROP COLUMN coluna;

-- inclusão de FK

ALTER TABLE tabela
ADD COLUMN foreign_key INTEGER
REFERENCES tabela2(id_tabela2);
