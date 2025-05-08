/*A subquery (also called an inner query or nested query) is a query inside another SQL query, typically enclosed in parentheses.
It is used to return data that will be used by the main (outer) query.
*/
SELECT 
    category
FROM
    (SELECT 
        (products.product_category) AS category,
            SUM(payments.payment_value) AS sales
    FROM
        products
    JOIN order_items ON products.product_id = order_items.product_id
    JOIN payments ON payments.order_id = order_items.order_id
    GROUP BY category
    ORDER BY sales DESC
    LIMIT 1) AS a;