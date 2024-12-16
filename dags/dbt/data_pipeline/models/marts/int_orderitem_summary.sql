select  
    orderkey,
    sum(extendedprice) as gross_item_sales_amount,
    sum(item_discount_amount) as item_discount_amount
from 
    {{ref('int_order_items')}}
group by
    orderkey