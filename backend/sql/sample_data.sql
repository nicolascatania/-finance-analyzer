USE finance_analyzer;
USE finance_analyzer;


SELECT * from users
SELECT * from Payments
SELECT * from Categories
SELECT * from Purchases

INSERT INTO Users (UserName, UserEmail, UserPassword) VALUES
('Juan', 'juan@example.com', '123'),
('Ana', 'ana@example.com', '123'),
('Luis', 'luis@example.com', '123'),
('Marta', 'marta@example.com', '123'),
('Carlos', 'carlos@example.com', '123');


INSERT INTO Categories (CategoryName, CategoryDescription, UserID) VALUES
('Electronics', 'Devices and gadgets', 21),
('Books', 'Various genres of books', 22),
('Clothing', 'Apparel and accessories', 23),
('Groceries', 'Food and beverages', 24),
('Furniture', 'Home furnishings', 25);


INSERT INTO Purchases (PurchaseDate, PurchaseDescription, PurchaseTotalPrice, UserID, CategoryID) VALUES
('2024-08-01', 'Laptop purchase', 1200.00, 21, 31),
('2024-08-02', 'Science fiction novel', 15.50, 22, 32),
('2024-08-03', 'Winter jacket', 85.00, 23, 33),
('2024-08-04', 'Weekly groceries', 55.75, 24, 34),
('2024-08-05', 'Dining table', 300.00, 25, 35);



INSERT INTO Payments (PaymentCuoteNumber, PaymentDate, UserID, PurchaseID) VALUES
(1, '2024-08-01', 21, 43),
(1, '2024-08-02', 22, 44),
(1, '2024-08-03', 23, 45),
(1, '2024-08-04', 24, 46),
(1, '2024-08-05', 25, 47);



INSERT INTO Categories (CategoryName, CategoryDescription, UserID) VALUES
('Music gear', 'Acoustic guitar',21)
INSERT INTO Purchases (PurchaseDate, PurchaseDescription, PurchaseTotalPrice, UserID, CategoryID) VALUES
('2024-08-25','Acoustic guitar Fender', 1300.00,21,36)
INSERT INTO Payments (PaymentCuoteNumber, PaymentDate, UserID, PurchaseID) VALUES
(1, '2024-08-28', 21, 48);