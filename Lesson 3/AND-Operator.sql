/*AND OPERATOR*/
SELECT *
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE c.LastName = 'Brown'
AND o.TotalAmount > 500