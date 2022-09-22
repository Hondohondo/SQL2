/*LIKE*/


/*
The LIKE '%dried% is asking to retrieve the rows that have 'dried' somewhere in the name. The Product name could start with 'dried', it could be in the middle, or it could be the last word. The % sign is used to signify however many characters. You used the % at the beginning and the end ('%dried%'), signifying that you want all products with 'dried' somewhere in the name.
*/
SELECT *
FROM Product AS p
WHERE p.ProductName LIKE '%dried%'
ORDER BY p.ProductName


SELECT *
FROM Product AS p
WHERE p.Package LIKE '%24%'
