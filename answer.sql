-- Question 1
-- Show the total amount paid for each payment date
SELECT
    paymentDate AS Payment_Date,
    SUM(amount) AS Total_Amount_Paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
-- Show customer details and average credit limit
SELECT
    customerName AS Customer_Name,
    country AS Country,
    AVG(creditLimit) AS Average_Credit_Limit
FROM customers
GROUP BY customerName, country;

-- Question 3
-- Calculate total price for each product ordered
SELECT
    productCode AS Product_Code,
    quantityOrdered AS Quantity_Ordered,
    SUM(quantityOrdered * priceEach) AS Total_Price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
-- Find the highest payment amount for each check number
SELECT
    checkNumber AS Check_Number,
    MAX(amount) AS Highest_Amount
FROM payments
GROUP BY checkNumber;
