

SELECT
    customer,
    total_sales,
    CASE
        WHEN total_sales >= 75000 THEN 'High Value'
        WHEN total_sales >= 65000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM {{ ref('customer_sales') }}
ORDER BY total_sales DESC

