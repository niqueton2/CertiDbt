{{ config (
    schema="GOLD"
)}}

with metrica as (
select * from {{
    metrics.calculate(
        metric('product_sales_metric'),
        grain='day',
        dimensions=['Name']
    )
}}
)

select * from metrica
where Name={{ var('producto') }}
