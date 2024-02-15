create database lms;
show databases;
create table book(
book_id int primary key,
b_name varchar(50),
author varchar(50),
price float(20,3),
copies int,
rem_copies int);
desc book;
create table member(
member_id int primary key,
m_name varchar(50),
m_add varchar(50),
phone char(10));
desc member;
create table issue(
issue_id int primary key,
issue_date date,
member_id int,
book_id int ,
copies int,
foreign key(member_id)references member(member_id),
foreign key(book_id)references book(book_id));
desc issue;
create table returns(
return_id int primary key,
return_date date,
member_id int,
book_id int ,
copies int,
foreign key(member_id)references member(member_id),
foreign key(book_id)references book(book_id));
desc returns;


