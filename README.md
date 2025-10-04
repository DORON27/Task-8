# Task 8 – Stored Procedures and Functions

##  Objective
Learn to modularize SQL logic using *stored procedures* and *functions*.

##  Concept Overview
- *Stored Procedure:* A reusable SQL block that can perform multiple operations.
- *Function:* A reusable SQL expression that returns a single value.

---

## Tools Used
- MySQLWorkbench

---

##  Procedure Description
*Name:* GetEmployeesByDept  
*Purpose:* Returns a list of employees from a specific department.  
*Input Parameter:* deptName – Department name (e.g., 'IT')  
```sql
CALL GetEmployeesByDept('IT');
```

---

## Function Description
*Name:* CalculateBonus
*Purpose:* Calculate 10% yearly bonus based on salary.
*Input Parameter:* salary-Employeesalary
*Returns:* Bonus amount
```sql
SELECT emp_name, salary, Calculatebonus(salary)-- for function 
AS Bonus
FROM employees;
```
