-- 1

SELECT (COUNT (id_cliente)) from clientes;

-- 2

SELECT (COUNT (id_venda)) from vendas
WHERE STRFTIME('%Y', data_venda) = '2022';

-- 3

SELECT c.nome_categoria, COUNT(v.id_venda) AS total_vendas
FROM categorias c
JOIN produtos p ON c.id_categoria = p.categoria_id
JOIN itens_venda i ON i.produto_id = p.id_produto
JOIN vendas v ON v.id_venda = i.venda_id
WHERE STRFTIME('%Y', v.data_venda) = '2022'
GROUP BY c.nome_categoria
ORDER BY total_vendas DESC
LIMIT 1;

-- 4

SELECT STRFTIME('%Y', p.data_estoque) FROM produtos p
FULL JOIN itens_venda i ON i.produto_id = p.id_produto
FULL JOIN vendas v ON v.id_venda = i.venda_id
ORDER BY STRFTIME('%Y', p.data_estoque)
LIMIT 1;

-- 5 e 6

SELECT f.nome, COUNT(v.id_venda) FROM fornecedores f
JOIN produtos p ON p.fornecedor_id = f.id_fornecedor
JOIN itens_venda i ON i.produto_id = p.id_produto
JOIN vendas v ON v.id_venda = i.venda_id
WHERE v.data_venda BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY f.nome
ORDER BY (COUNT(v.id_venda)) DESC
LIMIT 1;

-- 7

SELECT c.nome_categoria, COUNT(v.id_venda) FROM categorias c
JOIN produtos p ON c.id_categoria = p.categoria_id
JOIN itens_venda i ON i.produto_id = p.id_produto
JOIN vendas v ON v.id_venda = i.venda_id
GROUP BY c.nome_categoria
ORDER BY COUNT(v.id_venda) DESC
LIMIT 2;
