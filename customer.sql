CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(30),
    Last_Name VARCHAR2(30),
    Email VARCHAR2(50),
    Phone VARCHAR2(15),
    Address VARCHAR2(100),
    Password VARCHAR2(30)
);
INSERT INTO Customer VALUES
(101, 'Sruthi', 'Sagi', 'sruthi@gmail.com', '9876543210', 'Chennai', 'sruthi123');

INSERT INTO Customer VALUES
(102, 'Rahul', 'Kumar', 'rahul@gmail.com', '9876543211', 'Bangalore', 'rahul123');

INSERT INTO Customer VALUES
(103, 'Priya', 'Sharma', 'priya@gmail.com', '9876543212', 'Hyderabad', 'priya123');

INSERT INTO Customer VALUES
(104, 'Arun', 'Raj', 'arun@gmail.com', '9876543213', 'Coimbatore', 'arun123');

INSERT INTO Customer VALUES
(105, 'Sneha', 'Reddy', 'sneha@gmail.com', '9876543214', 'Vijayawada', 'sneha123');

INSERT INTO Customer VALUES
(106, 'Kiran', 'Naidu', 'kiran@gmail.com', '9876543215', 'Visakhapatnam', 'kiran123');

INSERT INTO Customer VALUES
(107, 'Divya', 'Mohan', 'divya@gmail.com', '9876543216', 'Madurai', 'divya123');

INSERT INTO Customer VALUES
(108, 'Ajay', 'Singh', 'ajay@gmail.com', '9876543217', 'Delhi', 'ajay123');

INSERT INTO Customer VALUES
(109, 'Neha', 'Patel', 'neha@gmail.com', '9876543218', 'Mumbai', 'neha123');

INSERT INTO Customer VALUES
(110, 'Vijay', 'Kumar', 'vijay@gmail.com', '9876543219', 'Pune', 'vijay123');

SELECT * FROM Customer;

UPDATE Customer
SET Phone = '9999999999'
WHERE Customer_ID = 101;

DELETE FROM Customer
WHERE Customer_ID = 110;
