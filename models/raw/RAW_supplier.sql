with supplier as (
    select 
    * 
    from
    {{ source('samples', 'supplier') }}
    )

select * from supplier;