/*LIMIT is used to restrict the number of rows returned by a SELECT query.*/
select * from customers limit 2;

select * from customers limit 5,10;

/*The first number (5) is the offset (starting point, i.e., skip the first 5 rows).
  The second number (10) is the limit (fetch up to 10 rows starting from the 6th).*/
