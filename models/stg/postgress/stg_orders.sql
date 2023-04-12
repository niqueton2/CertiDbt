with o as (
    select * from {{ ref('base_orders') }}
)

select
ORDER_ID
,SHIPPING_SERVICE
,SHIPPING_COST
,ADDRESS_ID
, {{ fecha_id('CREATED_AT') }} as id_fecha_created
, {{ time_id('CREATED_AT') }} as id_time_created
,PROMO_ID
, {{ fecha_id('ESTIMATED_DELIVERY_AT') }} as id_fecha_estimated_delivery
, {{ time_id('ESTIMATED_DELIVERY_AT') }} as id_time_estimated_delivery
,ORDER_COST
,USER_ID
,ORDER_TOTAL
, {{ fecha_id('DELIVERED_AT') }} as id_fecha_delivered
, {{ time_id('DELIVERED_AT') }} as id_time_delivered
,TRACKING_ID
,STATUS
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
,timestampdifF(hour,created_at,Delivered_at) as delivery_time_hour
,timestampdifF(hour,Estimated_delivery_at,Delivered_at) as delay_estimation_hour
from o
where _FIVETRAN_DELETED is null