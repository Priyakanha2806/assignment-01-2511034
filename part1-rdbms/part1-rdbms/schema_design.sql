CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    status VARCHAR(20),
    total_amount DECIMAL(10,2),
    num_items INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers VALUES
('CUST028','Mumbai'),
('CUST032','Delhi'),
('CUST037','Bangalore'),
('CUST003','Chennai'),
('CUST012','Pune');

INSERT INTO Orders VALUES
('ORD2001','CUST028','2023-05-20','delivered',2397,1),
('ORD2002','CUST032','2023-08-22','delivered',6197,3),
('ORD2003','CUST037','2023-12-12','delivered',9897,1),
('ORD2004','CUST003','2023-01-07','shipped',5596,2),
('ORD2005','CUST012','2023-01-19','processing',15792,4);
