-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName FROM Product
Join  Category 
on Product.CategoryId = Category.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, ShipName FROM "Order" WHERE OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT  od.Quantity, p.ProductName FROM "Order" as o 
join OrderDetail as od on o.id = od.OrderId
join Product as p on od.ProductId = p.id
WHERE o.Id = 10251 
ORDER BY p.ProductName


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id , c.CompanyName, e.LastName FROM "order" as o
join Customer as c on o.CustomerId = c.id
join Employee as e on o.EmployeeId = e.id