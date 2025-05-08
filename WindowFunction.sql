/*A window function performs a calculation across a set of table rows that are somehow related to the current row — called a "window" — without collapsing the result 
into a single row (unlike aggregate functions).
It allows you to use functions like SUM, AVG, RANK, ROW_NUMBER, etc. while still keeping individual rows.*/
-- Outer Query
SELECT 
    order_date, 
    sales,
    SUM(sales) OVER (ORDER BY order_date) AS running_total
FROM (
    -- Inner Query: aggregate sales per day
    SELECT 
        DATE(orders.order_purchase_timestamp) AS order_date,
        SUM(payments.payment_value) AS sales
    FROM 
        orders 
    JOIN 
        payments ON orders.order_id = payments.order_id
    GROUP BY 
        order_date
) AS a;




-- rank--
SELECT 
    order_date,
    sales,
    RANK() OVER (ORDER BY sales DESC) AS sales_rank
FROM (
    SELECT 
        DATE(orders.order_purchase_timestamp) AS order_date,
        SUM(payments.payment_value) AS sales
    FROM 
        orders 
    JOIN 
        payments ON orders.order_id = payments.order_id
    GROUP BY 
        order_date
) AS a;
