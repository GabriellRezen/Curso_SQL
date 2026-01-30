SELECT 
        COUNT(*),
        COUNT(DISTINCT IdTransacao),
        COUNT(DISTINCT IdCliente)
        
FROM TRANSACOES

WHERE DtCriacao >= '2025-07-01'

AND DtCriacao < '2025-08-01'

ORDER BY DtCriacao DESC