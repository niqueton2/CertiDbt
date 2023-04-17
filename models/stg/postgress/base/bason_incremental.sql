{{
    config(
        materialized='incremental',
        unique_key= 'PRODUCT_ID',
        on_schema_change='fail'
    )
}}

with bb as (
    select * from {{ ref('base_bason') }}
),

bp as (
    select * from {{ ref('base_products') }}
),

aux as (

select 
bp.Name as NOMBRE,
(bp.price*bb.cantidad_total) as Facturacion,
bp.PRODUCT_ID
from bp 
left join bb
on bp.PRODUCT_ID=bb.PRODUCT_ID)


{% if is_incremental() %}

select 
'juanito_juan' as NOMBRE,
'mechingeatumama' as PRODUCT_ID,
1000000 as Facturacion

{% else %}

select * from aux

{% endif %}

