SELECT 
    product_id,
    SUM(quantity) AS total_quantity_sold,
    SUM(total_amount) AS total_revenue
FROM {{ source('sales_source','sales') }}
GROUP BY product_id
ORDER BY total_revenue DESC
