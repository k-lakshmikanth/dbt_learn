with second_model as (

    select * from {{ ref("customer_enriched_model") }}

)

select * from second_model;