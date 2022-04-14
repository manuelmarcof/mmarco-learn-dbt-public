with orders as
(
  select *
  from {{source('sample', 'orders')}}
)
SELECT DISTINCT
    O_ORDERDATE,
    sum(O_TOTALPRICE) over (order by o_orderdate) running_total
FROM
    orders

{% if target.name == 'dev' %}
WHERE year(o_orderdate) = 1996
{% endif %}

Order by 1 ASC
