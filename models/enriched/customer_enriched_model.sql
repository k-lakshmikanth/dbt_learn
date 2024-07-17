with first_model as (

    select * from {{ ref("customer_raw_model") }}

)

select * from first_model;