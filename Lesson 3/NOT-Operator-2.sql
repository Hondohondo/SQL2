/*The NOT Operator*/

SELECT *
FROM Product as p
WHERE NOT IsDiscontinued = 1


SELECT *
FROM Product as p
WHERE NOT UnitPrice > 20