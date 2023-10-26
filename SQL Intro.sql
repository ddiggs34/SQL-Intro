-- find all products 
 SELECT * FROM products;
 
-- find all products that cost $1400
 SELECT Name, Price FROM Products 
 WHERE Price = 1400.00;
 
-- find all products that cost $11.99 or $13.99
 SELECT Name, Price FROM products
 WHERE price = 11.99 OR price = 13.99;
 
-- find all products that do NOT cost 11.99 - using NOT
 SELECT Name, Price FROM products 
 WHERE NOT price  = 11.99;
 
-- find  all products and sort them by price from greatest to least
 SELECT * FROM products 
 ORDER BY price DESC;
 
-- find all employees who don't have a middle initial
 SELECT * FROM employees
 WHERE MiddleInitial is null;
 
-- find distinct product prices
 SELECT DISTINCT Price FROM PRODUCTS;
 
-- find all employees whose first name starts with the letter ‘j’
 SELECT * FROM employees
 WHERE FirstName Like  'j%';
 
-- find all Macbooks 
 SELECT * FROM products
 WHERE Name = "Macbook";
 
-- find all products that are on sale
 SELECT * FROM Products 
 WHERE OnSale;
 
-- find the average price of all products 
SELECT avg(price) FROM products;
 
-- find all Geek Squad employees who don't have a middle initial 
SELECT * from employees
WHERE MiddleInitial is Null AND Title = "Geek Squad";
 
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
SELECT * FROM Products 
WHERE StockLevel BETWEEN 500 AND 1200  ORDER BY PRICE;
