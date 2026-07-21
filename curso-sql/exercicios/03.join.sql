-- Do inicio ao fim do nosso curso (2025/08/25 a 2025/08/29), quantos clientes assinaram a lista de presença? 

SELECT COUNT(DISTINCT t1.idCliente)

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2025-08-25'
AND t1.DtCriacao < '2025-08-30'
AND t3.DescnomeProduto = 'Lista de presença'
