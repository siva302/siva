use task;
create table cus_table(
cust_id int primary key,
cust_name varchar(50),
city varchar(50),
grade int,
salesman_id int);
desc cus_table;
insert into cus_table(cust_id,cust_name,city,grade,salesman_id)
values(3002,'nick rimando','new york',100,5001),
(3007,'brad davis','new york',200,5001),
(3005,'graham zusi','california',200,5002),
(3008,'julian green','london',300,5002),
(3004,'fabian johnson','paris',300,5006),
(3009,'geoff cameron','berlin',100,5003),
(3003,'jozy altidor','moscow',200,5007);
select * from cus_table;
# 1.Write a SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select * from cus_table where grade>100;
# 2.Write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100. Return customer_id, cust_name, city, grade, and salesman_id.
select * from cus_table where grade>100 and city='new york';
# 3.Write a SQL query to find customers who are from the city of New York or have a grade of over 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select * from cus_table where grade>100 or  city='new york';
# 4 Write a SQL query to find customers who are either from the city 'New York' or who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.
select * from cus_table where not(city='new york' or  grade>100);
#5. Write a SQL query to identify customers who do not belong to the city of 'New York' or have a grade value that exceeds 100. Return customer_id, cust_name, city, grade, and salesman_id.
select * from cus_table where not (city='new york' or grade>100) ;

