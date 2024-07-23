with orders as (
    select 
    * 
    from
    {{ source('samples', 'orders') }}
    )

select {{ dbt_utils.star(from=source('samples', 'orders'), except=['o_comment']) }} from orders;