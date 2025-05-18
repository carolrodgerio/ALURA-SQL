-- INSERT ÚNICO

INSERT INTO tabela (
  id,
  nome,
  telefone)
VALUES ('1', 'Carol', '999999999');

-- INSERT DE MÚLTIPLOS DADOS

INSERT INTO tabela (
  id,
  nome,
  telefone)
VALUES
  ('2', 'Guilherme', '999999998'),
  ('3', 'Angela', '999999997'),
  ('4', 'Jade', '999999996'),
  ('5', 'Kiara', '999999995'),
  ('6', 'Zeus', '999999994');

-- INSERT COM DADOS DE OUTRA TABELA

INSERT INTO tabela2 (
  novo_id,
  novo_nome,
  novo_telefone)
SELECT
  id,
  nome,
  telefone
FROM tabela
WHERE id <= 3;
