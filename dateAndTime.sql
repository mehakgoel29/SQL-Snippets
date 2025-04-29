SELECT 
    order_delivered_customer_date,
    DAY(order_delivered_customer_date),
    DAYNAME(order_delivered_customer_date),
    MONTH(order_delivered_customer_date),
    MONTHNAME(order_delivered_customer_date),
    YEAR(order_delivered_customer_date)
FROM
    orders;
    
