{{ config(
    materialized='incremental',
) }}

with students as (
    SELECT * FROM {{ source("landing","students") }}
)


SELECT * FROM students;