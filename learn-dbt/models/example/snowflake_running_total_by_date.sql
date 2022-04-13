

With sum_by_date as
(
SELECT
    O_ORDERDATE,
    sum(O_TOTALPRICE) sum_price
FROM
    "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF10"."ORDERS"
Group by 1
Order by 1 ASC
)
Select
    O_ORDERDATE,
    sum(sum_price)  over (order by O_ORDERDATE) running_total
FROM
    sum_by_date
