/*The NOT Operator*/

SELECT *
FROM customer AS c
JOIN CustomerOrder AS o
ON c.CustId = o.CustomerId
WHERE NOT c.LastName = 'Brown'
AND NOT o.TotalAmount > 500