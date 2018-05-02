Write a query fetch customers who has not order yet?

SELECT customername
FROM Customers
WHERE customerid NOT
IN (
SELECT distinct customerid
FROM orders
)

--------------------------------------------------------------------------------------------------------------------------------
