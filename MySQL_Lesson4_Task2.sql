USE ShopDB;

SELECT 
customers.LName AS CustomerLName,
customers.FName AS CustomerFName,
customers.MName AS CustomerMName,
employees.LName AS EmployeesLName,
employees.FName AS EmployeesFName,
employees.MName AS EmployeesMName
FROM orders
INNER JOIN customers
ON orders.CustomerNo = customers.CustomerNo
INNER JOIN employees
ON orders.EmployeeID = employees.EmployeeID
INNER JOIN orderdetails
ON orders.OrderID = orderdetails.OrderID
WHERE orderdetails.TotalPrice > 100
GROUP BY CustomerLName,CustomerFName,CustomerMName,EmployeesLName,EmployeesFName,EmployeesMName;