-- Active: 1794867559474@@127.0.0.1@3306
CREATE TRIGGER atualizar_estoque
AFTER INSERT ON movimentacoes
BEGIN
    UPDATE produtos
    SET estoque = estoque + 
        CASE
            WHEN NEW.tipo = 'entrada'
            THEN NEW.quantidade
            ELSE - NEW.quantidade
        END
    WHERE ID = NEW.produto_id;
END;