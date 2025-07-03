CREATE TABLE Product (
 product_id INT PRIMARY KEY,
 name VARCHAR(100),
 category VARCHAR(50),
 price DECIMAL(10,2),
 stock_quantity INT
);
CREATE TABLE Customer (
 customer_id INT PRIMARY KEY,
 name VARCHAR(100),
 phone VARCHAR(15),
 email VARCHAR(100)
);
CREATE TABLE Supplier (
 supplier_id INT PRIMARY KEY,
 name VARCHAR(100),
 contact VARCHAR(15),
 address VARCHAR(255)
);
CREATE TABLE `Order` (
 order_id INT PRIMARY KEY,
 order_date DATE,
 customer_id INT,
 total_amount DECIMAL(10,2),
 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
CREATE TABLE OrderItem (
 order_item_id INT PRIMARY KEY,
 order_id INT,
 product_id INT,
 quantity INT,
 price DECIMAL(10,2),
 FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
CREATE TABLE Purchase (
 purchase_id INT PRIMARY KEY,

 product_id INT,
 supplier_id INT,
 purchase_date DATE,
 quantity INT,
 cost_price DECIMAL(10,2),
 FOREIGN KEY (product_id) REFERENCES Product(product_id),
 FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
INSERT INTO Product VALUES
(1, 'Laptop', 'Electronics', 60000.00, 10),
(2, 'Smartphone', 'Electronics', 25000.00, 20),
(3, 'Desk Chair', 'Furniture', 3500.00, 15);
INSERT INTO Customer VALUES
(1, 'Anjali Mehta', '9876543210', 'anjali@example.com'),
(2, 'Rahul Verma', '9123456780', 'rahul@example.com');
INSERT INTO Supplier VALUES
(1, 'Tech Supplies Inc.', '9988776655', 'Hyderabad, Telangana'),
(2, 'Furniture World', '8877665544', 'Bangalore, Karnataka');
INSERT INTO `Order` VALUES
(101, '2025-04-25', 1, 85000.00),
(102, '2025-04-26', 2, 25000.00);
INSERT INTO OrderItem VALUES
(1, 101, 1, 1, 60000.00),
(2, 101, 2, 1, 25000.00),
(3, 102, 2, 1, 25000.00);
INSERT INTO Purchase VALUES
(1, 1, 1, '2025-04-20', 5, 55000.00),
(2, 3, 2, '2025-04-18', 10, 3000.00);


