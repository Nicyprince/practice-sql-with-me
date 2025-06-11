-- Day 4 SQL Exercises: HAVING vs WHERE, Aliases, LIMIT

-- 1. List customer IDs that have placed more than 1 order.

SELECT customer_id, COUNT(*) AS orders_placed
FROM orders
GROUP BY customer_id 
HAVING orders_placed>1;

-- 2. Show product categories that have more than 2 products.

SELECT category_id, COUNT(*) AS number_of_products
FROM products
GROUP BY category_id
HAVING number_of_products>2;

-- 3. Show customers who placed orders totaling more than $1000.

SELECT customer_id, SUM(total_amount) AS total
FROM orders
GROUP BY customer_id
HAVING total > 1000;

-- 4. Find product IDs where the average price_each in order_items is above $100.

SELECT product_id, AVG(price_each) AS avg
FROM order_items
GROUP BY product_id
HAVING avg >100;

-- 5. Get customer IDs who have placed more than one order after '2023-03-01'

SELECT customer_id, COUNT(*) AS number_of_orders
FROM orders WHERE order_date > '2023-03-01'
GROUP BY customer_id
HAVING number_of_orders>1
;

-- 6. Select all product names with an alias Product_Name.

SELECT name AS Product_Name
FROM products;

-- 7. Show customer names and emails with aliases as Full_Name and Email_Address.

SELECT name AS Full_Name, email AS Email_Address
FROM customers;

-- 8. Display all order totals with alias Total_Spent.

SELECT total_amount AS Total_Spent
FROM orders;

-- 9. Show order_id, product_id and price_each with aliases: OrderID, ProductID, UnitPrice.

SELECT order_id AS OrderID, product_id AS ProductID, price_each AS UnitPRICE
FROM order_items;

-- 10. List all order dates with alias Purchase_Date.

SELECT order_date AS Purchase_Date
FROM orders;

-- 11. Show the first 5 customers from the table.

SELECT * FROM customers LIMIT 5;

-- 12. List the top 3 most expensive products.

SELECT * 
FROM products
ORDER BY price DESC
LIMIT 3;

-- 13. Show 2 most recent orders.

SELECT * 
FROM orders 
ORDER BY order_date DESC
LIMIT 2;

-- 14. Display the 4 cheapest products using LIMIT.

SELECT * 
FROM products 
ORDER BY price
LIMIT 4;

-- 15. List the first 3 entries from the order_items table.

SELECT * FROM order_items LIMIT 3;

-- 16. Skip the first 2 products and show the next 3.

SELECT * FROM products LIMIT 2,3;

-- 17. Skip 1 order and show the next 2.

SELECT * FROM orders LIMIT 1,2;

-- 18. Show products ranked 4th and 5th by price.

SELECT name, price
FROM products 
ORDER BY price LIMIT 3,2;

-- 19. Show customers ranked 2nd and 3rd alphabetically.

SELECT name
FROM customers
ORDER BY name LIMIT 1,2;

-- 20. List the 2nd and 3rd cheapest items in order_items.

SELECT order_id, price_each
FROM order_items
ORDER BY price_each LIMIT 1,2;

-- 21. Show total number of orders per customer, display only those with more than 1 — alias as Order_Count.

SELECT customer_id, COUNT(*) AS Order_Count
FROM orders
GROUP BY customer_id
HAVING Order_Count>1;

-- 22. Find categories with the average product price over $100.

SELECT category_id,AVG(price) AS average_product_price
FROM products 
GROUP BY category_id
HAVING average_product_price>100;

-- 23. Show all orders with total_amount over $500 and rename total_amount as Total.

SELECT order_id, total_amount AS Total
FROM orders WHERE total_amount > 500;

-- 24. List customer emails ending in .com, show only the first 2 results.

SELECT email
FROM customers WHERE email LIKE '%.com' LIMIT 2;

-- 25. Display product names that contain the word 'Book', show only 1 result with alias Book_Product.

SELECT name AS Book_Product
FROM products WHERE name LIKE '%Book%' LIMIT 1;


