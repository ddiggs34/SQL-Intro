-- JOINS EXCERCISE

/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT products.Name, categories.Name FROM products 
INNER JOIN categories -- picks the two bubbles that are joining
ON categories.CategoryID = products.CategoryID
WHERE categories.Name = "Computers";


/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 
SELECT products.Name, products.Price, reviews.Rating from products
INNER JOIN reviews
ON reviews.ProductID = products.ProductID
WHERE reviews.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, employees.LastName, SUM(sales.Quantity) as "TotalSales"  from sales
INNER JOIN employees
ON sales.EmployeeID = employees.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY TotalSales DESC;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name, departments.departmentID, categories.Name FROM categories
INNER JOIN departments
ON departments.DepartmentID = categories.DepartmentID
WHERE categories.Name =  "Appliances" or categories.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 SELECT products.Name, SUM(sales.quantity), SUM(sales.Quantity * sales.PricePerUnit) as "SalesTotal" from products
 INNER JOIN sales
 ON sales.ProductID = products.ProductID
 WHERE products.Name Like "%california"
 GROUP BY Name;
 
 
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment from reviews as r
INNER JOIN products as p
ON p.ProductID = r.ProductID
WHERE p.name LIKE  "%vis%" AND r.Rating = 1;





-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */


