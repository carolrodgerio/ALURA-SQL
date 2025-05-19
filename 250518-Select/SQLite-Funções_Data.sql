SELECT STRFTIME('%Y/%M', coluna_data) FROM tabela; -- altera a formatação da data

/*
%Y: ano com 4 dígitos
%m: mês com 2 dígitos
%d: dia com 2 dígitos
%H: hora (00-24)
%M: minuto
*/

SELECT JULIANDAY(coluna_fim) - JULIANDAY(coluna_inicio) FROM tabela; -- retorna a diferença de dias entre duas colunas de data

SELECT DATE('now'); -- retorna a data atual

SELECT DATE('now', '-10 days'); -- pode ser adicionado um modificador

SELECT TIME('now'); -- retorna o horário atual

SELECT DATETIME('now'); -- equivalente a SELECT CURRENT_TIMESTAMP, ambos retornam a data e hora atuais
