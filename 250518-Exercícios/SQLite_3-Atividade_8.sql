-- 1

SELECT * from clientes WHERE nome = 'Maria Silva';

-- 2

SELECT id, idcliente from Pedidos WHERE status = 'Entregue';

-- 3

SELECT * from produtos WHERE preco BETWEEN 10 AND 15;

-- 4

SELECT nome, cargo FROM colaboradores WHERE datacontratacao BETWEEN '2022-01-01' AND '2022-06-31';

-- 5

SELECT c.nome FROM Pedidos p
JOIN clientes c
ON p.IDCliente = c.id
WHERE p.ID = 1;

-- 6

SELECT * FROM produtos p
LEFT JOIN ItensdePedido i
ON p.id = i.IDProduto
WHERE i.IDPedido IS NULL;

-- 7

SELECT c.nome FROM Pedidos p
JOIN clientes c
ON p.IDCliente = c.id
WHERE p.DataHoraPedido BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.nome;

-- 8

SELECT p.nome, COUNT(DISTINCT i.idpedido) AS qtd_pedidos
FROM Produtos p
LEFT JOIN ItensdePedido i ON i.idproduto = p.id
GROUP BY p.id, p.nome
HAVING COUNT(DISTINCT i.idpedido) < 15;

-- 9

SELECT p.nome, c.nome, pe.ID FROM produtos p
JOIN ItensdePedido i ON p.id = i.IDProduto
JOIN Pedidos pe ON i.IDPedido = pe.ID
JOIN clientes c ON pe.IDCliente = c.id
WHERE c.nome = 'Pedro Alves' OR c.nome = 'Ana Rodrigues';

-- 10

SELECT c.nome, c.id, SUM(i.quantidade * i.PrecoUnitario) AS total_gasto
FROM Pedidos p
JOIN Clientes c ON c.id = p.idcliente
JOIN ItensdePedido i ON i.idpedido = p.id
GROUP BY c.id, c.nome
ORDER BY total_gasto DESC
LIMIT 1;
