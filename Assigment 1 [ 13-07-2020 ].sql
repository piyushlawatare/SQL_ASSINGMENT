
------------------------------------------------     ASSIGMENT NUMBER 01   ---------------------------------------------------------------


-- QUESTION 01
-- The following SELECT statement executes successfully 

SELECT LAST_NAME,JOB_ID,SALARY AS SAL 
FROM HR.EMPLOYEES;


-- QUESTION 02
-- The following SELECT statement executes successfully. 

CREATE TABLE JOB_GRADES AS SELECT * FROM HR.JOBS;

SELECT * FROM JOB_GRADES;



-- QUESTION 03
-- There are four coding errors in the following statement. Can you identify them?


SELECT EMPLOYEE_ID ,LAST_NAME, SALARY*12 AS ANNUALSALARY 
FROM HR.EMPLOYEES;



-- QUESTION 04
-- You have been hired as a sql programmer for ABC corporation. Your first task is to create some reports based on the data from the human resources tables
-- Your first task is to determine the structure of the DEPARTMENTS table and its contents. 
 
DESCRIBE HR.DEPARTMENTS;

SELECT * FROM HR.DEPARTMENTS;



-- QUESTION 05
-- You need to determine the structure of the EMPLOYEES table. The HR department wants a query to display the last name, job code, hire date, and employee number for each employee
--, with the employee number appearing first. Provide an alias STARTDATE for the HIRE_DATE column. Save your SQL statement to a file named so that you can dispatch this file to the HR department. 

DESCRIBE HR.EMPLOYEES;

SELECT  EMPLOYEE_ID-100 AS EMPLOYEE_NUMBER, 
LAST_NAME,JOB_ID, HIRE_DATE AS STARTDATE 
FROM HR.EMPLOYEES;


-- QUESTION 06
-- The HR department needs a query to display all unique job codes from the EMPLOYEES table.

SELECT DISTINCT JOB_ID FROM HR.EMPLOYEES;


-- QUESTION 07
-- The HR department wants more descriptive column headings for its report on employees. Name the column headings Emp #, Employee, Job, and Hire Date, respectively. Then run your query again

SELECT EMPLOYEE_ID AS EMP#, 
FIRST_NAME AS EMPLOYEE, 
JOB_ID AS JOB, 
HIRE_DATE AS HIREDATE 
FROM HR.EMPLOYEES ;



-- QUESTION 08
-- The HR department has requested a report of all employees and their job IDs. Display the last name concatenated with the job ID and name the column Employee and Title.

SELECT LAST_NAME||','||JOB_ID AS "Employee and Title" FROM HR.EMPLOYEES;




-- QUESTION 09
-- To familiarize yourself with the data in the EMPLOYEES table, create a query to display all the data from that table. Separate each column output with a comma. Name the column THE_OUTPUT.

SELECT EMPLOYEE_ID||','||FIRST_NAME||','||LAST_NAME||','||EMAIL||','||PHONE_NUMBER||','||HIRE_DATE||','||JOB_ID||','||SALARY||','||COMMISSION_PCT||','||MANAGER_ID||','||DEPARTMENT_ID  
AS "The Output" FROM HR.EMPLOYEES;
