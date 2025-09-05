SELECT 
    DATE_TRUNC('month', sale_date) AS month,
    SUM(total_amount) AS monthly_revenue,
    SUM(quantity) AS monthly_units,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM {{ source('sales_source','sales') }}
GROUP BY 1
ORDER BY 1
