create database salesman_d;
use salesman_d;
 create table salesman( Salesman_ID int primary key, Name varchar(30),
 City varchar(15), Commission decimal(5.2));
 create table customer( Customer_ID int primary key, Cust_Name varchar(30),
 City varchar(15), Grade int, Salesman_ID int);
 create table orders( Ord_NO int primary key, Purch_Amt decimal(8.2), 
 Ord_Date date, Customer_ID int, Salesman_ID int,
 foreign key(Customer_ID) references customer(customer_id), 
 foreign key(salesman_ID) references salesman(salesman_id));
 insert into salesman values (5001,'James Hoog','New York',0.15),
 (5002,'Nail Knite','Paris',0.13),
 (5005,'Pit Alex','London',0.11),
 (5006,'Mc Lyon','Paris',0.14), 
 (5003,'Lauson Hen','San Jose',0.12);
 select * from salesman;
 insert into customer values (3002,'Nick Rimando','New York',100,5001),
 (3005,'Graham Zusi','California',200,5002),
 (3001,'Brad Guzan','London',100,5005),
 (3004,'Fabian Johns','Paris',300,5006), 
 (3007,'Brad Davis','New York',200,5001),
 (3009,'Geoff Camero','Berlin',100,5003), 
 (3008,'Julian Green','London',300,5002),
 (3003,'Jozy Altidor','Moncow',200,5007);
 select * from customer;
 insert into orders values (70001,150.5,'2012-10-05',3005,5002),
 (70009,270.65,'2012-09-10',3001,5005),
 (70002,65.26,'2012-10-05',3002,5001), 
 (70004,110.5,'2012-08-17',3009,5003),
 (70007,948.5,'2012-09-10',3005,5002), 
 (70005,2400.6,'2012-07-27',3007,5001), 
 (70008,5760.0,'2012-09-10',3002,5001);
 select * from orders;
 -- 1 .From the Orders table, create a view to count the number of unique customers, compute the average and the total purchase amount of customer orders by each date.
 Create view order1
 as select ord_date, count(distinct customer_id),
 AVG(purch_amt), SUM(purch_amt)
 FROM orders
 GROUP BY ord_date;
 select * from order1;
 -- 2.Create a view to get the salesperson and customer by name. Return order name, purchase amount, salesperson ID, name, customer name.
CREATE VIEW nameorders
AS SELECT ord_no, purch_amt, a.salesman_id, name, cust_name
FROM orders a, customer b, salesman c
WHERE a.customer_id = b.customer_id
AND a.salesman_id = c.salesman_id;
select * from nameorders;

-- 3 From the salesman and orders tables, create a view to find the salesperson who handles a customer who makes the highest order of the day. Return order date, salesperson ID, name
CREATE VIEW elitsalesman
AS SELECT b.Ord_Date, a.Salesman_ID, a.Name
FROM salesman a, orders b
WHERE a.Salesman_ID = b.Salesman_ID
AND b.Purch_Amt =
    (SELECT MAX(Purch_Amt)
       FROM orders c
       WHERE c.Ord_Date = b.Ord_Date);
	select * from elitsalesman;

-- 4
CREATE VIEW highgrade
  AS SELECT *
  FROM Customer
  WHERE Grade =
    (SELECT max(Grade)
     FROM Customer);
     select * from highgrade;
	-- 5
CREATE VIEW norders
AS SELECT name, AVG(purch_amt), SUM(purch_amt)
FROM salesman, orders
WHERE salesman.salesman_id = orders.salesman_id
GROUP BY name;
select * from norders;






