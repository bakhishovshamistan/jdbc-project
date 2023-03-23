select * from EMPLOYEES;

SELECT SUBSTR(FIRST_NAME,0,1)|| '.'||SUBSTR(LAST_NAME,0,1)|| '.' AS initials,
FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

create view EmployeeInfo as
SELECT SUBSTR(FIRST_NAME,0,1)|| '.'||SUBSTR(LAST_NAME,0,1)|| '.' AS initials,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

select * from EMPLOYEEINFO;

select initials from EMPLOYEEINFO;

DROP VIEW EMPLOYEEINFO;
