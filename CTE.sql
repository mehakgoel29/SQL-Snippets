/*
A CTE (Common Table Expression) is a temporary named result set (like a virtual table)
that you define at the beginning of a query using the WITH keyword.
It makes your SQL queries easier to read, organize, and maintain — especially when you’re 
dealing with complex joins, aggregations, or nested logic.
*/

with a as
    (SELECT 
        (products.product_category) AS category,
            SUM(payments.payment_value) AS sales
    FROM
        products
    JOIN order_items ON products.product_id = order_items.product_id
    JOIN payments ON payments.order_id = order_items.order_id
    GROUP BY category
    ORDER BY sales DESC
    LIMIT 1) 
    select category from a;
    