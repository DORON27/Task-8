CREATE DATABASE companyxy;
use companyxy;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (emp_name, department, salary) VALUES
('Amit', 'HR', 40000),
('Priya', 'Finance', 55000),
('Ravi', 'IT', 60000),
('Neha', 'IT', 65000),
('Karan', 'HR', 45000);

DELIMITER //

CREATE PROCEDURE GetEmployeesByDeptName (IN deptname VARCHAR(50))
BEGIN
    SELECT emp_name, salary
    FROM employees
    WHERE department = deptname;
END //

DELIMITER ;

-- And for the function:
DELIMITER //

CREATE FUNCTION Calculatebonus (salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE bonus DECIMAL(10,2);
    SET bonus = salary * 0.10;
    RETURN bonus;
END //

DELIMITER ;

CALL GetEmployeesByDeptName('IT');-- for procedure

SELECT emp_name, salary, Calculatebonus(salary)-- for function 
AS Bonus
FROM employees;