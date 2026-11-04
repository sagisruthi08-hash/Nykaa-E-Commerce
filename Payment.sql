CREATE TABLE Payment (
Payment_ID NUMBER PRIMARY KEY,
Order_ID NUMBER,
Payment_Date DATE DEFAULT SYSDATE,
Payment_Method VARCHAR2(30)
CHECK (Payment_Method IN
('UPI', 'Credit Card', 'Debit Card',
'Cash', 'Net Banking')),
Payment_Amount NUMBER(10,2)
CHECK (Payment_Amount >= 0),
Payment_Status VARCHAR2(20)
CHECK (Payment_Status IN
('Success', 'Pending', 'Failed')),
Transaction_ID VARCHAR2(50) UNIQUE,

```
CONSTRAINT fk_payment_order
FOREIGN KEY (Order_ID)
REFERENCES Orders(Order_ID)
```

);

-- 2. INSERT PAYMENT RECORDS

INSERT INTO Payment VALUES
(501, 101, TO_DATE('04-11-2026','DD-MM-YYYY'),
'UPI', 1500, 'Success', 'NYKUPI501');

INSERT INTO Payment VALUES
(502, 102, TO_DATE('04-11-2026','DD-MM-YYYY'),
'Credit Card', 2500, 'Success', 'NYKCC502');

INSERT INTO Payment VALUES
(503, 103, TO_DATE('04-11-2026','DD-MM-YYYY'),
'Debit Card', 1800, 'Pending', 'NYKDC503');

INSERT INTO Payment VALUES
(504, 104, TO_DATE('04-11-2026','DD-MM-YYYY'),
'Cash', 1200, 'Success', 'NYKCASH504');

-- 3. DISPLAY ALL PAYMENT RECORDS

SELECT * FROM Payment;

-- 4. DISPLAY SUCCESSFUL PAYMENTS

SELECT *
FROM Payment
WHERE Payment_Status = 'Success';

-- 5. DISPLAY PAYMENTS USING UPI

SELECT *
FROM Payment
WHERE Payment_Method = 'UPI';

-- 6. FIND TOTAL PAYMENT AMOUNT

SELECT SUM(Payment_Amount) AS Total_Payment
FROM Payment;

-- 7. COUNT SUCCESSFUL PAYMENTS

SELECT COUNT(*) AS Successful_Payments
FROM Payment
WHERE Payment_Status = 'Success';

-- 8. DISPLAY PAYMENT DETAILS WITH ORDER ID

SELECT
Payment.Payment_ID,
Payment.Order_ID,
Payment.Payment_Method,
Payment.Payment_Amount,
Payment.Payment_Status
FROM Payment
JOIN Orders
ON Payment.Order_ID = Orders.Order_ID;

-- 9. UPDATE PAYMENT STATUS

UPDATE Payment
SET Payment_Status = 'Success'
WHERE Payment_ID = 503;

-- 10. DELETE A PAYMENT RECORD

DELETE FROM Payment
WHERE Payment_ID = 504;

-- 11. COMMIT CHANGES

COMMIT;
