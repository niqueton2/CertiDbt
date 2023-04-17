{% snapshot base_products_snapshot %}


{{
    config(
        unique_key='PRODUCT_ID',
        strategy='timestamp',
        updated_at='_FIVETRAN_SYNCED',
    )
}}
with p as (
    select * from {{ source('postgres_public', 'products') }}
)

select * from p



{% endsnapshot %}