with first_model as (

    select * from {{ ref("orders_raw_model") }}

)

select * from first_model;