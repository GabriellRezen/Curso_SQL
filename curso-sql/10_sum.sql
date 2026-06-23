-- Active: 1782136392226@@127.0.0.1@3306
SELECT 
        sum(QtdePontos),

        sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END) AS qtdePontosPositivos,

        sum(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
            ELSE 0
        END) AS qtdePontosNegativos,

        COUNT(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
        END) AS qtdeTransacaoNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos