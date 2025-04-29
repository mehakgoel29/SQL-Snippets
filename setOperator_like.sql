/*
IN in SQL is Used to check if a value exists within a given list or subquery result.
It Acts like multiple OR conditions combined.*/

/*NOT IN in SQL is Used to check if a value does not exist in a given list or subquery.
Acts like multiple AND column <> value conditions.
Should be used cautiously when subqueries might return NULL.*/

select * from customers where customer_state NOT in("MG","SP","PR","RJ");
select * from customers where customer_state in ("MG", "SP");


/*
If the list or subquery passed to NOT IN contains even one NULL, the result becomes UNKNOWN for all rows.
This is because SQL uses 3-valued logic (TRUE, FALSE, UNKNOWN).
*/

/*LIKE is used in WHERE clauses to search for a specific pattern in a column.
It allows partial matching, not just exact matching.
*/
-- ends with r
select customer_city from customers where customer_city like ("%r");  

-- starts with r
select customer_city from customers where customer_city like ("r%");

-- second letter is r and rest can be anything
select customer_city from customers where customer_city like ("_r%");

-- substring de 
select customer_city from customers where customer_city like ("%de%");

