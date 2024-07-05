WITH silver_orders AS (
    SELECT
        order_id,
        DATE(order_date_time) AS order_date,
        YEAR(order_date_time) AS order_year,
        MONTH(order_date_time) AS order_month,
        DAY(order_date_time) AS order_day_of_month
    FROM {{ source('orders', 'bronze_orders') }}
    )

SELECT *
FROM silver_orders