/*The IN Operator*/

SELECT *
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE c.LastName IN ('Brown','Wilson','Bennett')
AND o.TotalAmount > 500