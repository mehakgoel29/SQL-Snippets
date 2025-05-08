/*HAVING is used with GROUP BY to filter grouped results based on aggregate functions (like SUM(), COUNT(), etc.).
The HAVING clause in SQL is used to filter the results after GROUP BY and aggregate functions are applied.
Think of it as:
WHERE filters rows
HAVING filters groups
*/

SELECT 
    payment_type, AVG(payment_value)
FROM
    payments
GROUP BY payment_type
HAVING AVG(payment_value) >= 100;

/* WHERE  cannot be used with aggregated functions so we need to use HAVING */
