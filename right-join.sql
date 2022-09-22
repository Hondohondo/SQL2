/*RIGHT JOIN
To maintain the integrity of the database, you can't have a customer order unless they are in the database as a customer. So in this RIGHT JOIN, we are asking for all the customer orders from table2 (CustomerOrder) and listing the customer who made the order from table1 (Customer)
*/

SELECT *
FROM Customer
RIGHT JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId