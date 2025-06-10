-- 1. List all products with price > 50, sorted by price ascending.

SELECT name, 
price
FROM products
WHERE price > 50
ORDER BY price;

-- 2. Show all customers whose name starts with 'A', ordered alphabetically.

SELECT name
FROM customers
WHERE name LIKE 'A%'
ORDER BY name;

-- 3. Show orders with total_amount > 500, ordered from highest to lowest total_amount.

SELECT order_id, total_amount
FROM orders
WHERE total_amount > 500
ORDER BY total_amount DESC;

-- 4. Show order_items where quantity > 1, sorted by quantity descending.

SELECT order_item_id, quantity
FROM order_items
WHERE quantity > 1
ORDER BY quantity DESC;

-- 5. List all products in category_id = 1, sorted by name.

SELECT name, category_id
FROM products
WHERE category_id = 1
ORDER BY name;

-- 6. Find total number of products per category_id.

SELECT category_id, COUNT(*)
FROM products
GROUP BY category_id;

-- 7. Count how many orders each customer has placed.

SELECT customer_id, COUNT(order_id)
FROM orders
GROUP BY customer_id;

-- 8. Show the average price of products in category_id = 1.

SELECT AVG(price),category_id
FROM products 
WHERE category_id = 1
GROUP BY category_id;

-- 9. List all orders where total_amount is between 100 and 1000, sorted by order_date.

SELECT *
FROM orders 
WHERE total_amount BETWEEN 100 AND 1000
ORDER BY order_date;

-- 10. Find number of customers created after '2023-02-01', grouped by created_at.

SELECT COUNT(customer_id),created_at
FROM customers 
WHERE created_at > '2023-02-01'
GROUP BY created_at;

-- 11. Show product count per category_id, sorted by count descending.

SELECT category_id, COUNT(*)
FROM products
GROUP BY category_id
ORDER BY COUNT(*) DESC;

-- 12. Find number of order_items per order_id.

SELECT order_id, COUNT(order_item_id)
FROM order_items
GROUP BY order_id;

-- 13. Find the minimum and maximum price in the products table.

SELECT MIN(price), MAX(price)
FROM products;

-- 14. Show total order count per customer_id, only for customers who placed more than 1 order.

SELECT customer_id, COUNT(order_id)
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- 15. Show product_id and how many times it appears in order_items.

SELECT product_id, COUNT(*)
FROM order_items
GROUP BY product_id;

-- 16. List all products where price is NOT between 20 and 100, ordered by price.

SELECT name, price
FROM products WHERE price NOT BETWEEN 20 and 100
ORDER BY price;

-- 17. Show orders where total_amount is < 300 OR > 1000, ordered by total_amount.

SELECT order_id, total_amount
FROM orders WHERE total_amount < 300 OR total_amount > 1000
ORDER BY total_amount;

-- 18. Find count of customers whose name contains 'n', grouped by email.

SELECT email, COUNT(name)
FROM customers WHERE name LIKE '%n%'
GROUP BY email;

-- 19. Show count of orders placed on each date.

SELECT order_date,COUNT(order_id)
FROM orders
GROUP BY order_date;

-- 20. List all products where the name includes 'oo', sorted by name.

SELECT name 
FROM products WHERE name LIKE '%oo%'
ORDER BY name;

-- 21. Show customer count per date (created_at), where date is after '2023-01-31'.

SELECT created_at,COUNT(customer_id)
FROM customers WHERE created_at> '2023-01-31'
GROUP BY created_at;

-- 22. Count how many order_items have price_each >= 100.

SELECT COUNT(order_item_id)
FROM order_items WHERE price_each >= 100;

-- 23. Show count of order_items where quantity = 1 and price_each > 50.

SELECT COUNT(order_item_id)
FROM order_items WHERE quantity = 1 AND price_each > 50;

-- 24. Show average product price per category_id.

SELECT category_id, AVG(price)
FROM products
GROUP BY category_id;

-- 25. Show all customers where name does NOT start with 'B', sorted by name.

SELECT name
FROM customers WHERE name NOT LIKE 'B%'
ORDER BY name;