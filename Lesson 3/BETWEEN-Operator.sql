/*The BETWEEN Operator*/

SELECT *
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE o.TotalAmount BETWEEN 100 AND 500