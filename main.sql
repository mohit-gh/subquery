Write a query fetch customers who has not order yet?
___________________________________________________________________________________________________________________________________
SELECT customername
FROM Customers
WHERE customerid NOT
IN (
SELECT distinct customerid
FROM orders
)

-----------------------------------------------------------------------------------------------------------------------------------

Write a query to total orders of customers?
___________________________________________________________________________________________________________________________________
select customerid, customername,
(select count(orderid) from orders where customerid = Customers.customerid) as TotOrds
from Customers

-----------------------------------------------------------------------------------------------------------------------------------
