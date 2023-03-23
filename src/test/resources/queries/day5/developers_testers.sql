select * from EMPLOYEES;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS;

create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);
select * from Testers;

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;
select * from TESTERS;

select * from DEVELOPERS
union
select * from TESTERS;

select NAMES from DEVELOPERS
union
select NAMES from TESTERS;

select NAMES from DEVELOPERS
union ALL
select NAMES from TESTERS;

--WRONG DATA TYPE EXAMPLE WILL NOT WORK
select ID_NUMBER, NAMES from DEVELOPERS
union all
select NAMES, SALARY from TESTERS;

/*
MINUS
 It removes same data from first table and gives result from first table
 */

 select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

select NAMES from TESTERS
minus
select NAMES from DEVELOPERS;

--INTERSECT
select Names from DEVELOPERS
intersect
select Names from TESTERS;

select FIRST_NAME from EMPLOYEES
where length(FIRST_NAME)=6;
