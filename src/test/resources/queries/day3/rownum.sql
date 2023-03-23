select * from EMPLOYEES;

select * from EMPLOYEES
where ROWNUM < 11;

-->Bad Practice: not correct list for first 5 highest salary
select *
from EMPLOYEES
where ROWNUM<=5
order by SALARY desc;


select * from EMPLOYEES order by SALARY desc;
--> Good Practice
select *
from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM<6;


select  distinct SALARY from EMPLOYEES order by SALARY desc;

select SALARY
from (select  distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

select min(SALARY) from (select SALARY
from (select  distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6);

select * from EMPLOYEES
where SALARY=(select min(SALARY) from (select SALARY
                                       from (select  distinct SALARY from EMPLOYEES order by SALARY desc)
                                       where ROWNUM<6));

select SALARY from EMPLOYEES
where ROWNUM<38
order by SALARY desc ;

select min(SALARY)
from (select SALARY from EMPLOYEES
      where ROWNUM<38
      order by SALARY desc );

select * from EMPLOYEES
where SALARY =(select min(SALARY)
               from (select distinct SALARY from EMPLOYEES order by SALARY DESC)
                     where ROWNUM<38 );

select * from EMPLOYEES
where SALARY =(select min(SALARY)
               from (select distinct SALARY from EMPLOYEES order by SALARY DESC)
               where ROWNUM<4 );




