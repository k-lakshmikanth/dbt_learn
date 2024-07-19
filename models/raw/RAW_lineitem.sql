with lineitem as (
    select 
    * 
    from
    {{ source('samples', 'lineitem') }}
    )

select * from lineitem;