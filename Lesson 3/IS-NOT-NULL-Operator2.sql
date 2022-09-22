
/*LEFT JOIN retrieves all records on the left even if they are NULL.  If you add IS NOT NULL, the null rows aren't part of the result-set. JOIN only retrieves what is matching, so it does not retrieve null rows.*/

/*Just remember that the LEFT JOIN will retrieve null rows that are in the first (left) table. JOIN doesn't do that.*/
SELECT *
FROM Customer
	LEFT JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId
	WHERE CustomerOrder.CustomerId IS NOT NULL