//Get all data from employee table
SELECT * FROM employee;

//Update a Employee status to hired
//UPDATE table_name SET column1=value1,... WHERE some_column=some_value;
UPDATE Employees SET status="Hired" WHERE empName="Rama";

//Get the current date
SELECT GETDATE();

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

//SQL Query to find second highest salary of Employee - NOT IN 
SELECT MAX(salary) from Employees WHERE salary NOT IN (SELECT MAX(salary) from Employees);

//SQL Query to find Max Salary from each department - GROUP BY
//you can also sort by ASC|DESC
SELECT deptID, MAX(salary) AS "Maximum Salary" FROM Employees GROUP BY department;
//If you need to print department name from different table using id
SELECT deptName, MAX(salary) AS "Maximum Salary" FROM Employees e RIGHT JOIN Department d ON d.dept_id = e.dept_id;

