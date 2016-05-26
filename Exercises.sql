//1. Get all data from employee table
SELECT * FROM employee;

//2. Update a Employee status to hired
//UPDATE table_name SET column1=value1,... WHERE some_column=some_value;
UPDATE Employees SET status="Hired" WHERE empName="Rama";

//3. Delete the Orders table
DELETE FROM Orders;

//4. Get the current date
SELECT GETDATE();

//5. Check whether date passed to Query is the date of given format or not
SELECT  ISDATE('1/08/13') AS "MM/DD/YY";

//6. Print the name of the distinct employee whose DOB is between 01/01/1960 to 31/12/1975
SELECT empName FROM Employees WHERE dob BETWEEN '01/01/1960' AND '31/12/1975'

//7. Find number of employees according to gender  whose DOB is between 01/01/1960 to 31/12/1975
SELECT sex, count(*) FROM Employees WHERE DOB BETWEEN '01/01/1960' AND '31/12/1975' GROUP BY sex;

//8. SQL Query to get the highest salary from Employee table
SELECT MAX(salary) FROM employee;

//9. Get top 5 rows from customer table
SELECT * FROM Customers LIMIT 5;

//10. Get top 2 rows from customer table
SELECT TOP 2 * FROM Customers;

//11. Get top 50% from the table
SELECT TOP 50 PERCENT * FROM Customers;

//12. In a column there will many duplicate values, inorder to get the unrepeated values use DISTINCT
//Get city(do not repeat) from customers table 
SELECT DISTINCT City FROM Customers;

//13. SQL Query to find second highest salary of Employee - NOT IN 
SELECT MAX(salary) from Employees WHERE salary NOT IN (SELECT MAX(salary) from Employees);

//14. SQL Query to find Max Salary from each department - GROUP BY
//you can also sort by ASC|DESC
SELECT deptID, MAX(salary) AS "Maximum Salary" FROM Employees GROUP BY department;
//If you need to print department name from different table using id
SELECT deptName, MAX(salary) AS "Maximum Salary" FROM Employees e RIGHT JOIN Department d ON d.dept_id = e.dept_id;

//15. Find an employee whose Salary is equal or greater than 10000
SELECT * FROM Employees WHERE salary >= 10000;

//16. Find the Employee names starting with Rama
SELECT * FROM Employees WHERE LIKE "Rama%";

//17. Find all the address - "80 Forest Manor" regardless of Upper, Lower or cases 
SELECT * FROM Employees WHERE UPPER(address) LIKE "80 FOREST MANOR";

//18. Find the students who got marks more than average marks of the class
SELECT * FROM Students WHERE marks > (SELECT AVG(marks) FROM Students);

//19. find all employees which are also manager
//You have given a standard employee table with an additional column mgr_id, which contains employee id of the manager.
//This is called Self Join - Join two instances of same table
SELECT e.name, m.name FROM Employees e, Employees m WHERE e.mgrId = m.empId; 

//20. Find duplicate rows in a database
//Use ROWID to find the id of the row
//Use the above Self Join differently 
SELECT * FROM Employees e WHERE rowid = (SELECT MAX(rowid) FROM Employees p WHERE p.emp_no = e.emp_no);
//And to delete them ^
DELETE FROM Employees e WHERE rowid != (SELECT MAX(rowid) FROM Employees p WHERE p.emp_no = e.emp_no);

