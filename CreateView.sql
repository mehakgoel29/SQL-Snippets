/*The CREATE VIEW statement is used to create a view in SQL, which is essentially a stored query.
 A view behaves like a virtual table, where you can run queries on it just like you would on a regular table. 
 However, unlike a table, a view does not store data; it stores the SQL query that defines how the data is presented.
*/

CREATE VIEW product_view AS 
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
