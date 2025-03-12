CREATE DATABASE fleure;
USE fleure;

CREATE TABLE mesa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    localizacao INT NOT NULL,
    hourValue DECIMAL(10,2) NOT NULL,
    status ENUM('open', 'closed') NOT NULL DEFAULT 'open' -- Definição explícita do status da mesa
);

CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE -- Evita duplicação de e-mails
);

CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE agendamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_mesa INT NOT NULL,
    data DATE NOT NULL,
    status ENUM('open', 'closed') NOT NULL DEFAULT 'open',
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_mesa) REFERENCES mesa(id)
);

-- Tabela de itens do agendamento, para permitir múltiplos produtos em um único agendamento
CREATE TABLE agendamento_produto (
    id_agendamento INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (id_agendamento, id_produto), -- Garantindo que um produto só aparece uma vez por agendamento
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produto(id) ON DELETE CASCADE
);
