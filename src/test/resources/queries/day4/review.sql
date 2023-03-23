select * from EMPLOYEES;


select distinct SALARY from EMPLOYEES order by SALARY asc;

select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<4;

select max(SALARY)
from (select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
      where ROWNUM<4);

select * from EMPLOYEES
where SALARY=(select max(SALARY)
              from (select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
                    where ROWNUM<4));

select * from EMPLOYEES
where SALARY=(select max(SALARY)
              from (select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
                    where ROWNUM<47));
