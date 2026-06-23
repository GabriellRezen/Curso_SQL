SELECT 
    ROUND(AVG (qtdePontos),2) as mediaCarteira,
    1. * sum(QtdePontos) / count(IdCliente) as mediaCarteiraRoots,
    min("qtdePontos") as minCarteira,
    max("qtdePontos") as maxCarteira,
    sum("flTwitch"),
    sum("flEmail")

FROM clientes