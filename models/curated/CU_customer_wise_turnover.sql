with customer as (
  select * from {{ ref("EU_customer") }}
),
orders as (
  select * from {{ ref("EU_orders") }}
)

select
  c.customerkey as CustomerKey,
  c.name as CustomerName,
  c.phone as CustomerPhoneNumber,
  c.account_balance as CustomerAccountBalance,
  o.TotalPurchaseAmount as TotalPurchaseAmount
from
  customer c
join (
    select
      customerKey,
      sum(totalprice) as TotalPurchaseAmount
    from
      orders
    group by
      customerkey
  ) o on c.customerkey = o.customerkey