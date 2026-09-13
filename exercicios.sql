-- atividade 01
SELECT c.nome, COUNT(p.id_pedido) AS TOTAL 
FROM cliente c
LEFT JOIN pedido p 
ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- atividade 02

SELECT pr.nome_produto, p.status, SUM(pi.quantidade * pi.preco_venda) AS TOTAL
FROM produto pr
INNER JOIN pedido_item pi
ON pr.id_produto = pi.id_produto
INNER JOIN pedido p 
ON pi.id_pedido = p.id_pedido
WHERE status= 'FINALIZADO'
GROUP BY pr.nome_produto, p.status;

-- atividade 03

SELECT c.nome, p.status, SUM(pi.quantidade * pi.preco_venda) AS TOTAL 
FROM cliente c 
INNER JOIN pedido p 
ON c.id_cliente = p.id_cliente 
INNER JOIN pedido_item pi 
ON pi.id_pedido  = p.id_pedido
WHERE status ='FINALIZADO'
GROUP BY c.nome, p.status
ORDER BY TOTAL DESC ;