-- Day 1: Basic SELECT Statements & Arithmetic Operations

-- 1. Show all products and their details.

SELECT * 
FROM store_db.products;

-- 2. Display only the names and emails of all customers.

SELECT name,
email
FROM store_db.customers;

-- 3. Show each product’s price along with a 10% discount.

SELECT name,
price, 
price*(90/100) AS discounted_price
FROM store_db.products;

-- 4. Display order ID, total amount, and estimated tax (13%).

SELECT order_id, 
total_amount, 
total_amount*(13/100) AS estimated_tax
FROM store_db.orders;

-- 5. Show revenue for each order item (quantity * price_each).

SELECT order_item_id, 
quantity, 
price_each,
(quantity * price_each) AS revenue
FROM store_db.order_items;

-- 6. Estimate total value in stock for each product (assume 50 units in stock).

SELECT name, 
price, 
price * 50 AS stock_value 
FROM products;

