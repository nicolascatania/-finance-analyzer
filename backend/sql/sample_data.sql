Use finance_analyzer

-- Insert test data into the users table
INSERT INTO users (u_id, u_name, u_mail, u_password) VALUES
(1, 'Juan', 'juan@example.com', '123'),
(2, 'Ana', 'ana@example.com', '123'),
(3, 'Luis', 'luis@example.com', '123'),
(4, 'Marta', 'marta@example.com', '123'),
(5, 'Carlos', 'carlos@example.com', '123'),
(6, 'Laura', 'laura@example.com', '123'),
(7, 'Pedro', 'pedro@example.com', '123'),
(8, 'Sofia', 'sofia@example.com', '111'),
(9, 'Ricardo', 'ricardo@example.com', '222'),
(10, 'Valeria', 'valeria@example.com', '333');

-- Insert test data into the Categories table
INSERT INTO Categories (c_id, c_name, c_description, u_id) VALUES
(1, 'Electronics', 'Devices and gadgets', 1),
(2, 'Books', 'Various genres of books', 2),
(3, 'Clothing', 'Apparel and accessories', 3),
(4, 'Groceries', 'Food and beverages', 4),
(5, 'Furniture', 'Home furnishings', 5),
(6, 'Toys', 'Children’s toys and games', 6),
(7, 'Sports', 'Sports equipment and apparel', 7),
(8, 'Beauty', 'Beauty and personal care products', 8),
(9, 'Health', 'Health and wellness products', 9),
(10, 'Automotive', 'Automotive parts and accessories', 10);

-- Insert test data into the Purchases table
INSERT INTO Purchases (p_id, p_date, p_description, p_total_price, u_id, c_id) VALUES
(1, '2024-08-01', 'Laptop purchase', 1200.00, 1, 1),
(2, '2024-08-02', 'Science fiction novel', 15.50, 2, 2),
(3, '2024-08-03', 'Winter jacket', 85.00, 3, 3),
(4, '2024-08-04', 'Weekly groceries', 55.75, 4, 4),
(5, '2024-08-05', 'Dining table', 300.00, 5, 5),
(6, '2024-08-06', 'Action figure set', 45.00, 6, 6),
(7, '2024-08-07', 'Tennis racket', 75.00, 7, 7),
(8, '2024-08-08', 'Shampoo and conditioner', 20.00, 8, 8),
(9, '2024-08-09', 'Vitamins and supplements', 60.00, 9, 9),
(10, '2024-08-10', 'Car tires', 500.00, 10, 10),
(11, '2024-08-11', 'Smartphone', 800.00, 1, 1),
(12, '2024-08-12', 'Cookbook', 25.00, 2, 2),
(13, '2024-08-13', 'Winter coat', 120.00, 3, 3),
(14, '2024-08-14', 'Monthly groceries', 65.00, 4, 4),
(15, '2024-08-15', 'Sofa', 600.00, 5, 5),
(16, '2024-08-16', 'Board game', 30.00, 6, 6),
(17, '2024-08-17', 'Soccer ball', 20.00, 7, 7),
(18, '2024-08-18', 'Facial cream', 35.00, 8, 8),
(19, '2024-08-19', 'Yoga mat', 40.00, 9, 9),
(20, '2024-08-20', 'Car battery', 150.00, 10, 10);

-- Insert test data into the Payments table
INSERT INTO Payments (pmnt_id, pmnt_cuote_number, pmnt_date, u_id, p_id) VALUES
(1, 1, '2024-08-01', 1, 1),
(2, 1, '2024-08-02', 2, 2),
(3, 1, '2024-08-03', 3, 3),
(4, 1, '2024-08-04', 4, 4),
(5, 1, '2024-08-05', 5, 5),
(6, 1, '2024-08-06', 6, 6),
(7, 1, '2024-08-07', 7, 7),
(8, 1, '2024-08-08', 8, 8),
(9, 1, '2024-08-09', 9, 9),
(10, 1, '2024-08-10', 10, 10),
(11, 2, '2024-08-11', 1, 1),
(12, 2, '2024-08-12', 2, 2),
(13, 2, '2024-08-13', 3, 3),
(14, 2, '2024-08-14', 4, 4),
(15, 2, '2024-08-15', 5, 5),
(16, 2, '2024-08-16', 6, 6),
(17, 2, '2024-08-17', 7, 7),
(18, 2, '2024-08-18', 8, 8),
(19, 2, '2024-08-19', 9, 9),
(20, 2, '2024-08-20', 10, 10),
(21, 3, '2024-08-21', 1, 1),
(22, 3, '2024-08-22', 2, 2),
(23, 3, '2024-08-23', 3, 3),
(24, 3, '2024-08-24', 4, 4),
(25, 3, '2024-08-25', 5, 5),
(26, 3, '2024-08-26', 6, 6),
(27, 3, '2024-08-27', 7, 7),
(28, 3, '2024-08-28', 8, 8),
(29, 3, '2024-08-29', 9, 9),
(30, 3, '2024-08-30', 10, 10);

-- Insert additional categories into the Categories table
INSERT INTO Categories (c_id, c_name, c_description, u_id) VALUES
(11, 'Appliances', 'Home and kitchen appliances', 1),
(12, 'Gardening', 'Tools and supplies for gardening', 1),
(13, 'Jewelry', 'Rings, necklaces, and other jewelry items', 1),
(14, 'Music', 'Musical instruments and accessories', 1);
