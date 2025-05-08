/*The GROUP BY clause in SQL is used to arrange identical data into groups. 
It is often used with aggregate functions like COUNT(), SUM(), AVG(), MAX(), or MIN() to perform operations on each group of data.
*/

SELECT order_status, COUNT(order_status) AS count_order
FROM orders
GROUP BY order_status
ORDER BY count_order desc;


SELECT 
    product_category, COUNT(product_category) AS count
FROM
    products
GROUP BY product_category
ORDER BY count;


SELECT 
    payment_type, AVG(payment_value)
FROM
    payments
GROUP BY payment_type;





