/*AND*/
SELECT *
FROM Customer  AS c
	JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
	WHERE c.Country = 'Austria'
AND o.TotalAmount < 1000


/*BETWEEN*/
SELECT *
FROM Customer  AS c
	JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
	WHERE c.Country = 'Austria'
AND o.TotalAmount BETWEEN 1000 AND 3000

/*DISTINCT*/
SELECT DISTINCT c.FirstName
FROM Customer AS c