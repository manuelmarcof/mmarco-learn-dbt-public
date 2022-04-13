

SELECT
    c.C_CUSTKEY,
    c_name,
    c_nationkey as nation,
    sum(o_totalprice) total_order_price
FROM
    "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
LEFT JOIN
    "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o on o.O_CUSTKEY = c.C_CUSTKEY
GROUP BY
    c.C_CUSTKEY,
    c_name,
    c_nationkey
