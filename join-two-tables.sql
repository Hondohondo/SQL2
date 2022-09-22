select * from product

select * from supplier

select * from orderitem

select * from product
left join orderitem o on product.ProductId = o.ProductId

select * from orderitem
left join product p on p.ProductId = orderitem.ProductId

select OrderItem.ProductId, Product.ProductName, OrderItem.UnitPrice, OrderItem.Quantity, Product.Package from orderitem
left join product on product.ProductId = orderitem.ProductId
order by ProductId