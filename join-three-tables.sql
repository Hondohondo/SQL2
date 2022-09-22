/*
Look at the order of the ON statements. First, we have the OrderItem table, then the Product table, then the Supplier table. The ON statements are written in the same way, with each table connecting to the next table through the FKs to the PKs:

ON OrderItem.ProductId = Product.ProductId
ON Product.SupplierId = Supplier.SupplierId
*/


SELECT OrderItem.ProductId, Product.ProductName, OrderItem.UnitPrice,
	OrderItem.Quantity,Product.Package, Supplier.CompanyName,
	Supplier.Country
FROM OrderItem
JOIN Product
ON OrderItem.ProductId = Product.ProductId
JOIN Supplier
ON Product.SupplierId = Supplier.SupplierId
ORDER BY Supplier.Country


SELECT OrderItem.ProductId, Product.ProductName, OrderItem.UnitPrice,
	OrderItem.Quantity,Product.Package, Supplier.CompanyName,
	Supplier.Country
FROM OrderItem
JOIN Product
ON OrderItem.ProductId = Product.ProductId
JOIN Supplier
ON Product.SupplierId = Supplier.SupplierId
ORDER BY Supplier.Country DESC, Supplier.CompanyName, Product.ProductName

