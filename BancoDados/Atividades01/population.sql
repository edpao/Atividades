INSERT INTO cliente (nome, email) 
VALUES 
    ('João', 'joao@gmail.com'), 
    ('Claudia', 'claudia@gmail.com'), 
    ('Maria', 'maria@gmail.com');

INSERT INTO mesa (localizacao, hourValue, status) 
VALUES 
    (1, 10, 'open'), 
    (2, 20, 'open'), 
    (3, 30, 'open');

INSERT INTO produto (nome, preco) 
VALUES 
    ('produto01', 50.00), 
    ('produto02', 100.00), 
    ('produto03', 30.00);

INSERT INTO agendamento (id_cliente, id_mesa, data, status) 
VALUES 
    (1, 1, '2025-03-12', 'open'),
    (2, 2, '2025-03-13', 'open');

INSERT INTO agendamento_produto (id_agendamento, id_produto, quantidade) 
VALUES 
    (1, 1, 2), 
    (1, 3, 1), 
    (2, 2, 1); 
