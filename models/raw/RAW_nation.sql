with nation as (
    select 
    * 
    from
    {{ source('samples', 'nation') }}
    )

select * from nation;