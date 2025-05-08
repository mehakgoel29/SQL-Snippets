-- Numeric Functions

-- 1.ABS() :The ABS() function returns the absolute value of a number, which is the number without its sign (i.e., it converts negative numbers to positive)
select abs(2);

-- 2.ROUND() : The ROUND() function rounds a number to a specified number of decimal places. 
select round(12.9586564,2);

-- 3. The CEIL() (or CEILING()) function rounds a number up to the nearest integer, regardless of whether the decimal part is greater than or less than 0.5.
select payment_value , ceil(payment_value) from payments;

-- 4. The FLOOR() function rounds a number down to the nearest integer, ignoring the decimal part.
select payment_value , floor((payment_value)) from payments;


select * from orders where order_delivered_customer_date is null;
-- we cannot write = null  so we use is null 

