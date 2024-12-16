select 
    *
from
    {{ref('fact_orders')}}
where
    date(orderdate)> CURRENT_DATE()
    or date(orderdate) < date('1990-01-01')