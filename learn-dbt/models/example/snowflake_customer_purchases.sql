With sample_customer as (
  SELECT *
  FROM {{ source('sample', 'customer') }}
),
sample_orders as (
  SELECT *
  FROM {{ source('sample', 'orders') }}
)

SELECT
    c.C_CUSTKEY,
    c_name,
    c_nationkey as nation,
    sum(o_totalprice) total_order_price
FROM
    sample_customer c
LEFT JOIN
    sample_orders o on o.O_CUSTKEY = c.C_CUSTKEY

{{group_by(3)}}
