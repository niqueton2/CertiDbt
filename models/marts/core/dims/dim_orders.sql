with io as (
    select * from {{ ref('inter_order_tracking') }}
)

select 

    Rango_precio
    ,Number_of_different_items
    ,Total_number_of_items
    ,STATUS
    ,SHIPPING_SERVICE
    ,{{ dbt_utils.generate_surrogate_key(['Rango_precio','Number_of_different_items','Total_number_of_items','STATUS','SHIPPING_SERVICE'])}} as ID_DIM_ORDERS
from io