with partsupp as (
    select 
    * 
    from
    {{ source('samples', 'partsupp') }}
    )

select * from partsupp;