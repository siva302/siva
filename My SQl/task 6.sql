use mitraz;
use mitraz;
show tables;
create table empt(
emp_id int primary key,
first_name varchar(50),
last_name varchar(50),
salary int,
joining_date datetime,
dept varchar(50));
desc emp;
insert into empt 
(emp_id,first_name,last_name,salary,joining_date,dept)
values
(1,'anika','arora',10000,'2020-02-14 09:00:00','hr'),
(2,'veena','verma',80000,'2011-06-15 09:00:00','admin'),
(3,'vishal','singhal',30000,'2020-02-16 09:00:00','hr'),
(4,'sushanth','singh',500000,'2020-02-17 09:00:00','admin'),
(5,'bhupal','bhati',500000,'2011-06-18 09:00:00','admin'),
(6,'deeraj','diwan',20000,'2011-06-19 09:00:00','account'),
(7,'karan','kumar',75000,'2020-01-14 09:00:00','account'),
(8,'chandrika','chauhan',90000,'2011-04-15 09:00:00','admin');
select * from empt;
create table emp_bon(
empb_id int primary key,
bon_amount int,
bon_date datetime,
emp_ref_id int,
foreign key(emp_ref_id) references empt (emp_id));
desc emp_bon;
insert into emp_bon
values(1,5000,'2020-02-16 0:00:00',1),
(2,3000,'2011-06-16 0:00:00',2),
(3,4000,'2020-02-16 0:00:00',3),
(4,4500,'2020-02-16 0:00:00',1),
(5,3500,'2011-06-16 0:00:00',2);
select * from emp_bon;
create table emp_tit(
empt_id int primary key,
emp_t varchar(50),
bon_date datetime,
emp_ref_id int,
foreign key(emp_ref_id) references empt (emp_id));
insert into emp_tit
values(1,'manager','2016-02-20 0:00:00',1),
(2,'executive','2016-06-11 0:00:00',2),
(3,'executive','2016-06-11 0:00:00',8),
(4,'manager','2016-06-11 0:00:00',5),
(5,'asst manager','2016-02-20 0:00:00',4),
(6,'executive','2016-06-11 0:00:00',7),
(7,'lead','2016-06-11 0:00:00',6),
(8,'lead','2016-06-11 0:00:00',3);
select * from emp_tit;
-- > 1 Display the “FIRST_NAME” from Employee table using the alias name as Employee_name.
select first_name ,first_name as employee_name from empt;
select * from empt;
-- >2 Display "last_name" from employee table in uppercase
select upper(last_name) from empt;
-- >3 Display unique values of department from employee table
select distinct(dept) from empt;
-- >4
select left(last_name,3) from empt;
-- >5
select count(distinct(dept)) from empt;
-- >6
select concat_ws(' ',first_name , last_name) fullname from empt;
-- >7
select* from empt order by first_name;
-- >8
select* from empt order by first_name;
select* from empt order by first_name desc;
-- >9
select * from empt where first_name='veena' or first_name='karan';
-- >10
select* from empt where dept='admin';
-- >11
select* from empt  where first_name like '%v%';
-- >12
select* from empt where salary between 100000 and 500000;
-- >13
select* from empt where joining_date like '2020-02%'; 
-- 14
select* from empt where salary>=50000 and salary<=100000;
-- 16
select * from emp_tit where emp_t='manager';
-- 17
SELECT *FROM empt WHERE (joining_date) IN (
    SELECT joining_date
    FROM empt
    GROUP BY joining_date
    HAVING COUNT(*) > 1
);
-- 18
select * from empt where mod(emp_id,2)<>0;
-- 19
create table emp_new1 select * from empt;
select * from emp_new1;
-- 20
select * from empt order by salary desc limit 2 ;
-- 21
select *FROM empt WHERE (salary) IN (
    SELECT salary
    FROM empt
    GROUP BY salary
    HAVING COUNT(*) > 1
);
-- 22 
select * from empt order by salary desc limit 1 offset 1 ;
-- 23
SELECT *
FROM empt
ORDER BY emp_id
LIMIT (SELECT COUNT(*) / 2 FROM empt);
-- 24
SELECT Dept, COUNT(*) as 'Employee_Count'
FROM empt
GROUP BY Dept
having Employee_Count <4 ;

-- 25
SELECT Dept, COUNT(*) as 'Employee Count'
FROM empt
GROUP BY Dept;
-- 26
SELECT dept,max(salary) as 'Employee Count'
FROM empt
GROUP BY dept;
-- 27
SELECT first_name,last_name,max(salary) as 'Employee Count'
FROM empt
GROUP BY dept;
SELECT first_name,last_name,max(salary) as 'max salary'
FROM empt;
-- 28
SELECT dept,avg(salary) as 'avg salary'
FROM empt
GROUP BY dept;
-- 29
SELECT *,max(bon_amount) as 'max bonus'
FROM emp_bon;
-- 30
select first_name
from empt inner join emp_tit
on empt.emp_id=emp_tit.emp_ref_id;

















