-- Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) AS totalPontos,
        count(substr(DtCriacao,1,10)) AS qtdeDiasRepetidos,
        count(DISTINCT substr(DtCriacao,1,10)) AS qtdeDiasUnicos,
        sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDia

FROM transacoes

WHERE QtdePontos > 0