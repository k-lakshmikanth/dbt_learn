with region as (
    select 
    * 
    from
    {{ source('samples', 'region') }}
    )

select * from nation;