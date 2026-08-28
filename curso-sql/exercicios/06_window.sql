-- Quantidade de usuário cadastrados (absoluto e acumulado) ao longo do tempo?

WITH tb_dia_cliente AS(

    SELECT
        substr(DtCriacao,1,10) AS dtDia,
        count(DISTINCT IdCliente) AS qtdeCliente

    FROM clientes

    GROUP BY dtDia
)

SELECT *,
        sum(qtdeCliente) OVER (ORDER BY dtDia) AS qtdeClienteAcum

FROM tb_dia_cliente