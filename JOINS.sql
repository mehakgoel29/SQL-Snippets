-- JOINS
-- A JOIN is used in SQL to combine rows from two or more tables based on a related column between them.

select customers.customer_id , orders.order_status from customers join orders on customers.customer_id=orders.customer_id;

-- data from 2 tables order_items
SELECT customers.customer_id , customers.customer_city, orders.order_status
FROM customers 
JOIN orders ON customers.customer_id = orders.customer_id;

-- payments in each year 
select year(orders.order_purchase_timestamp) as years , sum(payment_value) from orders join payments 
on orders.order_id= payments.order_id
group by years order by years;


-- The INNER JOIN returns records that have matching values in both tables. If there is no match, the row is not returned.
/*
This query fetches the customer_id and order_status only for those customers who have placed an order.
If a customer has no order, they will not appear in the result.*/

SELECT customers.customer_id, orders.order_status
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;




/* The LEFT JOIN (or LEFT OUTER JOIN) returns all records from the left table (table before JOIN keyword) and 
the matching records from the right table. If there is no match, NULL values are returned for columns from the right table.

This query will return all customers, including those who haven’t placed any orders. 
For those customers without an order, the order_id will be NULL.*/

SELECT customers.customer_id, orders.order_id
FROM customers
LEFT JOIN orders  ON customers.customer_id = orders.customer_id;




/*The RIGHT JOIN (or RIGHT OUTER JOIN) returns all records from the right table and the matching records from the left table. 
If there is no match, NULL values are returned for columns from the left table.

This query will return all orders, including those without a matching customer. 
For these unmatched orders, the customer_id will be NULL.*/

SELECT customers.customer_id, orders.order_id
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;



/*The FULL OUTER JOIN returns all records when there is a match in either the left or the right table.
 It returns NULL for missing matches in both tables.
 
 
 MySQL does not have built-in support for FULL OUTER JOIN.
 */
 
SELECT customers.customer_id, orders.order_id
FROM customers
FULL JOIN orders ON customers.customer_id = orders.customer_id;


/*A CROSS JOIN returns the Cartesian product of two tables. 
It means every row from the first table is combined with every row from the second table.

This query will return every possible combination of customers and orders, regardless of any relationship between them. 
For example, if there are 10 customers and 5 orders, the result will have 50 rows (10 * 5 = 50).
*/

 SELECT * FROM customers
CROSS JOIN orders;
