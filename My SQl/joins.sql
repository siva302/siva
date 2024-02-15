use mitraz;
create table cus_table1(
cust_id int primary key,
cust_name varchar(50),
city varchar(50),
grade int,
salesman_id int);
desc cus_table1;
insert into cus_table1(cust_id,cust_name,city,grade,salesman_id)
values(3002,'nick rimando','new york',100,5001),
(3007,'brad davis','new york',200,5001),
(3005,'graham zusi','california',200,5002),
(3008,'julian green','london',300,5002),
(3004,'fabian johnson','paris',300,5006),
(3009,'geoff cameron','berlin',100,5003),
(3003,'jozy altidor','moscow',200,5007);
select * from cus_table1;

create table cus_table2(
id int,
date date,
amount int,
cust_id int,
foreign key(cust_id) references cus_table1(cust_id));
desc cus_table2;
insert into cus_table2(id,date,amount,cust_id)
values(1,'2002-11-15',20000,3005),
(2,'2005-11-15',5000,3003),
(3,'2008-11-15',15000,3004),
(4,'2010-11-15',25000,3002);
select * from cus_table2;
-- > inner join
select id,cust_name,date,amount
from cus_table1 inner join cus_table2
on cus_table1.cust_id=cus_table2.cust_id;
-- > left join
select id,cust_name,date,amount
from cus_table1 left join cus_table2
on cus_table1.cust_id=cus_table2.cust_id;
-- > right join
select id,cust_name,date,amount
from cus_table1 right join cus_table2
on cus_table1.cust_id=cus_table2.cust_id;
-- > cross join
select id,cust_name,date,amount
from cus_table1 cross join cus_table2;

