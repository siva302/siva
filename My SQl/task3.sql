
create database orders_2;
use orders_2;
create table order3(ord_no int,purch_amount float(20.2),ord_date date,cust_id int,salesman_id int);
select * from order3;
insert into order3
values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70005,2400.6,'2012-07-27',3007,5001),
(70007,948.5,'2012-09-10',3005,5002),
(70008,5760,'2012-09-10',3002,5001);
select*from order3;
#1.Write a SQL query to find details of all orders excluding those with ord_date equal to '2012-09-10' and salesman_id higher than 5005 or purch_amt greater than 1000.Return ord_no, purch_amt, ord_date, customer_id and salesman_id. 
select * from order3 where ord_date ='2012-09-10' and salesman_id >5005 or purch_amount >1000 ;
#2.Write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select * from order3 where purch_amount < 200 or ord_date >='2012-02-10' and cust_id <3009;
#3Write a SQL query to find all orders that meet the following conditions. Exclude combinations of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000
select * from order3 where not ord_date ='2012-08-17' or cust_id >3005 and purch_amount <1000;
#4.Write a SQL query that displays order number, purchase amount, and the achieved and unachieved percentage (%) for those orders that exceed 50% of the target value of 6000.  
SELECT ord_no,purch_amount, 
(100*purch_amount)/6000 AS "Achieved %", 
(100*(6000-purch_amount)/6000) AS "Unachieved %" 
FROM  order3 
WHERE (100*purch_amount)/6000>50;
