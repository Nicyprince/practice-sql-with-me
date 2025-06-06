-- 1. Find all customers whose name starts with 'A'.

SELECT * 
FROM customers
WHERE name LIKE 'A%';

-- 2. List all customers whose email ends with '.com'.

SELECT * 
FROM customers
WHERE email LIKE '%.com';

-- 3. Show all products with a price greater than 100.

SELECT name
FROM products
WHERE price > 100;

-- 4. List all products with price less than or equal to 50.

SELECT * 
FROM products
WHERE price <= 50;

-- 5. Find all orders where total_amount is more than 500.

SELECT * 
FROM orders
WHERE total_amount > 500;

-- 6. Show all orders placed on or after '2023-06-10'.

SELECT * 
FROM orders
WHERE order_date >= '2023-06-10';

-- 7. Find customers whose name contains 'son'.

SELECT name
FROM customers
WHERE name LIKE '%son%';

-- 8. List products with name ending in 'er'.

SELECT name
FROM products
WHERE name LIKE '%er';

-- 9. Show all customers whose email contains the word 'example'.

SELECT * 
FROM customers
WHERE email LIKE '%example%';

-- 10. List all products where price is not equal to 699.99.

SELECT name ,
price
FROM products WHERE price != 699.99;

-- 11. Find all customers not named 'Bob Smith'.

SELECT name 
FROM customers WHERE name != 'Bob Smith';

-- 12. List orders with total_amount between 100 and 800.

SELECT order_id ,
total_amount
FROM orders WHERE total_amount>100 AND total_amount<800 ;

-- 13. Show all products in category_id 1 or category_id 4.

SELECT name, 
category_id
FROM products WHERE category_id= 1 OR category_id= 4;

-- 14. List customers who signed up after '2023-03-01'.

SELECT name ,
created_at
FROM customers WHERE created_at>'2023-03-01' ;

-- 15. Show all orders that were not placed by customer_id 1.

SELECT order_id,
customer_id
FROM orders WHERE customer_id != 1 ;

-- 16. List products with names exactly 6 characters long.

SELECT name 
FROM products WHERE name LIKE '______';

-- 17. Show all customers whose name does not start with 'D'.

SELECT name 
FROM customers WHERE name NOT LIKE 'D%';

-- 18. Find all products whose name includes the word 'Book'.

SELECT name
FROM products WHERE name LIKE '%Book%';

-- 19. Show orders placed before '2023-06-10' or total_amount > 1000.

SELECT order_id,
order_date,
total_amount
FROM orders WHERE order_date<2023-06-10 OR total_amount > 1000;

-- 20. List all order_items where price_each is not between 50 and 200.

SELECT order_item_id,
price_each
FROM order_items WHERE price_each<50 or price_each>200;

-- 21. Find order_items where quantity is greater than 1.

SELECT order_item_id,
quantity
FROM order_items WHERE quantity>1;

-- 22. List products with price between 20 and 100, inclusive.

SELECT name,
price
FROM products WHERE price>=20 and price<=100 ;

-- 23. Show all customers whose name includes a space character.

SELECT name 
FROM customers WHERE name LIKE '% %';

-- 24. Find all orders placed by customer_id 2 or customer_id 4.

SELECT order_id,
customer_id
FROM orders WHERE customer_id=2 or customer_id =4 ;

-- 25. List all order_items where product_id is not 2 and quantity = 1.

SELECT order_item_id ,
product_id,
quantity
FROM order_items WHERE product_id != 2 and quantity =1;
