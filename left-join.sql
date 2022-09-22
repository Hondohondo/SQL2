/*Left Join
  The LEFT JOIN query above retrieves all the rows from table1 (Customer) that have matching rows in table2 (CustomerOrder). All the rows from table1 (Customer) are retrieved, so if there is a customer who hasn't ordered, there will be a row with NULL on the table2 (CustomerOrder) side.
  */
SELECT *
FROM Customer
LEFT JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId