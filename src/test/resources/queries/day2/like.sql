--> Percent % --> for matching any seq of characters
--> underscore _ --> for matching any single character

select * from EMPLOYEES
where FIRST_NAME LIKE 'B%';

select * from  EMPLOYEES
where FIRST_NAME like 'B____';

select * from EMPLOYEES
where FIRST_NAME LIKE '__z__';

select * from EMPLOYEES
where FIRST_NAME like '%e';

select * from EMPLOYEES
where JOB_ID like '%IT%';

select * from EMPLOYEES
where FIRST_NAME like 'H%l';