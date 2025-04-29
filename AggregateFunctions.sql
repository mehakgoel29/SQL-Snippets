/* AGGREGATE  function perform a calculation on a set of values and return a single value. 
 They are typically used with GROUP BY to group rows that share a property.*/
 
 -- SUM() Returns the total sum of a numeric column.Ignores NULL values.
 select sum(payment_value) from payments;
 select sum(payment_value)as total_revenue from payments;  -- as is used to rename column for result 
 select round(sum(payment_value),2) from payments; -- round of the sum to 2 places 
 
 -- combined query 
 select round(sum(payment_value),2) as total_revenue from payments;

-- COUNT() Returns the number of rows that match a specified condition. Ignores NULL values.
select count(*) from customers;


-- DISTINCT is used to remove duplicate values from the result set of a SELECT query.
select count(distinct customer_city) from customers;  
  
-- AVG():Returns the average value of a numeric column.Ignores NULL values.
select avg(payment_value) from payments;

-- MAX():Returns the maximum value of a column.
select max(payment_installments) from payments;

-- MIN():Returns the minimum value of a column.
select min(payment_type) from payments;



