SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


SELECT Employees.LastName, Count(Orders.OrderID) As enumOrders From Orders
Left Join Employees ON Orders.EmployeeID = Employees.EmployeeID
Group by LastName Order by enumOrders Desc


Select Products.ProductName, Customers.Country, Count(Orders.OrderID) as enumOrders FROM Customers
LEFT JOIN Orders on Customers.CustomerID = Orders.CustomerID
LEFT JOIN OrderDetails on OrderDetails.OrderID = Orders.OrderID
LEFt JOIN Products ON OrderDetails.ProductID = Products.ProductID
Where Country = 'Germany'
Group by ProductName Order by enumOrders Desc