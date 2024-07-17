with second_model as (

    select * from {{ ref("orders_enriched_model") }}

)

select * from second_model;