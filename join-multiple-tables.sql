/* to see the Customer and the items they purchase*/

SELECT c.FirstName, c.LastName, c.Country,
       p.ProductName, o.OrderID, p.ProductID
FROM Customer as c
JOIN CustomerOrder AS o
    ON c.CustID = o.CustomerId
JOIN OrderItem AS i
    ON o.OrderID = i.OrderId
JOIN Product AS p
    ON i.ProductId = p.ProductId
ORDER BY c.LastName, c.Country

/*
 to see the Customer Name and the different countries that their ordered products came from
*/

SELECT C.FirstName, C.LastName, S.Country
FROM Customer AS C
JOIN CustomerOrder AS O
	ON c.CustId = O.CustomerId
JOIN OrderItem AS I
	on O.OrderId = I.OrderId
JOIN Product AS P
	on I.ProductId = P.ProductId
JOIN Supplier AS S
	on P.SupplierId = S.SupplierId
ORDER BY C.LastName, s.Country