{{ config(
    materialized='view',
) }}

with students as (
    SELECT * FROM {{ source("landing","students") }}
)


SELECT * FROM students;