select 
    line_item.order_item_key,
    line_item.part_key,
    line_item.linenumber,
    orders.orderkey,
    orders.custkey,
    orders.orderdate,
    line_item.extendedprice,
    {{discounted_amount('line_item.extendedprice','line_item.discount_percentage')}} as item_discount_amount
from
    {{ref('stg_tpch_line_item')}} as line_item
join
    {{ref('stg_tpch_orders')}} as orders
on
    orders.orderkey=line_item.order_key
order by 
    orders.orderdate