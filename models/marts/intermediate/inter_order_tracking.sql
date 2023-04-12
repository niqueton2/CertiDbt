with stg_orders as (
    select * from {{ ref('stg_orders') }}
),
stg_order_items as (
    select * from {{ ref('stg_order_items') }}
)

select
    o.ORDER_ID
    ,o.SHIPPING_SERVICE
    ,o.SHIPPING_COST
    ,o.ADDRESS_ID
    ,o.id_fecha_created
    ,o.id_time_created
    ,o.PROMO_ID
    ,o.id_fecha_estimated_delivery
    ,o.id_time_estimated_delivery
    ,o.ORDER_COST
    ,o.USER_ID
    ,o.ORDER_TOTAL
    ,o.id_fecha_delivered
    ,o.id_time_delivered
    ,o.TRACKING_ID
    ,o.STATUS
    ,o.id_fecha
    ,o.id_time
    ,o.delivery_time_hour
    ,o.delay_estimation_hour
    ,case
        when o.ORDER_TOTAL < 25 then '0-25 USD'
        when o.ORDER_TOTAL < 50 then '25-50 USD'
        when o.ORDER_TOTAL < 75 then '50-75 USD'
        when o.ORDER_TOTAL < 100 then '75-100 USD'
        when o.ORDER_TOTAL < 125 then '100-125 USD'
        when o.ORDER_TOTAL < 150 then '125-150 USD'
        else '> 150 USD' 
    end as Rango_precio   
    ,count(oi.PRODUCT_ID) as Number_of_different_items
    ,sum(oi.QUANTITY) as Total_number_of_items


from stg_orders o 
left join stg_order_items oi 
on o.order_id=oi.order_id

group by 
    o.ORDER_ID
    ,o.SHIPPING_SERVICE
    ,o.SHIPPING_COST
    ,o.ADDRESS_ID
    ,o.id_fecha_created
    ,o.id_time_created
    ,o.PROMO_ID
    ,o.id_fecha_estimated_delivery
    ,o.id_time_estimated_delivery
    ,o.ORDER_COST
    ,o.USER_ID
    ,o.ORDER_TOTAL
    ,o.id_fecha_delivered
    ,o.id_time_delivered
    ,o.TRACKING_ID
    ,o.STATUS
    ,o.id_fecha
    ,o.id_time
    ,o.delivery_time_hour
    ,o.delay_estimation_hour
       