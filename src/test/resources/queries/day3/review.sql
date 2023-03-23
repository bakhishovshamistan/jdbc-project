select * from EMPLOYEES;

select COUNTRY_ID, count(*) as Locations
from LOCATIONS
group by COUNTRY_ID;

select COUNTRY_ID, count(*) as Locations
from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID asc;

select COUNTRY_ID, count(*) as Locations
from LOCATIONS
where COUNTRY_ID in('US', 'UK', 'CA')
group by COUNTRY_ID
order by COUNTRY_ID asc;

select COUNTRY_ID, count(*) as Locations
from LOCATIONS
where COUNTRY_ID in('US', 'UK', 'CA')
having count(*) >2
group by COUNTRY_ID
order by COUNTRY_ID desc;

select COUNTRY_ID, count(*) as Locations
from LOCATIONS
having count(*) >2
group by COUNTRY_ID
order by COUNTRY_ID asc;

select FIRST_NAME||' makes $' ||SALARY as "Employees_salary"
from EMPLOYEES;

