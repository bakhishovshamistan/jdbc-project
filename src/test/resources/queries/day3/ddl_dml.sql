select * from EMPLOYEES;

create TABLE  scrumteam(
    emp_id Integer PRIMARY KEY,
    first_name varchar(30)  not null,
    last_name varchar(20) not null,
    job_title varchar(20),
    salary Integer
);

select * from scrumteam;

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (1,'Shami', 'Bakhishov', 'SDET', 130000);

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (2,'Sam', 'Johnson', 'SDET', 120000);

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (3,'Janson', 'Turc', 'QA', 110000);

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (4,'Aloha', 'Hawaii', 'Tester', 90000);

--save changes with "commit;" so that other people can get the updates
commit;

select * from scrumteam;

update scrumteam
set salary= salary+5000;

update scrumteam
set salary=110000, job_title='QA Engineer'
where emp_id=3;

commit work;

delete from scrumteam
where emp_id=4;

commit;

alter table scrumteam add gender varchar(10);

select * from Agile_Team;

update scrumteam
set gender = 'Male'
where emp_id=1;

ALTER table scrumteam rename column salary to annual_salary;

alter table scrumteam drop column gender;

alter table scrumteam rename to Agile_Team;

TRUNCATE TABLE AGILE_TEAM;

drop table AGILE_TEAM;

commit;

/*
    IQ--> what is the difference between Truncate and Drop?
    Truncate: deletes table content but not table
    Drop: deletes table content and table itself
 */