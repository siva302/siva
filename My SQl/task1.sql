use task;
#1 Write a SQL statement to create a simple table Employee_info set a constraint primary key to employee_id and NOT null to remaining columns.
create table emp1
(emp_id int,
first_name varchar(20),last_name varchar(20),
email varchar(30),phone_num varchar(30),hire_date date,
job_id varchar(30),salary int,
commision_pct int,manager_id int,
department_id int, primary key(emp_id));
desc emp1;
insert into emp1 values
(100,'steven','king','sking',5151234567,'1987-06-17','ad_pres',24000,0,0,90);
insert into emp1 values
(101,'Neena','Kocchar','Nikochar',5151234568,'1987-06-17','ad_vp',17000,0,100,90),
(102,'Lex','De Haan','Ledhaan',5151234569,'1987-06-19','ad_vp',17000,0,100,90),
(103,'Alexander','Hunold','ahunold',5904234567,'1987-06-20','It_prog',9000,0,102,60),
(104,'Bruce','ernst','bernst',5904234568,'1987-06-21','it_prog',6000,0,103,60),
(105,'david','Austin','daustin',5904234569,'1987-06-22','it_prog',4800,0,103,60),
(106,'valli','pataballa','vpatabal',5904234560,'1987-06-23','it_prog',4800,0,103,60),
(107,'Diana','Lorentz','dlorentz',5904235567,'1987-06-24','it_prog',4200,0,103,60),
(108,'nancy','greenberg','ngrrenbe',5151244569,'1987-06-25','fi_mgr',12000,0,101,100),
(109,'daniel','faviet','dfaviet',5151244169,'1987-06-26','fi_account',9000,0,108,100),
(110,'John','Chen','jchen',5151244269,'1987-06-27','fi_account',8200,0,108,100);
select * from emp1;
# 2. select firstname and lastname(use distinct)#
#select first_name "firstname",last_name "lastname" from emp1;
create table name_table as
select first_name,last_name
from emp1;
select * from name_table;
#3write a query to get unique department id from employee table(hint:use distinct)#
select distinct department_id from emp1;
#4.write a query to get all employee details from employee table order by first name descending?
select * from emp1 order by first_name desc;
#5.write a query to get the names(first_name,last_name),salary,pf of all the employees(pf is calculated as 15% of salary)?
select first_name,last_name,salary, salary*0.15 as "pf amount "from emp1;
#6.write a query to get the employee id,names(first_name,last_name),salary in ascending order of the salary?
select emp_id, first_name,last_name,salary from emp1 order by salary;
#7.write a query to find total payable salaries for employes?
select sum(salary) as 'total salary' from emp1;
#8.write a query to find minimum and maximum salary from emp table?
select min(salary) as 'min salary' from emp1;
select max(salary) as 'max salary' from emp1;
#9.write a query to get number employees woring in the company?
select count(*) as 'no.of employs' from emp1;
#10.write a query to get no of jobs available in the comapany?
select count(job_id) from emp1;
#11.write a query to get all first name from employee table in upper case?
select upper(first_name) as "upper text" from emp1;
#12. write a query to select first 10 records from a table?
select * from emp1 limit 10;
#12.write aquery to get the average salary and number of employees in the  employees table?
select avg(salary),avg(emp_id) from emp1;

