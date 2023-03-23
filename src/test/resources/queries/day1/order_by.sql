select * from EMPLOYEES;

select * from EMPLOYEES
order by SALARY; -- by default it is ASC

select * from EMPLOYEES
order by FIRST_NAME desc ;

select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by SALARY desc ;

select * from EMPLOYEES
order by FIRST_NAME asc, LAST_NAME DESC ;


