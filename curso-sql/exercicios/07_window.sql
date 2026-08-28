-- Qual o dia da semana mais ativo de cada usuário?

WITH tb_cliente_semana AS (
    SELECT IdCliente,
            strftime('%w', substr(DtCriacao,1,10)) AS dtDiaSemana,
            COUNT(DISTINCT IdTransacao) AS qtdeTransacao

    FROM transacoes

    GROUP BY IdCliente, dtdiaSemana

),

tb_rn AS (

    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY IdCliente ORDER BY qtdeTransacao DESC) AS rn

    FROM tb_cliente_semana
)

SELECT *
FROM tb_rn
WHERE rn = 1