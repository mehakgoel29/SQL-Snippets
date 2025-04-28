/*SQL (Structured Query Language):
SQL is a standard programming language specifically designed for 
managing and manipulating databases. It allows users to interact with
 relational databases to perform tasks such as querying, updating,
 inserting, and deleting data. */
 
 
select * from ecommerce.customers;
select customer_id,customer_city, customer_state from ecommerce.customers;
-- select statement is for retreiving columns
-- * means everything

/*
The WHERE clause is used in SQL to filter records that meet specific 
conditions. It is typically used in combination with SELECT, UPDATE, DELETE, 
and other SQL commands to specify which records you want to work with.
*/
select * from customers where customer_state="MG";
select * from orders where order_status="canceled";
select * from payments where not((payment_type="UPI" or payment_type="credit_card") and payment_value>=1000);
/* NOT has the highest priority and will be evaluated first.
AND has a higher precedence than OR, so it will be evaluated before OR when no brackets are used.
OR has the lowest precedence, so it will be evaluated last unless brackets are used to explicitly change the order.*/

select * from payments where payment_value between 100 and 200;
/* The BETWEEN operator is used in SQL to filter the results within a specific range of values. 
It is often used in SELECT, UPDATE, and DELETE queries to specify a range for numeric, date, or 
text values.
*/
