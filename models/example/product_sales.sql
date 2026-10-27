SELECT
    product,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(amount) AS total_product_revenue,
FROM {{ ref('sales_data') }}
GROUP BY product
ORDER BY total_product_revenue DESC