with inter as (
    select * from {{ ref('inter_order_tracking') }}
),

fake as (
    select * from {{ ref('base_products') }}
)

select 
     ORDER_ID
    ,SHIPPING_COST
    ,ADDRESS_ID
    ,id_fecha_created
    ,id_time_created
    ,PROMO_ID
    ,id_fecha_estimated_delivery
    ,id_time_estimated_delivery
    ,ORDER_COST
    ,USER_ID
    ,ORDER_TOTAL
    ,id_fecha_delivered
    ,id_time_delivered
    ,TRACKING_ID
    ,id_fecha
    ,id_time
    ,delivery_time_hour
    ,delay_estimation_hour
    ,{{ dbt_utils.generate_surrogate_key(['Rango_precio','Number_of_different_items','Total_number_of_items','STATUS','SHIPPING_SERVICE'])}} as ID_DIM_ORDERS

from 
inter 