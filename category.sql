CREATE TABLE Category (
Category_ID NUMBER PRIMARY KEY,
Category_Name VARCHAR2(100) NOT NULL,
Description VARCHAR2(255)
);

INSERT INTO Category
VALUES (1, 'Skincare', 'Skin care products');

INSERT INTO Category
VALUES (2, 'Makeup', 'Makeup and beauty products');

INSERT INTO Category
VALUES (3, 'Haircare', 'Hair care products');

INSERT INTO Category
VALUES (4, 'Fragrance', 'Perfumes and fragrances');

INSERT INTO Category
VALUES (5, 'Bath and Body', 'Bath and body products');

INSERT INTO Category
VALUES (6, 'Personal Care', 'Personal care products');

INSERT INTO Category
VALUES (7, 'Nails', 'Nail care products');

INSERT INTO Category
VALUES (8, 'Accessories', 'Beauty accessories');

INSERT INTO Category
VALUES (9, 'Wellness', 'Health and wellness products');

INSERT INTO Category
VALUES (10, 'Men', 'Men grooming products');

SELECT * FROM Category;

SELECT * FROM Category
WHERE Category_ID = 1;

SELECT * FROM Category
WHERE Category_Name = 'Skincare';

SELECT * FROM Category
WHERE Description = 'Skin care products';

SELECT Category_ID, Category_Name
FROM Category;

SELECT * FROM Category
ORDER BY Category_Name;

SELECT COUNT(*) AS Total_Categories
FROM Category;

CREATE TABLE Product (
Product_ID NUMBER PRIMARY KEY,
Product_Name VARCHAR2(100) NOT NULL,
Category_ID NUMBER,
Price NUMBER(10,2),
Stock NUMBER,
Brand VARCHAR2(100),
CONSTRAINT fk_product_category
FOREIGN KEY (Category_ID)
REFERENCES Category(Category_ID)
);