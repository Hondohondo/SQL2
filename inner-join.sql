/*
An INNER JOIN query returns the rows that have matching rows in both tables.

 Is this the same as a RIGHT JOIN since they returned the same number of rows? No, in this database a business rule is there are no customer orders before a customer is listed in the database. However, if there wasn't a business rule set up for the database, there could have been null rows retrieved if the right table (table2) had orders that didn't match a customer in the left table (table1)

Note

Business rules are defined as the database is designed and created. They are based on a policy, procedure, or principle within the organization. The examples we use in this course are:

    A customer row is to be in the database before the customer can make an order.
    A supplier row is to be in the database before a product can be added.

*/

SELECT *
FROM Customer
INNER JOIN CustomerOrder
on Customer.CustId = CustomerOrder.CustomerId