with orders as (
    select 
    * 
    from
    {{ source('samples', 'orders') }}
    )

select * from orders;