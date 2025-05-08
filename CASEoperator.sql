/*The CASE operator in SQL is like an if-else or switch-case statement in programming.
 It lets you perform conditional logic directly in your SQL queries.*/
 
 with a as
    (SELECT 
        (products.product_category) AS category,
            SUM(payments.payment_value) AS sales
    FROM
        products
    JOIN order_items ON products.product_id = order_items.product_id
    JOIN payments ON payments.order_id = order_items.order_id
    GROUP BY category
    ORDER BY sales DESC) 
    select *,case 
    when sales<=5000 then "low"
    when sales>=100000 then "high"
    else "medium"
    end as sales_type from a;
    