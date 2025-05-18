-- criação de coluna

ALTER TABLE tabela ADD COLUMN coluna VARCHAR(250);

-- exclusão de coluna

ALTER TABLE tabela DROP COLUMN coluna;

-- renomear tabela ou coluna

ALTER TABLE tabela RENAME TO nova_tabela;

ALTER TABLE tabela RENAME COLUMN coluna TO nova_coluna;

-- inclusão de FK

ALTER TABLE tabela
ADD COLUMN foreign_key INTEGER
REFERENCES tabela2(id_tabela2);
