/*The IN Operator*/

SELECT *
FROM Supplier as s
	JOIN  Product as p
ON s.SupplierId =  p.SupplierId
	WHERE s.Country IN ('Germany','Norway','Sweden')
AND  p.IsDiscontinued =  1
ORDER BY s.Country