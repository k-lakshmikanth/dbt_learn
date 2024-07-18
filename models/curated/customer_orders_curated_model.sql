with customer_enriched_model as (
    select * from {{ ref("customer_enriched_model") }}
),
 orders_enriched_model as (
    select * from {{ ref("orders_enriched_model") }}
)

select 
onm.o_orderkey,
onm.o_custkey,
cnm.c_name as o_custname,
cnm.c_phone as o_custphone,
onm.o_orderstatus,
onm.o_totalprice,
onm.o_orderdate,
onm.o_orderpriority,
onm.o_clerk,
onm.o_shippriority,
onm.o_comment
from customer_enriched_model cnm join orders_enriched_model onm on cnm.c_custkey = onm.o_custkey