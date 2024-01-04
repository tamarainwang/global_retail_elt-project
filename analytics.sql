-- Top 20 customers

CREATE TABLE top_customers AS
SELECT c.customer_name, ROUND(SUM(o.sales), 2) AS total_spend
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spend DESC
LIMIT 20;

--Top 100 products in terms of quantity sold

SELECT p.product_name, SUM(o.quantity) AS qty_sold
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY qty_sold DESC
LIMIT 100;

--Top 10 Locations in terms of sales

SELECT l.country, SUM(o.sales) AS country_sales
FROM locations l
JOIN orders o
ON l.country = o.country
GROUP BY l.country
ORDER BY country_sales DESC
LIMIT 10;


