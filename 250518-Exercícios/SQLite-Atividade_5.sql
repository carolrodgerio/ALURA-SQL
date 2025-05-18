CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  departamento VARCHAR(100),
  salario FLOAT (5,2)
 );

INSERT INTO funcionarios (id, nome, departamento, salario) VALUES
	(1, 'Heitor Vieira', 'Financeiro', 4959.22),
  (2, 'Daniel Campos', 'Vendas', 3884.44),
  (3, 'Luiza Dias', 'TI', 8205.78),
  (4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
  (5, 'Pietro Cavalcanti', 'TI', 4946.88),
  (6, 'Evelyn da Mata', 'Vendas', 5278.88),
  (7, 'Isabella Rocha', 'Marketing', 4006.03),
  (8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
  (9, 'Brenda Cardoso', 'TI', 8853.34),
  (10, 'Danilo Souza', 'TI', 8242.14);
    
SELECT * FROM funcionarios;
    
SELECT * FROM funcionarios WHERE departamento = 'Vendas';
    
SELECT * FROM funcionarios WHERE salario > 5000;
    
UPDATE funcionarios SET salario = 7500 WHERE departamento = 'TI';

SELECT * FROM funcionarios WHERE departamento = 'TI';

DELETE FROM funcionarios WHERE salario < 4000;

SELECT * FROM funcionarios;

SELECT nome, salario FROM funcionarios WHERE departamento = 'Vendas' AND salario >= 6000;

CREATE TABLE projetos (
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR(100),
  id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES funcionarios (id)
);

SELECT * FROM projetos WHERE id_gerente = 10;

DROP TABLE funcionarios;
