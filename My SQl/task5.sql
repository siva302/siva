use mitraz;
show tables;
create table emp1(
emp_id int primary key,
first_name varchar(50),
last_name varchar(50),
salary int,
joining_date datetime,
dept varchar(50));
desc emp;
insert into emp1 
(emp_id,first_name,last_name,salary,joining_date,dept)
values
(1,'anika','arora',10000,'2020-02-14 09:00:00','hr'),
(2,'veena','verma',80000,'2011-06-15 09:00:00','admin'),
(3,'vishal','singhal',30000,'2020-02-16 09:00:00','hr'),
(4,'sushanth','singh',50000,'2020-02-17 09:00:00','admin'),
(5,'bhupal','bhati',500000,'2011-06-19 09:00:00','admin'),
(6,'deeraj','diwan',20000,'2011-06-19 09:00:00','account'),
(7,'karan','kumar',75000,'2020-01-14 09:00:00','account'),
(8,'chandrika','chauhan',90000,'2011-04-15 09:00:00','admin');
select * from emp1;
create table emp_bonus(
empb_id int primary key,
bon_amount int,
bon_date datetime,
emp_ref_id int,
foreign key(emp_ref_id) references emp1 (emp_id));
desc emp_bonus;
insert into emp_bonus
values(1,5000,'2020-02-16 0:00:00',1),
(2,3000,'2011-06-16 0:00:00',2),
(3,4000,'2020-02-16 0:00:00',3),
(4,4500,'2020-02-16 0:00:00',1),
(5,3500,'2011-06-16 0:00:00',2);
select * from emp_bonus;
create table emp_title(
empt_id int primary key,
emp_t varchar(50),
bon_date datetime,
emp_ref_id int,
foreign key(emp_ref_id) references emp1 (emp_id));
insert into emp_title
values(1,'manager','2016-02-20 0:00:00',1),
(2,'executive','2016-06-11 0:00:00',2),
(3,'executive','2016-06-11 0:00:00',8),
(4,'manager','2016-06-11 0:00:00',5),
(5,'asst manager','2016-02-20 0:00:00',4),
(6,'executive','2016-06-11 0:00:00',7),
(7,'lead','2016-06-11 0:00:00',6),
(8,'lead','2016-06-11 0:00:00',3);
select * from emp_title;
-- > 1 Display the “FIRST_NAME” from Employee table using the alias name as Employee_name.
select first_name ,first_name as employee_name from emp1;
select * from emp1;
-- >2
select upper(last_name) from emp1;
-- >3
select distinct(dept) from emp1;
-- >4
select left(last_name,3) from emp1;
-- >5
select count(distinct(dept)) from emp1;
-- >6
select concat_ws(' ',first_name , last_name) fullname from emp1;
-- >7
select* from emp1 order by first_name;
-- >8
select* from emp1 order by first_name;
select* from emp1 order by first_name desc;
-- >9
select * from emp1 where first_name='veena' or first_name='karan';
-- >10
select* from emp1 where dept='admin';
-- >11
select* from emp1  where first_name like '%v%';
-- >12
select* from emp1 where salary between 100000 and 500000;
-- >13
select* from emp1 where joining_date 



