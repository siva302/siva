use mitraz;
create table emp3
(emp_id int,
first_name varchar(20),last_name varchar(20),
email varchar(30),phone_num varchar(30),hire_date date,
job_id varchar(30),salary int,
commision_pct int,manager_id int,
department_id int, primary key(emp_id));
desc emp3;
insert into emp3 values
(100,'steven','king','sking',5151234567,'1987-06-17','ad_pres',24000,0,0,90);
insert into emp3 values
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
select * from emp3;
-- 1.Write a query to find the name (first_name, last_name) of the employees who are managers.
select first_name,last_name from emp3
where emp_id in(select emp_id from emp3);
-- 2.Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
select first_name,last_name from emp3
where emp_id in (select emp_id from emp3 where job_id='ad_vp');
-- 3. Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name=’Diana’.
select first_name,last_name,salary from emp3
where salary > (select salary from emp3 where first_name='diana');
-- 4.Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.
select first_name,last_name,salary from emp3
where salary > (select avg(salary) from emp3);
-- 5.Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary of all departments.
select first_name,last_name,salary,department_id from emp3 
where salary > all(select avg(salary) from emp3 group by department_id);
-- 6. Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'IT-PROG). Sort the results of the salary of the lowest to highest.
select first_name,last_name,salary,job_id from emp3 
where salary >all(select salary from emp3 where job_id='it_prog' ) order by salary;


