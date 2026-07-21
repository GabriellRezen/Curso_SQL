-- Clientes mais antigos tem mais frequência de transação?

SELECT t1.IdCliente,
        julianday('now') - julianday(substr(t1.DtCriacao,1,19)) AS idadeBase,
        COUNT(t2.IdTransacao) AS qtdeTrasacoes

FROM clientes as t1

LEFT JOIN transacoes as t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.IdCliente, idadeBase