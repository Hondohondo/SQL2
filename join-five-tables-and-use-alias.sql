/*
 In a JOIN (INNER JOIN) statement, you will get the same result-set as long as you connect the correct FKs to the correct PKs, in the right order. For other joins (FULL, LEFT, RIGHT), the order matters.
*/

SELECT Customer.FirstName, Customer.LastName, Customer.Country,
	CustomerOrder.TotalAmount, Product.ProductName,
	OrderItem.UnitPrice, OrderItem.Quantity, Product.Package,
	Supplier.CompanyName, Supplier.Country
FROM Customer
JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId
JOIN OrderItem
	ON CustomerOrder.OrderId = OrderItem.OrderId
JOIN Product
	ON OrderItem.ProductId = Product.ProductId
JOIN Supplier
	ON Supplier.SupplierId = Product.SupplierId
ORDER BY Customer.LastName, Customer.FirstName, Customer.Country,
	Supplier.CompanyName, Supplier.Country


/*USING AN ALIAS TO MAKE QUERY EASIER TO READ
  An alias creates a temporary name so that you don't have to write out the complete table or column name. Let's rewrite the query above using an alias for each table name. Let's choose a letter for each table that is easy to remember:

    "C" for Customer
    "O" for CustomerOrder
    "I" for OrderItem
    "P" for Product
    "S" for Supplier

  */

SELECT C.FirstName, C.LastName, C.Country,
	O.TotalAmount, P.ProductName,
	I.UnitPrice, I.Quantity, P.Package,
	S.CompanyName, S.Country
FROM Customer AS C
JOIN CustomerOrder AS O
	ON C.CustId = O.CustomerId
JOIN OrderItem AS I
	on O.OrderId = I.OrderId
JOIN Product AS P
	ON I.ProductId = P.ProductId
JOIN Supplier AS S
	ON S.SupplierId = P.SupplierId
ORDER BY C.LastName, C.FirstName, C.Country,
	S.CompanyName, S.Country


