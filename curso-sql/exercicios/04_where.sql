-- Lista de clientes com 100 a 200 inclusive ambos

SELECT  IdCliente,
        QtdePontos

FROM CLIENTES

WHERE QtdePontos >= 100 AND QtdePontos <= 200

-- WHERE qtdePontos BETWEEN 100 AND 200