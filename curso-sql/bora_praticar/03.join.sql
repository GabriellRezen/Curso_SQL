-- Qual mês tivemos mais lista de presenca assinada?

SELECT 
        substr(t1.DtCriacao, 1, 7) as anoMes,
        count(DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE DescNomeProduto = 'Lista de presença'

GROUP BY substr(t1.DtCriacao, 1, 7)
ORDER BY qtdeTransacao DESC