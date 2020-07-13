
------------------------------------------------     ASSIGMENT NUMBER 02    ---------------------------------------------------------------


-- QUESTION 01
--Because of budget issues, the HR department needs a report that displays the last name and salary of employees who earn more than $12,000. 

SELECT LAST_NAME,SALARY FROM HR.EMPLOYEES 
WHERE SALARY >12000;



-- QUESTION 02
-- Create a report that displays the last name and department number for employee 176. 

SELECT LAST_NAME,DEPARTMENT_ID FROM HR.EMPLOYEES 
WHERE EMPLOYEE_ID=176;



-- QUESTION 03
-- The HR department needs to find high-salary and low-salary employees. Write a query to display the last name and salary for any employee whose salary is not in the $5,000–$12,000 range.


SELECT LAST_NAME,SALARY FROM HR.EMPLOYEES 
WHERE SALARY<5000 OR SALARY> 12000 ;



-- QUESTION 04
-- Create a report to display the last name, job ID, and start date for the employees whose last names are Matos and Taylor. Order the query in ascending order by start date. 

SELECT LAST_NAME,JOB_ID,HIRE_DATE  
FROM HR.EMPLOYEES 
WHERE LAST_NAME='Matos' OR LAST_NAME='Taylor' 
ORDER BY HIRE_DATE;




-- QUESTION 05
-- Display the last name and department number of all employees in departments 20 or 50 in ascending alphabetical order by name

SELECT LAST_NAME,DEPARTMENT_ID 
FROM HR.EMPLOYEES 
WHERE DEPARTMENT_ID=20 OR DEPARTMENT_ID=50 
ORDER BY LAST_NAME;



-- QUESTION 06
-- Write a queryto display the last name and salary of employees who earn between $5,000 and $12,000, and are in department 20 or 50. Label the columns Employee and Monthly Salary, respectively

SELECT LAST_NAME AS EMPLOYEE,SALARY AS "MONTHLY SALARY"
FROM HR.EMPLOYEES 
WHERE SALARY BETWEEN 5000 AND 12000 AND (DEPARTMENT_ID=20 OR DEPARTMENT_ID=50);



-- QUESTION 07
-- The HR department needs a report that displays the last name and hire date for all employees who were hired in 1994.

CREATE TABLE EMPLOYEE AS SELECT * FROM HR.EMPLOYEES ;
  
UPDATE EMPLOYEE  
SET HIRE_DATE='07-JUN-94' 
WHERE LAST_NAME='Higgins' or LAST_NAME='Gietz';

SELECT LAST_NAME, HIRE_DATE  
FROM EMPLOYEE 
WHERE HIRE_DATE LIKE'%94';



-- QUESTION 08
-- Create a report to display the last name and job title of all employees who do not have a manager

SELECT LAST_NAME,JOB_ID 
FROM HR.EMPLOYEES 
WHERE MANAGER_ID IS NULL;




-- QUESTION 09
--Create a report to display the last name, salary, and commission of all employees who earn commissions. Sort the data in descending order of salary and commissions.

SELECT LAST_NAME,SALARY,COMMISSION_PCT  
FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL 
ORDER BY SALARY DESC ,COMMISSION_PCT;



-- QUESTION 10
--The HR department wants to run reports based on a manager. Create a query for the following managers and generates the employee ID, last name, salary, and department for that manager’s employees.
-- The HR department wants the ability to sort the report on a selected column. You can test the data with the following values:

SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID,MANAGER_ID 
FROM HR.EMPLOYEES 
WHERE MANAGER_ID=103 
ORDER BY LAST_NAME;

SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID,MANAGER_ID 
FROM HR.EMPLOYEES 
WHERE MANAGER_ID=201 
ORDER BY SALARY;

SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID,MANAGER_ID 
FROM HR.EMPLOYEES 
WHERE MANAGER_ID=124 
ORDER BY EMPLOYEE_ID;




-- QUESTION 11
-- Display all employee last names in which the third letter of the name is “a.”

SELECT LAST_NAME 
FROM HR.EMPLOYEES 
WHERE LAST_NAME LIKE '__a%';



-- QUESTION 12
-- Display the last names of all employees who have both an a and an e in their last name

SELECT LAST_NAME 
FROM HR.EMPLOYEES 
WHERE LAST_NAME LIKE '%a%e%';



-- QUESTION 13
--Display the last name, job, and salary for all employees whose jobs are either that of a sales representative or a stock clerk, and whose salaries are not equal to $2,500, $3,500, or $7,000

SELECT LAST_NAME,JOB_ID,SALARY 
FROM HR.EMPLOYEES 
WHERE JOB_ID='SA_REP' OR JOB_ID='ST_CLERK' AND SALARY NOT IN (2500,3500,7000);




-- QUESTION 14
-- Create a query to display the last name, salary, and commission for all employees whose commission amount is 20%.  

SELECT LAST_NAME,SALARY,COMMISSION_PCT 
FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT = 0.2;