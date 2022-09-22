/* AND Operator*/

SELECT *
FROM Customer AS c
	JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
	WHERE C.Country = 'France'
AND o.TotalAmount > 800
	ORDER BY c.LastName