use mitraz;
create table sale(
sale_id int primary key,
name varchar(50),
city varchar(50),
commission float);
desc sale;
drop table sale;
insert into sale
values(5001,'james hoog','new york',0.15),
(5002,'nail knite','paris',0.13),
(5005,'pit alex','london',0.11),
(5006,'mc lyon','paris',0.14),
(5007,'paul adam','rome',0.13),
(5003,'lauson hen','san jose',0.12);
select * from sale;
-- 1.Create a view for those salespeople who belong to the city of New York. 
create or replace view salespeople as
select name,city from sale
where city='new york';

select *  from salespeople;
-- 2 Create a view for all salespersons. Return salesperson ID, name, and city.
create or replace view salesperson as
select * from sale;
select *  from salesperson;
-- 3.Create a view to count the number of salespeople in each city. Return city, number of salespersons.
create or replace view salesperson1 as
select city,count(*) from sale
group by city;