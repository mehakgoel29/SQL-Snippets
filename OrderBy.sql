/*ORDER BY is used to sort the result set of a SELECT query.
You can sort data in ascending or descending order.
*/
-- ascending 
select * from payments order by payment_value;
select * from payments order by payment_type asc;

-- descending 
select * from payments order by payment_value desc ;

-- combination 
select * from payments order by payment_value , payment_type desc;

-- with WHERE clause 
SELECT 
    *
FROM
    payments
WHERE
    payment_installments = 2
ORDER BY payment_value DESC;

-- ctrl+B for beautifying the query 

