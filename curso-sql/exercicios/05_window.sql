-- Quantidade de transações acumuladas ao longo do tempo (diario)

WITH tb_diario AS (
    SELECT substr(DtCriacao,1,10) AS dtDia,
    count(DISTINCT IdTransacao) AS qtdTransacao

    FROM transacoes

    GROUP BY dtDia
    ORDER BY dtDia
)

SELECT *,
        sum(qtdTransacao) OVER (ORDER BY dtDia) AS qtdeTransacaoAcum

FROM tb_diario