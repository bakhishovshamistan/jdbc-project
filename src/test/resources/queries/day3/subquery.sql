select * from EMPLOYEES;

select max(SALARY) from EMPLOYEES;

select *
from EMPLOYEES
where SALARY = 24000;

select *
from EMPLOYEES
where SALARY =(select max(SALARY) from EMPLOYEES);


select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);


select max(SALARY)
from EMPLOYEES
where SALARY !=(select max(SALARY) from EMPLOYEES) ;

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY !=(select max(SALARY) from EMPLOYEES));

select round(avg(SALARY),1)
from EMPLOYEES;

select *
from EMPLOYEES
where SALARY > (select round(avg(SALARY),1)
                from EMPLOYEES);



