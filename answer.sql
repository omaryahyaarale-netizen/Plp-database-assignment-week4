SHOW DATABASES;
USE sales;

QUESTION 1
SELECT sale_date,
       SUM(amount) AS total_amount
FROM sales
GROUP BY sale_date
ORDER BY sale_date DESC
LIMIT 5;

QUESTION 2
SELECT customer_name,
       country,
       AVG(credit_limit) AS average_credit_limit
FROM sales
GROUP BY customer_name, country;

QUESTION 3
SELECT product_code,
       quantity_ordered,
       SUM(amount) AS total_price
FROM sales
GROUP BY product_code, quantity_ordered;

QUESTION 4
SELECT check_number,
       MAX(amount) AS highest_amount
FROM sales
GROUP BY check_number;
