CREATE TRIGGER IF NOT EXISTS trg_novo_aluno
AFTER INSERT ON aluno
FOR EACH ROW
BEGIN
    INSERT INTO log_aluno (mensagem)
    'Novo aluno cadastrado: ' || NEW.nome;
END;