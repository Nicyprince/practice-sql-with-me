INSERT INTO categories (category_name) VALUES
('Electronics'),
('Books'),
('Clothing'),
('Home & Kitchen');


INSERT INTO products (name, price, category_id) VALUES
('Smartphone', 699.99, 1),
('Laptop', 999.99, 1),
('Headphones', 199.99, 1),
('Cookbook', 29.99, 2),
('Novel', 19.99, 2),
('T-Shirt', 14.99, 3),
('Jeans', 49.99, 3),
('Blender', 89.99, 4),
('Coffee Maker', 119.99, 4);

INSERT INTO customers (name, email, created_at) VALUES
('Alice Johnson', 'alice@example.com', '2023-01-10'),
('Bob Smith', 'bob@example.com', '2023-02-15'),
('Charlie Brown', 'charlie@example.com', '2023-03-20'),
('Diana Prince', 'diana@example.com', '2023-04-25');

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-06-01', 749.98),
(2, '2023-06-05', 1049.97),
(3, '2023-06-10', 34.98),
(1, '2023-06-15', 139.98),
(4, '2023-06-20', 1099.98);

INSERT INTO order_items (order_id, product_id, quantity, price_each) VALUES
(1, 1, 1, 699.99),   -- Smartphone
(1, 3, 1, 49.99),    -- Headphones (discounted)
(2, 2, 1, 999.99),   -- Laptop
(2, 6, 2, 24.99),    -- T-Shirt
(3, 4, 1, 29.99),    -- Cookbook
(3, 5, 1, 4.99),     -- Novel (discounted)
(4, 9, 1, 119.99),   -- Coffee Maker
(4, 7, 1, 19.99),    -- Jeans (discounted)
(5, 2, 1, 999.99),   -- Laptop
(5, 1, 1, 99.99);    -- Smartphone (promo price)
