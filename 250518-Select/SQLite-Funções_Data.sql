SELECT STRFTIME('%Y/%M', coluna_data) FROM tabela; -- altera a formatação da data

SELECT JULIANDAY(coluna_fim) - JULIANDAY(coluna_inicio) FROM tabela; -- retorna a diferença de dias entre duas colunas de data

SELECT DATE('now'); -- retorna a data atual

SELECT DATE('now', '-10 days'); -- pode ser adicionado um modificador

SELECT TIME('now'); -- retorna o horário atual

SELECT DATETIME('now'); -- equivalente a SELECT CURRENT_TIMESTAMP, ambos retornam a data e hora atuais
