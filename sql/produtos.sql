CREATE DATABASE IF NOT EXISTS produtos_db;

USE produtos_db;

CREATE TABLE IF NOT EXISTS produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

INSERT INTO produtos (nome, preco) VALUES
('Teclado', 150.00),
('Mouse', 80.00),
('Monitor', 1200.00),
('Notebook', 4500.00),
('Headset', 250.00);
