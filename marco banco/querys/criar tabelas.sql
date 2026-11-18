-- Active: 1794867559474@@127.0.0.1@3306

CREATE TABLE produtos (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    estoque INTEGER
);

CREATE TABLE movimentacoes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    produto_id INTEGER,
    quantidade INTEGER,
    tipo TEXT
);

