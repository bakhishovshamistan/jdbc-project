---> aliases_string_manipulation

/*
 1. Column alieases --> it is temp name to show in display
 2. Table alieases --> learn later

 */

select DEPARTMENT_ID, ROUND(AVG(SALARY)) As "AVG SALARY"
from EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
group by DEPARTMENT_ID
having AVG(SALARY) > 6000
ORDER BY 2;

select DEPARTMENT_ID, ROUND(AVG(SALARY)) As Average_SALARY
from EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
group by DEPARTMENT_ID
having AVG(SALARY) > 6000
ORDER BY 2;


select FIRST_NAME, SALARY*12 as "annual_salary"
from EMPLOYEES;
--NOTE --> aliases-> display purposes only, nothing to change in DB

-------------------------------------------------------------------------

select FIRST_NAME|| ' ' ||LAST_NAME as fullname
from EMPLOYEES;

SELECT EMAIL|| '@CYDEO.COM'
FROM EMPLOYEES;

SELECT CONCAT(EMAIL, '@cydeo.com') from EMPLOYEES;

SELECT lower(EMAIL|| '@cydeo.com') from EMPLOYEES;

SELECT upper(EMAIL|| '@cydeo.com') from EMPLOYEES;

SELECT INITCAP(EMAIL|| '@cydeo.com') from EMPLOYEES;

--> COUNTING NUMBER OF CHARACTER
SELECT EMAIL, LENGTH(EMAIL) AS EMAIL_LENGTH FROM EMPLOYEES;

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) = 6;

SELECT FIRST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE '______';

SELECT COUNT(*) FROM EMPLOYEES
WHERE FIRST_NAME LIKE '______';

SELECT * FROM  EMPLOYEES;
SELECT SUBSTR(FIRST_NAME,0,1)|| '.'||SUBSTR(LAST_NAME,0,1)|| '.' AS initials from EMPLOYEES;

SELECT SUBSTR(FIRST_NAME,1,1)|| '.'||SUBSTR(LAST_NAME,1,1)|| '.' AS initials from EMPLOYEES;

--> minus(-) will start from the end
select FIRST_NAME, substr(FIRST_NAME,-2,2) from EMPLOYEES;

select FIRST_NAME, substr(FIRST_NAME,-3) from EMPLOYEES;

/*
    -if beginning index is 0, it is treated as 1
    -if the beginning index negative, it will start from backwards
    -if we do not specify number of char it will work till the end
 */