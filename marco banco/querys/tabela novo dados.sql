CREATE TABLE alteracao_de_dados(  
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome_antido TEXT,
    nome_novo TEXT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP
);