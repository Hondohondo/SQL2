/*The OR Operator*/

SELECT *
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE c.LastName = 'Brown'
OR o.TotalAmount > 500