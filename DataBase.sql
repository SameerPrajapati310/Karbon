CREATE DATABASE e_commerce;

-- Create users table
CREATE TABLE public.users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE
);

-- Create products table
CREATE TABLE public.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create orders table
CREATE TABLE public.orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create order_items table
CREATE TABLE public.order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample data into users table
INSERT INTO users (user_id, username, email, registration_date) VALUES
(1, 'john_doe', 'john@example.com', '2023-01-15'),
(2, 'jane_smith', 'jane@example.com', '2023-02-20'),
(3, 'bob_johnson', 'bob@example.com', '2023-03-10'),
(4, 'alice_brown', 'alice@example.com', '2023-04-05'),
(5, 'charlie_davis', 'charlie@example.com', '2023-05-01');

-- Insert sample data into products table
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 599.99),
(3, 'Headphones', 'Electronics', 149.99),
(4, 'Running Shoes', 'Sports', 79.99),
(5, 'Backpack', 'Accessories', 49.99);

-- Insert sample data into orders table
INSERT INTO orders (order_id, user_id, order_date, total_amount) VALUES
(1, 1, '2024-08-01', 1149.98),
(2, 2, '2024-08-02', 599.99),
(3, 3, '2024-08-03', 229.98),
(4, 4, '2024-08-04', 999.99),
(5, 5, '2024-08-05', 129.98),
(6, 1, '2024-08-06', 749.98),
(7, 2, '2024-08-07', 1049.98),
(8, 3, '2024-08-08', 79.99),
(9, 4, '2024-08-09', 199.98),
(10, 5, '2024-08-10', 599.99);

-- Insert sample data into order_items table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 2, 2, 1),
(4, 3, 3, 1),
(5, 3, 5, 1),
(6, 4, 1, 1),
(7, 5, 4, 1),
(8, 5, 5, 1),
(9, 6, 2, 1),
(10, 6, 3, 1),
(11, 7, 1, 1),
(12, 7, 5, 1),
(13, 8, 4, 1),
(14, 9, 3, 1),
(15, 9, 5, 1),
(16, 10, 2, 1);

