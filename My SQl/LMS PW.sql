show databases;
create database lms_db;
use lms_db;
show databases;
create table book(
book_id int primary key,
b_name varchar(50),
author varchar(50),
price float(20,3),
copies int,
rem_copie int);
create table book_status(
book_id int primary key,
b_name varchar(50),
author varchar(50),
price float(20,3),
copies int,
rem_copie int);
desc book;
select * from book;
desc book;
delete from book where b_name='mysql';
 select b_name from book where b_name like 'S%';
set foreign_key_checks=0;

set foreign_key_checks=1;
create table member(
member_id int primary key,
m_name varchar(50),
m_add varchar(50),
phone char(10));
desc member;
select * from member;
DELETE FROM member WHERE m_name ='ravi';
create table issue(
issue_id int primary key,
issue_date date,
member_id int,
book_id int ,
copie int,
foreign key(member_id)references member(member_id),
foreign key(book_id)references book(book_id));
desc issue;
select * from issue;
create table returns(
return_id int primary key,
return_date date,
member_id int,
book_id int ,
copies int,
foreign key(member_id)references member(member_id),
foreign key(book_id)references book(book_id));
desc returns;
select * from returns;
select b_name,max(copie) from book inner join issue on book.book_id=issue.issue_id;



