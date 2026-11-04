🛍️ NYKAA E-Commerce Management System

📌 Project Overview

The **Nykaa E-Commerce Management System** is a Database Management System (DBMS) project developed using Oracle SQL. It is designed to manage the major operations of an online beauty and cosmetics shopping platform.

The system maintains customer details, product information, categories, seller information, inventory, orders, order details, and customer reviews.

The main objective of this project is to demonstrate how relational databases can be used to efficiently manage e-commerce operations through SQL queries, constraints, relationships, and database operations.

---

🎯 Objectives

* To design and develop a relational database for an e-commerce platform.
* To manage customer and seller information.
* To maintain product and category details.
* To track product inventory and stock availability.
* To manage customer orders and order details.
* To maintain customer reviews and ratings.
* To perform database operations using Oracle SQL.

---

🛠️ Technologies Used

| Technology      | Purpose                         |
| --------------- | ------------------------------- |
| Oracle SQL      | Database management             |
| SQL             | Data manipulation and retrieval |
| PL/SQL          | Procedural database programming |
| VS Code         | Code editing                    |
| Oracle Database | Database storage and execution  |

---

📂 Project Modules

1. Customer Management

* Store customer information.
* Maintain customer IDs and personal details.
* Retrieve customer records.

2. Category Management

* Maintain different product categories.
* Organize products based on their categories.

**Example Categories:**

* Skincare
* Makeup
* Haircare
* Fragrance
* Personal Care
* Men's Grooming

3. Product Management

* Store product details.
* Maintain product names, prices, and category IDs.
* Manage product information.

**Example Brands:**

* Minimalist
* Cetaphil
* Maybelline
* Lakme
* L'Oréal
* WishCare

4. Seller Management

* Maintain seller information.
* Store seller details.
* Manage seller-related records.

5. Inventory Management

* Track product stock availability.
* Maintain inventory quantities.
* Manage stock-related information.

6. Order Management

* Store customer order details.
* Maintain order dates and order statuses.
* Track total order amounts.
* Retrieve delivered and pending orders.
* Update and delete order records.

**Example Order Status:**

* Pending
* Shipped
* Delivered

7. Order Details Management

* Maintain individual products associated with orders.
* Store product quantities and prices.
* Retrieve order-related product information.

8. Review and Rating Management

* Store customer reviews.
* Maintain product ratings.
* Retrieve customer feedback.

---

 Database Tables

The project consists of the following major database tables:

| S.No | Table Name    | Description                         |
| ---- | ------------- | ----------------------------------- |
| 1    | Customer      | Stores customer information         |
| 2    | Category      | Stores product categories           |
| 3    | Product       | Stores product details              |
| 4    | Seller        | Stores seller information           |
| 5    | Inventory     | Maintains product stock             |
| 6    | Orders        | Stores customer order information   |
| 7    | Order_Details | Stores individual order items       |
| 8    | Review        | Stores customer reviews and ratings |

---

⚙️ SQL Operations Implemented

The following SQL operations are implemented in the project:

| SQL Operation | Purpose                                           |
| ------------- | ------------------------------------------------- |
| CREATE        | Create database tables                            |
| INSERT        | Insert records                                    |
| SELECT        | Retrieve records                                  |
| UPDATE        | Modify existing records                           |
| DELETE        | Delete records                                    |
| JOIN          | Retrieve related information from multiple tables |
| WHERE         | Filter records                                    |
| ORDER BY      | Sort records                                      |
| GROUP BY      | Group records                                     |
| COUNT()       | Count records                                     |
| SUM()         | Calculate total values                            |
| PRIMARY KEY   | Uniquely identify records                         |
| FOREIGN KEY   | Establish relationships between tables            |

---

🔑 Database Concepts Used

* Relational Database Management System (RDBMS)
* Primary Key
* Foreign Key
* NOT NULL Constraint
* UNIQUE Constraint
* CHECK Constraint
* Referential Integrity
* Joins
* Aggregate Functions
* Data Manipulation Language (DML)
* Data Definition Language (DDL)
* Transaction Control Language (TCL)

---

💻 Sample SQL Queries

1. Display All Orders

sql
SELECT * FROM Orders;


2. Display Delivered Orders

sql
SELECT *
FROM Orders
WHERE Order_Status = 'Delivered';

3. Find Total Order Amount
sql
SELECT SUM(Total_Amount) AS Total_Order_Amount
FROM Orders;


4. Count Total Orders
sql
SELECT COUNT(*) AS Total_Orders
FROM Orders;


5. Display Order Details with Customer Information
sql
SELECT
    Orders.Order_ID,
    Orders.Customer_ID,
    Orders.Order_Date,
    Orders.Order_Status,
    Orders.Total_Amount
FROM Orders
JOIN Customer
ON Orders.Customer_ID = Customer.Customer_ID;


---

📁 Project Structure

text
NYKAA-E-COMMERCE-MANAGEMENT-SYSTEM/
│
├── Customer_Management.sql
├── Category_Management.sql
├── Product_Management.sql
├── Seller_Management.sql
├── Inventory_Management.sql
├── Order_Management.sql
├── Order_Details.sql
├── Review_Rating.sql
│
└── README.md
---

🚀 How to Run the Project

1. Install and configure Oracle Database.
2. Open Oracle SQL Developer or VS Code with the appropriate Oracle SQL connection.
3. Connect to your Oracle database.
4. Open the project SQL files.
5. Execute the CREATE TABLE statements.
6. Insert sample records into the tables.
7. Execute the SELECT, UPDATE, DELETE, and JOIN queries.
8. Verify the outputs.
---

🎓 Learning Outcomes

Through this project, we gained practical knowledge of:

* Designing relational database structures.
* Creating tables with primary and foreign keys.
* Establishing relationships between tables.
* Writing SQL queries for data retrieval.
* Performing CRUD operations.
* Using joins and aggregate functions.
* Managing e-commerce data efficiently.
* Understanding real-world database applications.
---

🔮 Future Enhancements

* Implement a user-friendly frontend.
* Integrate a payment gateway.
* Add secure user authentication.
* Implement order tracking.
* Generate sales and inventory reports.
* Develop an admin dashboard.
---

👩‍💻 Project Information

Project Name: Nykaa E-Commerce Management System

Domain: Database Management System (DBMS)

Course: B.Sc. Computer Science with Artificial Intelligence

Database: Oracle SQL

Tools: VS Code / Oracle Database
---

📜 Conclusion
The Nykaa E-Commerce Management System demonstrates the practical implementation of relational database concepts in an online shopping environment. It provides an organized approach to managing customers, products, sellers, inventory, orders, and reviews using Oracle SQL.

This project helped us understand the importance of database design, data relationships, SQL operations, and data integrity in real-world e-commerce applications.
