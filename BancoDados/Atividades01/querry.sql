SELECT 
    p.nome AS produto,
    SUM(ap.quantidade) AS quantidade
FROM 
    agendamento_produto ap
JOIN 
    produto p ON ap.id_produto = p.id
WHERE 
    ap.id_agendamento = @pedido_id
GROUP BY 
    p.nome;
