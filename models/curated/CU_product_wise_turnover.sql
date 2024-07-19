with lineitem as (
  select * from {{ ref("RAW_lineitem") }}
),
products as (
  select * from {{ ref("EU_products") }}
)

select
  p.partkey,
  p.name ,
  p.size,
  sum(li.l_quantity),
  sum(p.retailprice)
from
  lineitem li
  join products p on li.l_partkey = p.partkey
group by p.partkey,
  p.name ,
  p.size 