SELECT 
    AVG(total_amount) AS avg_order_value
FROM {{ source('sales_source', 'sales') }}
