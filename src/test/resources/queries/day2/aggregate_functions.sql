select * from EMPLOYEES;

/*
    Aggregate Functions - Multi Rows - Group Functions
    -count --> it will count rows
    -max--> max value
    -min--> min value
    -sum--> total value
    -avg--> it will give average value

    Aggregate functions takes multi row and return one result
    All of them ignore null values.

 */

 select * from DEPARTMENTS;
select COUNT(*) from DEPARTMENTS;

select COUNT(*) FROM LOCATIONS;

SELECT * FROM EMPLOYEES;

SELECT COUNT(DEPARTMENT_ID)
FROM EMPLOYEES;

SELECT COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES;

SELECT COUNT(*) FROM EMPLOYEES
WHERE JOB_ID IN('IT_PROG', 'SA_REP');

SELECT MAX(SALARY)
FROM EMPLOYEES;

SELECT MIN(SALARY)
FROM EMPLOYEES;

SELECT AVG(SALARY)
FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY),1) FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY),3) FROM EMPLOYEES;

SELECT SUM(SALARY) FROM EMPLOYEES;

