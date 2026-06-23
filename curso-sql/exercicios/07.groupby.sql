-- Qual o produto mais transacionado?

SELECT "IdProduto",
        count(*)

FROM transacao_produto

GROUP BY "IdProduto"
ORDER BY count(*) DESC;

SELECT *

FROM transacao_produto