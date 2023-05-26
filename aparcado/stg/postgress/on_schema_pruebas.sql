{{
    config(
        materialized='incremental',
        unique_key='WEY',
        on_schema_change='fail'
    )
}}



with certi as (
    select * from {{ ref('certi') }}
)

select * from certi

{% if is_incremental() %}

where pelo>1

{% endif %}