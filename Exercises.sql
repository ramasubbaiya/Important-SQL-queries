//Get all data from employee table
SELECT * FROM employee;

//SQL Query to get the highest salary from Employee table
SELECT MAX(salary) FROM employee;

//Get top 5 rows from customer table
SELECT * FROM Customers LIMIT 5;

//Get top 2 rows from customer table
SELECT TOP 2 * FROM Customers;

//Get top 50% from the table
SELECT TOP 50 PERCENT * FROM Customers;

//In a column there will many duplicate values, inorder to get the unrepeated values use DISTINCT
//Get city(do not repeat) from customers table 
SELECT DISTINCT City FROM Customers;
