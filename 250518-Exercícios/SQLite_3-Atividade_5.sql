SELECT c.nome FROM Clientes c
LEFT JOIN Pedidos p
ON p.IDcliente = c.ID
WHERE p.ID IS NULL;
