-- Lista de transaçoes com produto "Resgatra Ponei":

SELECT *

FROM transacao_produto AS t1

WHERE t1.IdProduto IN(
    SELECT IdProduto
    FROM produtos
    WHERE DescnomeProduto = 'Resgatar Ponei'
)