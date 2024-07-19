with part as (
    select 
    * 
    from
    {{ source('samples', 'part') }}
    )

select * from part;