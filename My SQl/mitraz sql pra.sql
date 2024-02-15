show databases;
create database mitraz;
use mitraz;
create table custo(
id int not null,
name varchar(50) not null,
age int not null,
address char(25),
salary dec(18,2),
primary key(id));
create table player(
player varchar(50),
score int);
insert into player values('a',100),
('b',95),
('c',25),
('d',42);
insert into player values('b',121);
select * from player;
select * from player where score>=100 group by player;
select max(score) as 'max score' from player;
select min(score) as 'min score' from player;
select sum(score) as 'total score' from player;



create table chin(
id int not null,
name varchar(50) not null,
age int not null,
address char(25),
salary dec(18,2),
primary key(id));
desc custo;
insert into chin
values(1,'siva',21,'ktc',25000.00),
(2,'kavi',18,'atp',35000.00),
(3,'chinna',22,'ptp',2600.00),
(4,'ravi',20,'ktc',30000.00),
(5,'vishnu',19,'dmm',2500.00);
select * from  chin;
insert into custo(id,name,age,address,salary)
values(1,'siva',21,'ktc',25000.00),
(2,'kavi',18,'atp',35000.00),
(3,'chinna',22,'ptp',2600.00),
(4,'ravi',20,'ktc',30000.00),
(5,'vishnu',19,'dmm',2500.00);
select * from custo; 

create table salary as 
select id,salary
from custo;
select * from salary;
create table reminfo as
select name,age,address
from custo;
select * from custo;

select count(*) from reminfo;
CREATE TABLE BUYERS(
   id   INT              NOT NULL,
   name VARCHAR (20)     NOT NULL,
   age  INT              NOT NULL,
   address  CHAR (25) ,
   salary   DECIMAL (18, 2),
   primary key (id)
);
select * from BUYERS;
INSERT INTO BUYERS (id,name,age,address,salary) 
SELECT * FROM CUSTO;

select * from BUYERS;

show databases;
update custo set age=age+1,salary=salary+1000;
select * from custo;
# it is use to update the data
update custo
set address='ktm',age=15
where id=4;
select * from custo;
# it use change the table name 
alter table custo rename to new_custo;
select * from custo;
# it is also used to change the column name
alter table new_custo
rename to custo;
alter table custo
rename column age to p_age;
select * from custo;
alter table custo
add email varchar(50);
desc custo;
update custo
set email='siva@123'
where id=1;
select * from custo;
update custo
set email='kavi@123'
where id=2;
update custo
set email='chinna@123'
where id=3;
update custo
set email='ravi@123'
where id=4;
update custo
set email='vishnu@123'
where id=5;
select * from custo;
# alter table custo drop email;
# delete from custo;
# delete from custo where id=1;
# drop table custo;
# truncate table custo;
CREATE TABLE IF NOT EXISTS employ( 
	emp_id integer NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY, 
    name varchar(45) NOT NULL,    
    occupation varchar(35) NOT NULL,    
    working_date date,  
    working_hours varchar(10)  
);  
 -- inserting data
 INSERT INTO employ (name,occupation,working_date,working_hours)VALUES    
('Robin', 'Scientist', '2020-10-04', 12),  
('Warner', 'Engineer', '2020-10-04', 10),  
('Peter', 'Actor', '2020-10-04', 13),  
('Marco', 'Doctor', '2020-10-04', 14),  
('Brayden', 'Teacher', '2020-10-04', 12),  
('Antonio', 'Business', '2020-10-04', 11); 
select * from employ;
select * from employ limit 2;
select * from employ limit 5 offset 2;
select count(name) from employ;
select max(working_hours) from employ;
select avg(working_hours) from employ;
select * from employ order by working_hours desc;
select * from employ order by working_hours ;
select * from custo;
select * from custo having p_age=23;
select * from custo where p_age=23;
select * from custo order by salary;
select distinct p_age from custo order by p_age;
select p_age,salary,id,(p_age+salary+id) as sum_col from custo;
# 1 dec
# CHAR_LENGTH(), CHARACTER_LENGTH(), Length:
#This function is used to find the length of a word
select char_length('siva') as lenght_of_string;
select length('sai baba');
#CONCAT(): This function is used to add two words or strings.
select concat('siva',' is friend of ','chinna');
#CONCAT_WS(): This function is used to add two words or strings with a symbol as concatenating symbol.
select concat_ws('@','siva',' is friend of ','chinna');
#LCASE(), LOWER(): This functions is used to convert the given string into lower case.
select lcase('HELLO EVERYONE');
select lower('HELLO EVERYONE');
#UCASE(), UPPER(): This functions is used to make the string in upper case.
select ucase('hello everyone');
select upper('hello everyone');
#LTRIM(): This function is used to empty spaces present in left side from the original string.
SELECT length(LTRIM('   HELLO'));
#RTRIM(): This function is used to empty spaces present in right side from the original string.
SELECT length(RTRIM('HELLO   '));
#TRIM(): This function is used to empty spaces present in right side from the original string.
SELECT length(TRIM('   HELLO   '));
#LEFT(): This function is used to SELECT a sub string from the left of given size or character
select left('HELLO EVERYONE,HOW ARE YOU',10);
# RIGHT(): This function is used to SELECT a sub string from the right end of the given size.
select right('HELLO EVERYONE,HOW ARE YOU',10);
#LPAD(): This function is used to make the given string of the given size by adding the given symbol.
select lpad('sairam',9,'ome');
#RPAD(): This function is used to make the given string as long as the given size by adding the given symbol on the right.
select rpad('sairam',9,'ome');
ALTER USER root@localhost IDENTIFIED BY 'root@123'; 

SET PASSWORD FOR 'root'@'localhost' = password('jtp12345');  

SET PASSWORD FOR 'root'@'localhost' =  'jtp12345'; 
SET PASSWORD FOR 'peter'@'localhost' = jtp12345; 
 UPDATE user SET password = PASSWORD('jtp12345') WHERE user = 'peter' AND host = 'localhost'; 
  Select user from mysql.user; 
  SELECT user, host, account_locked, password_expired FROM user;
  select user();
  show databases;
  drop database new_schema;
