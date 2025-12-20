with
orders as (
    SELECT * FROM {{ ref('raw_orders') }}
)

SELECT orderid,
sum(ordersellingprice) as total_sp
FROM orders
group by orderid
having total_sp<0