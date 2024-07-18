with orders as (
    select * from {{ ref("RAW_orders") }}
)

select * from orders