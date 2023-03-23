select FIRST_NAME, LAST_NAME, SALARY
    from EMPLOYEES;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY>5000;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY BETWEEN 6000 AND 7000;

SELECT REGION_ID
FROM COUNTRIES;

SELECT SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'Douglas' and LAST_NAME = 'Grant';

select * from DEPARTMENTS
where DEPARTMENT_NAME in ('IT', 'Public Relations', 'Sales', 'Executive');


select max(SALARY) from EMPLOYEES;

select min(SALARY) from EMPLOYEES;

select round(avg(SALARY),1) from EMPLOYEES;

select count(DEPARTMENT_NAME)
from DEPARTMENTS;

select *
from JOB_HISTORY
order by START_DATE asc;

select *
from JOB_HISTORY
order by START_DATE desc;

select * from EMPLOYEES
where LAST_NAME like '%a%a';

select * from EMPLOYEES
where FIRST_NAME like 'A%';

select * from EMPLOYEES
where JOB_ID like 'IT%';

select * from EMPLOYEES
where JOB_ID like '%CLERK';

select * from EMPLOYEES
where FIRST_NAME like 'A___';

select * from EMPLOYEES
where DEPARTMENT_ID in (50, 80, 100);

select * from EMPLOYEES
where DEPARTMENT_ID not in (90, 60, 100, 130, 120);

select JOB_ID, max(SALARY)
from EMPLOYEES
group by  JOB_ID;

select JOB_ID, min(SALARY)
from EMPLOYEES
group by  JOB_ID;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by  JOB_ID;

select JOB_ID, count(*)
from EMPLOYEES
where SALARY >= 5000
group by  JOB_ID;

select JOB_ID, sum(SALARY)
from EMPLOYEES
group by  JOB_ID;

select JOB_ID, avg(SALARY)
from EMPLOYEES
where JOB_ID in('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP')
group by JOB_ID;

select job_id, avg(salary) as "average salary"
from employees
group by job_id
having job_id IN ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

select DEPARTMENT_ID, max(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID;

select DEPARTMENT_ID, sum(SALARY) from EMPLOYEES
group by DEPARTMENT_ID
having sum(SALARY)>30000 and DEPARTMENT_ID != 50;

