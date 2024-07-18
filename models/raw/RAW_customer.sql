with customer as (
    select 
    * 
    from
    {{ source('samples', 'customer') }}
    )

select * from customer;