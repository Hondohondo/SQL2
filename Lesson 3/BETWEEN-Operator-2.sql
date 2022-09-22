/*BETWEEN*/
/*The BETWEEN operator is used with the WHERE clause to select values that are in a range. The range is listed with a beginning and ending value, which is included in the result-set.*/

SELECT *
	FROM Supplier As s
JOIN  Product as p
	ON s.SupplierId =  p.SupplierId
WHERE s.Country = 'USA'
	AND p.UnitPrice BETWEEN 10 AND 20
ORDER BY p.UnitPrice